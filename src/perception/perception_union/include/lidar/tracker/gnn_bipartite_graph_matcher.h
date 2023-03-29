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
#pragma once

#include <string>
#include <vector>


namespace perception {

typedef std::pair<size_t, size_t> NodeNodePair;

struct BipartiteGraphMatcherOptions {
  float cost_thresh = 4.0f;
  float bound_value = 100.0f;
};

class MatchCost {
 public:
  MatchCost(size_t ridx, size_t cidx, double cost);
  // @brief access RowIdx
  size_t RowIdx() const;
  // @brief access ColIdx
  size_t ColIdx() const;
  // @brief access Cost
  double Cost() const;
  // friend bool operator<(const MatchCost& m1, const MatchCost& m2);
  bool operator<(const MatchCost& m2);
  // friend std::ostream& operator<<(std::ostream& os, const MatchCost& m);
 private:
  size_t row_idx_ = 0;
  size_t col_idx_ = 0;
  double cost_ = 0.0;
};

class GnnBipartiteGraphMatcher {
 public:
  GnnBipartiteGraphMatcher(size_t max_size = 1000);
  GnnBipartiteGraphMatcher();
  ~GnnBipartiteGraphMatcher();

  void Match(const BipartiteGraphMatcherOptions& options,
             const int row, const int col,
             std::vector<MatchCost>& match_costs, 
             std::vector<NodeNodePair>* assignments,
             std::vector<size_t>* unassigned_rows,
             std::vector<size_t>* unassigned_cols);

  std::string Name() const { return "GnnBipartiteGraphMatcher"; }

 private:
  std::vector<int> row_tag_;
  std::vector<int> col_tag_;
  float max_match_distance_ = 0.0f;  
};  // class GnnBipartiteGraphMatcher

}  // namespace perception

