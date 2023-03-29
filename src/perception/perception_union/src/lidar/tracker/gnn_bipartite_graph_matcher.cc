/******************************************************************************
 * Copyright 2018 The Apollo Authors. All Rights Reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *****************************************************************************/

#include "lidar/tracker/gnn_bipartite_graph_matcher.h"

#include <algorithm>
#include <utility>

namespace perception {

MatchCost::MatchCost(size_t ridx, size_t cidx, double cost)
    : row_idx_(ridx), col_idx_(cidx), cost_(cost) {}

size_t MatchCost::RowIdx() const { return row_idx_; }

size_t MatchCost::ColIdx() const { return col_idx_; }

double MatchCost::Cost() const { return cost_; }

// bool operator<(const perception::MatchCost& m1, const perception::MatchCost& m2) {
//   return m1.cost_ < m2.cost_;
// }
bool MatchCost::operator<(const perception::MatchCost& m2) {
  return cost_ < m2.cost_;
}

// std::ostream& operator<<(std::ostream& os, const MatchCost& m) {
//   os << "MatchCost ridx:" << m.RowIdx() << " cidx:" << m.ColIdx()
//      << " Cost:" << m.Cost();
//   return os;
// }


GnnBipartiteGraphMatcher::GnnBipartiteGraphMatcher(size_t max_size) {
  row_tag_.reserve(max_size);
  col_tag_.reserve(max_size);
}
GnnBipartiteGraphMatcher::GnnBipartiteGraphMatcher() {
  size_t max_size = 1000;
  row_tag_.reserve(max_size);
  col_tag_.reserve(max_size);
}
GnnBipartiteGraphMatcher::~GnnBipartiteGraphMatcher() {
}

void GnnBipartiteGraphMatcher::Match(const BipartiteGraphMatcherOptions& options,
    const int row, const int col,
    std::vector<MatchCost>& match_costs, 
    std::vector<NodeNodePair>* assignments,
    std::vector<size_t>* unassigned_rows,
    std::vector<size_t>* unassigned_cols) {
  assignments->clear();
  unassigned_rows->clear();
  unassigned_cols->clear();
  row_tag_.clear();
  col_tag_.clear();
  float max_dist = options.cost_thresh;
  row_tag_.assign(row, 0);
  col_tag_.assign(col, 0);

  // std::vector<MatchCost> match_costs;
  // for (int r = 0; r < num_rows; r++) {
  //   for (int c = 0; c < num_cols; c++) {
  //     if ((*cost_matrix)(r, c) < max_dist) {
  //       MatchCost item(r, c, (*cost_matrix)(r, c));
  //       match_costs.push_back(item);
  //     }
  //   }
  // }

  // sort costs in ascending order
  std::sort(match_costs.begin(), match_costs.end(), 
      [](const MatchCost a, const MatchCost b) -> bool { return a.Cost() < b.Cost(); });

  // gnn
  for (size_t i = 0; i < match_costs.size(); ++i) {
    size_t rid = match_costs[i].RowIdx();
    size_t cid = match_costs[i].ColIdx();
    if (row_tag_[rid] == 0 && col_tag_[cid] == 0) {
      row_tag_[rid] = 1;
      col_tag_[cid] = 1;
      assignments->push_back(std::make_pair(rid, cid));
    }
  }

  for (int i = 0; i < row; i++) {
    if (row_tag_[i] == 0) {
      unassigned_rows->push_back(i);
    }
  }

  for (int i = 0; i < col; i++) {
    if (col_tag_[i] == 0) {
      unassigned_cols->push_back(i);
    }
  }
}

}  // namespace perception

