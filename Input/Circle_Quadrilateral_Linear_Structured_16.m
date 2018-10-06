%==================================================================
%                        General Data File
% Title: QUAD
% Units: SI
% Dimensions: 2D
% Type of problem: Plane_Stress
% Type of Phisics: ELASTIC
% Micro/Macro: MACRO
%
%==================================================================

%% Data

Data_prb = {
'QUAD';
'SI';
'2D';
'Plane_Stress';
'ELASTIC';
'MACRO';
};

%% Coordinates
% Node                X                Y                Z

gidcoord = [
1            0            2            0
2        0.125            2            0
3            0        1.875            0
4        0.125        1.875            0
5            0         1.75            0
6         0.25            2            0
7        0.125         1.75            0
8         0.25        1.875            0
9         0.25         1.75            0
10            0        1.625            0
11        0.375            2            0
12        0.375        1.875            0
13        0.125        1.625            0
14        0.375         1.75            0
15         0.25        1.625            0
16            0          1.5            0
17          0.5            2            0
18          0.5        1.875            0
19        0.125          1.5            0
20        0.375        1.625            0
21          0.5         1.75            0
22         0.25          1.5            0
23          0.5        1.625            0
24            0        1.375            0
25        0.625            2            0
26        0.375          1.5            0
27        0.625        1.875            0
28        0.125        1.375            0
29         0.25        1.375            0
30        0.625         1.75            0
31          0.5          1.5            0
32        0.625        1.625            0
33        0.375        1.375            0
34            0         1.25            0
35         0.75            2            0
36         0.75        1.875            0
37        0.125         1.25            0
38         0.75         1.75            0
39         0.25         1.25            0
40        0.625          1.5            0
41          0.5        1.375            0
42        0.375         1.25            0
43         0.75        1.625            0
44            0        1.125            0
45        0.875            2            0
46        0.625        1.375            0
47        0.875        1.875            0
48        0.125        1.125            0
49          0.5         1.25            0
50         0.75          1.5            0
51        0.875         1.75            0
52         0.25        1.125            0
53        0.875        1.625            0
54        0.375        1.125            0
55        0.625         1.25            0
56         0.75        1.375            0
57            1            2            0
58            0            1            0
59            1        1.875            0
60        0.875          1.5            0
61        0.125            1            0
62          0.5        1.125            0
63            1         1.75            0
64         0.25            1            0
65         0.75         1.25            0
66            1        1.625            0
67        0.375            1            0
68        0.625        1.125            0
69        0.875        1.375            0
70            1          1.5            0
71          0.5            1            0
72        1.125            2            0
73            0        0.875            0
74        1.125        1.875            0
75        0.125        0.875            0
76        1.125         1.75            0
77        0.875         1.25            0
78         0.25        0.875            0
79         0.75        1.125            0
80            1        1.375            0
81        0.625            1            0
82        1.125        1.625            0
83        0.375        0.875            0
84        1.125          1.5            0
85          0.5        0.875            0
86        0.875        1.125            0
87            1         1.25            0
88         1.25            2            0
89            0         0.75            0
90         0.75            1            0
91         1.25        1.875            0
92        0.125         0.75            0
93         1.25         1.75            0
94         0.25         0.75            0
95        1.125        1.375            0
96        0.625        0.875            0
97         1.25        1.625            0
98        0.375         0.75            0
99            1        1.125            0
100        0.875            1            0
101         1.25          1.5            0
102          0.5         0.75            0
103        1.125         1.25            0
104         0.75        0.875            0
105            0        0.625            0
106        1.375            2            0
107        1.375        1.875            0
108        0.125        0.625            0
109         1.25        1.375            0
110        0.625         0.75            0
111        1.375         1.75            0
112         0.25        0.625            0
113            1            1            0
114        1.125        1.125            0
115        0.375        0.625            0
116        1.375        1.625            0
117        0.875        0.875            0
118         1.25         1.25            0
119         0.75         0.75            0
120        1.375          1.5            0
121          0.5        0.625            0
122            0          0.5            0
123          1.5            2            0
124          1.5        1.875            0
125            1        0.875            0
126        0.125          0.5            0
127        1.125            1            0
128        0.625        0.625            0
129        1.375        1.375            0
130          1.5         1.75            0
131         0.25          0.5            0
132        0.875         0.75            0
133         1.25        1.125            0
134          1.5        1.625            0
135        0.375          0.5            0
136        1.375         1.25            0
137         0.75        0.625            0
138          0.5          0.5            0
139          1.5          1.5            0
140        1.125        0.875            0
141            1         0.75            0
142         1.25            1            0
143        1.625            2            0
144            0        0.375            0
145        0.625          0.5            0
146          1.5        1.375            0
147        1.625        1.875            0
148        0.875        0.625            0
149        0.125        0.375            0
150        1.375        1.125            0
151        1.625         1.75            0
152         0.25        0.375            0
153        1.625        1.625            0
154        0.375        0.375            0
155          1.5         1.25            0
156         0.75          0.5            0
157        1.125         0.75            0
158         1.25        0.875            0
159        1.625          1.5            0
160            1        0.625            0
161        1.375            1            0
162          0.5        0.375            0
163        0.875          0.5            0
164          1.5        1.125            0
165        1.625        1.375            0
166        0.625        0.375            0
167         1.75            2            0
168            0         0.25            0
169        0.125         0.25            0
170         1.75        1.875            0
171         0.25         0.25            0
172         1.75         1.75            0
173         1.25         0.75            0
174        1.125        0.625            0
175        1.375        0.875            0
176         1.75        1.625            0
177         0.75        0.375            0
178        0.375         0.25            0
179        1.625         1.25            0
180            1          0.5            0
181          1.5            1            0
182          0.5         0.25            0
183         1.75          1.5            0
184        1.625        1.125            0
185        0.875        0.375            0
186        1.375         0.75            0
187        0.625         0.25            0
188         1.25        0.625            0
189         1.75        1.375            0
190        1.875            2            0
191            0        0.125            0
192          1.5        0.875            0
193        1.125          0.5            0
194        1.875        1.875            0
195        0.125        0.125            0
196        1.875         1.75            0
197         0.25        0.125            0
198         1.75         1.25            0
199         0.75         0.25            0
200        1.625            1            0
201            1        0.375            0
202        1.875        1.625            0
203        0.375        0.125            0
204          0.5        0.125            0
205        1.875          1.5            0
206        1.375        0.625            0
207          1.5         0.75            0
208         1.25          0.5            0
209        0.875         0.25            0
210         1.75        1.125            0
211        1.125        0.375            0
212        1.875        1.375            0
213        0.625        0.125            0
214        1.625        0.875            0
215            0            0            0
216            2            2            0
217        0.125            0            0
218            2        1.875            0
219            1         0.25            0
220            2         1.75            0
221         0.25            0            0
222         1.75            1            0
223        1.875         1.25            0
224         0.75        0.125            0
225        1.375          0.5            0
226          1.5        0.625            0
227            2        1.625            0
228        0.375            0            0
229         1.25        0.375            0
230        1.625         0.75            0
231            2          1.5            0
232          0.5            0            0
233        1.875        1.125            0
234        0.875        0.125            0
235        1.125         0.25            0
236         1.75        0.875            0
237            2        1.375            0
238        0.625            0            0
239          1.5          0.5            0
240        1.875            1            0
241            1        0.125            0
242        1.375        0.375            0
243        1.625        0.625            0
244         0.75            0            0
245            2         1.25            0
246         1.75         0.75            0
247         1.25         0.25            0
248            2        1.125            0
249        0.875            0            0
250        1.875        0.875            0
251        1.125        0.125            0
252          1.5        0.375            0
253        1.625          0.5            0
254        1.375         0.25            0
255         1.75        0.625            0
256            2            1            0
257            1            0            0
258        1.875         0.75            0
259         1.25        0.125            0
260            2        0.875            0
261        1.125            0            0
262        1.625        0.375            0
263          1.5         0.25            0
264         1.75          0.5            0
265        1.875        0.625            0
266        1.375        0.125            0
267            2         0.75            0
268         1.25            0            0
269         1.75        0.375            0
270        1.625         0.25            0
271          1.5        0.125            0
272        1.875          0.5            0
273            2        0.625            0
274        1.375            0            0
275         1.75         0.25            0
276        1.875        0.375            0
277        1.625        0.125            0
278          1.5            0            0
279            2          0.5            0
280        1.875         0.25            0
281         1.75        0.125            0
282        1.625            0            0
283            2        0.375            0
284        1.875        0.125            0
285            2         0.25            0
286         1.75            0            0
287            2        0.125            0
288        1.875            0            0
289            2            0            0
];

