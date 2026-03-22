# Neovim Configuration Cheat Sheet

## 1. Harpoon (Quick Navigation)
| Key | Function | Description |
| :--- | :--- | :--- |
| `<leader>a` | `harpoon:list():add()` | 현재 파일을 하푼 리스트에 추가 |
| `<C-e>` | `toggle_quick_menu` | 하푼 UI 메뉴 호출 (리스트 관리) |
| `<C-j>` | `select(1)` | 하푼 리스트 1번 파일로 즉시 점프 |
| `<C-k>` | `select(2)` | 하푼 리스트 2번 파일로 즉시 점프 |
| `<C-l>` | `select(3)` | 하푼 리스트 3번 파일로 즉시 점프 |
| `<C-;>` | `select(4)` | 하푼 리스트 4번 파일로 즉시 점프 |

## 2. File Explorer & Search (Oil / Telescope)
| Key | Function | Description |
| :--- | :--- | :--- |
| `-` | `Oil` | 상위 디렉토리를 버퍼 편집 모드로 오픈 |
| `<leader>ff` | `find_files` | 프로젝트 내 파일 검색 (이름 기준) |
| `<leader>fg` | `live_grep` | 프로젝트 내 전역 텍스트 검색 |
| `<leader>fb` | `buffers` | 현재 열려 있는 버퍼 목록 탐색 |
| `<leader>fh` | `help_tags` | Neovim 도움말(Help) 항목 검색 |

## 3. Trouble (Diagnostics & Symbols)
| Key | Function | Description |
| :--- | :--- | :--- |
| `<leader>xx` | `diagnostics toggle` | 프로젝트 전체 진단(Error/Warn) 목록 |
| `<leader>xb` | `diagnostics filter.buf=0` | 현재 버퍼의 진단 목록만 필터링 |
| `<leader>xs` | `symbols toggle` | 현재 파일의 구조(변수/함수) 트리 보기 |
| `<leader>xr` | `lsp toggle` | LSP Definitions / References 목록 출력 |
| `<leader>xl` | `loclist toggle` | Location List 인터페이스 호출 |
| `<leader>xq` | `qflist toggle` | Quickfix List 인터페이스 호출 |

## 4. LSP (Language Server Protocol)
| Key | Function | Description |
| :--- | :--- | :--- |
| `gd` | `definition` | 심볼의 정의(Definition) 지점으로 점프 |
| `gt` | `type_definition` | 타입 정의 지점으로 점프 |
| `K` | `hover` | 커서 아래 심볼의 정보(Hover) 표시 |
| `]d` / `[d` | `goto_next/prev` | 다음/이전 진단(에러) 지점으로 이동 |
| `<leader>vca`| `code_action` | 가용한 코드 액션 리스트 호출 |
| `<leader>vrn`| `rename` | 프로젝트 내 심볼 이름 일괄 변경 |
| `<C-h>` | `signature_help` | (Insert Mode) 함수 시그니처 가이드 호출 |

## 5. Editing & Others
| Key | Mode | Description |
| :--- | :--- | :--- |
| `<C-c>` | Insert | `Esc`와 동일. 노멀 모드로 즉시 복귀 |
| `gcc` | Normal | 현재 행 주석 처리/해제 |
| `gc` | Visual | 선택 영역 블록 주석 처리/해제 |

## 6. Completion (nvim-cmp)
* `<Tab>` / `<S-Tab>` : 목록 다음/이전 항목 선택
* `<CR>` (Enter) : 선택 항목 확정 (`select = true`)
* `<C-Space>` : 자동완성 수동 호출
* `<C-e>` : 자동완성 창 닫기 (Abort)
* `<C-f>` / `<C-b>` : 상세 문서창 스크롤 (Forward/Backward)

## 7. Nvim-Surround Usage Guide
Vim 기본 오퍼레이터(`d`, `c`, `y`)에 `s`(Surround)를 조합하여 사용.

| Command | Action | Example |
| :--- | :--- | :--- |
| **`ds`** | **Delete** Surround | `ds"` : `"Hello"` → `Hello` |
| **`cs`** | **Change** Surround | `cs"'` : `"Hello"` → `'Hello'` |
| **`ys`** | **Add** Surround | `ysiw)` : `word` → `(word)` |
| **`ys`** (space) | Add with **Space** | `ysiw(` : `word` → `( word )` |
| **`yss`** | Surround **Line** | `yss"` : `line text` → `"line text"` |

## 8. Undotree (Undo History Visualizer)
| Key | Function | Description |
| :--- | :--- | :--- |
| **`<leader>u`** | `UndotreeToggle()` | Undo 히스토리 트리 창 열기/닫기 |

## 9. Vim-Fugitive (Git Wrapper)

### 9.1 Global Mapping
| Key | Command | Description |
| :--- | :--- | :--- |
| **`<leader>gs`** | `:Git` | Git Status 창 호출 (모든 워크플로우의 시작) |

### 9.2 Fugitive Status Window 전용 단축키
(해당 창이 활성화된 상태에서 한 글자로 동작)

| Key | Action | Description |
| :--- | :--- | :--- |
| **`s`** | **Stage** | 현재 커서의 파일/영역을 스테이징 (`git add`) |
| **`u`** | **Unstage** | 스테이징된 파일/영역을 해제 (`git reset`) |
| **`=`** | **Toggle Diff** | 해당 파일의 변경 사항(diff)을 인라인으로 표시 |
| **`dv`** | **Diff Vertical** | 현재 파일과 인덱스를 2분할 창(Split)으로 비교 |
| **`cc`** | **Commit** | 커밋 메시지 작성 창 오픈 |
| **`gp`** | **Push** | 원격 저장소로 푸시 (명령어 입력 필요 시 `:Git push`) |

### 9.3 Git 전문 명령 (Command Line)
* `:G write` : 현재 파일 스테이징
* `:G read` : 현재 파일을 마지막 커밋 상태로 되돌림
* `:G push` : 원격 저장소 전송
* `:G pull --rebase` : 리베이스 기반 업데이트

## Environment
- **Node.js**: TS, JS, HTML, CSS LSP
- **JDK 17+**: Java (JDTLS)
- **Python 3**: Pyright
- **LLVM/Clang**: C/C++ (Clangd)
- **Rustup**: Rust Analyzer