%% Conectivities
% Element        Node(1)                Node(2)                Node(3)                Node(4)                Material

gidlnods = [
1 217 195 191 215 0
2 221 197 195 217 0
3 228 203 197 221 0
4 232 204 203 228 0
5 238 213 204 232 0
6 244 224 213 238 0
7 249 234 224 244 0
8 257 241 234 249 0
9 261 251 241 257 0
10 268 259 251 261 0
11 274 266 259 268 0
12 278 271 266 274 0
13 282 277 271 278 0
14 286 281 277 282 0
15 288 284 281 286 0
16 289 287 284 288 0
17 195 169 168 191 0
18 197 171 169 195 0
19 203 178 171 197 0
20 204 182 178 203 0
21 213 187 182 204 0
22 224 199 187 213 0
23 234 209 199 224 0
24 241 219 209 234 0
25 251 235 219 241 0
26 259 247 235 251 0
27 266 254 247 259 0
28 271 263 254 266 0
29 277 270 263 271 0
30 281 275 270 277 0
31 284 280 275 281 0
32 287 285 280 284 0
33 169 149 144 168 0
34 171 152 149 169 0
35 178 154 152 171 0
36 182 162 154 178 0
37 187 166 162 182 0
38 199 177 166 187 0
39 209 185 177 199 0
40 219 201 185 209 0
41 235 211 201 219 0
42 247 229 211 235 0
43 254 242 229 247 0
44 263 252 242 254 0
45 270 262 252 263 0
46 275 269 262 270 0
47 280 276 269 275 0
48 285 283 276 280 0
49 149 126 122 144 0
50 152 131 126 149 0
51 154 135 131 152 0
52 162 138 135 154 0
53 166 145 138 162 0
54 177 156 145 166 0
55 185 163 156 177 0
56 201 180 163 185 0
57 211 193 180 201 0
58 229 208 193 211 0
59 242 225 208 229 0
60 252 239 225 242 0
61 262 253 239 252 0
62 269 264 253 262 0
63 276 272 264 269 0
64 283 279 272 276 0
65 126 108 105 122 0
66 131 112 108 126 0
67 135 115 112 131 0
68 138 121 115 135 0
69 145 128 121 138 0
70 156 137 128 145 0
71 163 148 137 156 0
72 180 160 148 163 0
73 193 174 160 180 0
74 208 188 174 193 0
75 225 206 188 208 0
76 239 226 206 225 0
77 253 243 226 239 0
78 264 255 243 253 0
79 272 265 255 264 0
80 279 273 265 272 0
81 108 92 89 105 0
82 112 94 92 108 0
83 115 98 94 112 0
84 121 102 98 115 0
85 128 110 102 121 0
86 137 119 110 128 0
87 148 132 119 137 0
88 160 141 132 148 0
89 174 157 141 160 0
90 188 173 157 174 0
91 206 186 173 188 0
92 226 207 186 206 0
93 243 230 207 226 0
94 255 246 230 243 0
95 265 258 246 255 0
96 273 267 258 265 0
97 92 75 73 89 0
98 94 78 75 92 0
99 98 83 78 94 0
100 102 85 83 98 0
101 110 96 85 102 0
102 119 104 96 110 0
103 132 117 104 119 0
104 141 125 117 132 0
105 157 140 125 141 0
106 173 158 140 157 0
107 186 175 158 173 0
108 207 192 175 186 0
109 230 214 192 207 0
110 246 236 214 230 0
111 258 250 236 246 0
112 267 260 250 258 0
113 75 61 58 73 0
114 78 64 61 75 0
115 83 67 64 78 0
116 85 71 67 83 0
117 96 81 71 85 0
118 104 90 81 96 0
119 117 100 90 104 0
120 125 113 100 117 0
121 140 127 113 125 0
122 158 142 127 140 0
123 175 161 142 158 0
124 192 181 161 175 0
125 214 200 181 192 0
126 236 222 200 214 0
127 250 240 222 236 0
128 260 256 240 250 0
129 61 48 44 58 0
130 64 52 48 61 0
131 67 54 52 64 0
132 71 62 54 67 0
133 81 68 62 71 0
134 90 79 68 81 0
135 100 86 79 90 0
136 113 99 86 100 0
137 127 114 99 113 0
138 142 133 114 127 0
139 161 150 133 142 0
140 181 164 150 161 0
141 200 184 164 181 0
142 222 210 184 200 0
143 240 233 210 222 0
144 256 248 233 240 0
145 48 37 34 44 0
146 52 39 37 48 0
147 54 42 39 52 0
148 62 49 42 54 0
149 68 55 49 62 0
150 79 65 55 68 0
151 86 77 65 79 0
152 99 87 77 86 0
153 114 103 87 99 0
154 133 118 103 114 0
155 150 136 118 133 0
156 164 155 136 150 0
157 184 179 155 164 0
158 210 198 179 184 0
159 233 223 198 210 0
160 248 245 223 233 0
161 37 28 24 34 0
162 39 29 28 37 0
163 42 33 29 39 0
164 49 41 33 42 0
165 55 46 41 49 0
166 65 56 46 55 0
167 77 69 56 65 0
168 87 80 69 77 0
169 103 95 80 87 0
170 118 109 95 103 0
171 136 129 109 118 0
172 155 146 129 136 0
173 179 165 146 155 0
174 198 189 165 179 0
175 223 212 189 198 0
176 245 237 212 223 0
177 28 19 16 24 0
178 29 22 19 28 0
179 33 26 22 29 0
180 41 31 26 33 0
181 46 40 31 41 0
182 56 50 40 46 0
183 69 60 50 56 0
184 80 70 60 69 0
185 95 84 70 80 0
186 109 101 84 95 0
187 129 120 101 109 0
188 146 139 120 129 0
189 165 159 139 146 0
190 189 183 159 165 0
191 212 205 183 189 0
192 237 231 205 212 0
193 19 13 10 16 0
194 22 15 13 19 0
195 26 20 15 22 0
196 31 23 20 26 0
197 40 32 23 31 0
198 50 43 32 40 0
199 60 53 43 50 0
200 70 66 53 60 0
201 84 82 66 70 0
202 101 97 82 84 0
203 120 116 97 101 0
204 139 134 116 120 0
205 159 153 134 139 0
206 183 176 153 159 0
207 205 202 176 183 0
208 231 227 202 205 0
209 13 7 5 10 0
210 15 9 7 13 0
211 20 14 9 15 0
212 23 21 14 20 0
213 32 30 21 23 0
214 43 38 30 32 0
215 53 51 38 43 0
216 66 63 51 53 0
217 82 76 63 66 0
218 97 93 76 82 0
219 116 111 93 97 0
220 134 130 111 116 0
221 153 151 130 134 0
222 176 172 151 153 0
223 202 196 172 176 0
224 227 220 196 202 0
225 7 4 3 5 0
226 9 8 4 7 0
227 14 12 8 9 0
228 21 18 12 14 0
229 30 27 18 21 0
230 38 36 27 30 0
231 51 47 36 38 0
232 63 59 47 51 0
233 76 74 59 63 0
234 93 91 74 76 0
235 111 107 91 93 0
236 130 124 107 111 0
237 151 147 124 130 0
238 172 170 147 151 0
239 196 194 170 172 0
240 220 218 194 196 0
241 4 2 1 3 0
242 8 6 2 4 0
243 12 11 6 8 0
244 18 17 11 12 0
245 27 25 17 18 0
246 36 35 25 27 0
247 47 45 35 36 0
248 59 57 45 47 0
249 74 72 57 59 0
250 91 88 72 74 0
251 107 106 88 91 0
252 124 123 106 107 0
253 147 143 123 124 0
254 170 167 143 147 0
255 194 190 167 170 0
256 218 216 190 194 0
];

%% Variable Prescribed
% Node            Dimension                Value

lnodes = [
215 1 0 
215 2 0 
289 1 0 
289 2 0 
];

%% Force Prescribed
% Node                Dimension                Value

pointload_complete = [
1 1 0 
1 2 1 
216 1 0 
216 2 1 
];

%% Volumetric Force
% Element        Dim                Force_Dim

Vol_force = [
];

%% Group Elements
% Element        Group_num

Group = [
];

%% Initial Holes
% Elements that are considered holes initially
% Element

Initial_holes = [
];

%% Boundary Elements
% Elements that can not be removed
% Element

Boundary_elements = [
];

%% Micro gauss post
%
% Element

Micro_gauss_post = [
];


%% Micro Slave-Master
% Nodes that are Slaves
% Nodes             Value (1-Slave,0-Master)

Micro_slave = [
];

%% Nodes solid
% Nodes that must remain 
% Nodes

nodesolid = unique(pointload_complete(:,1));

%% External border Elements
% Detect the elements that define the edge of the domain
% Element               Node(1)           Node(2)

External_border_elements = [
];

%% External border Nodes
% Detect the nodes that define the edge of the domain
% Node

External_border_nodes = [
];

%% Materials
% Materials that have been used
% Material_Num              Mat_density        Young_Modulus        Poisson

Materials = [
];