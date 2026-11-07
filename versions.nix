let
  latest = "B_T24";
  latest_offline = "B_T24_offline";

  versions = {
    # "B_T25" = {
    #   hash = "sha256-YWqgNIj2hMgyO5LZQl8G6CXbvOffbNJ7PEOCL9DxfNE=";
    #   package = ./packages/septabee_T25-latest.nix;
    # };
    # "B_T25_offline" = {
    #   hash = "sha256-5Bp0P+Sr1SKrbjiatbugaAKSoIGOHVdqznOZxl2/AaM=";
    #   package = ./packages/septabee_T25-latest.nix;
    # };
    "B_T24" = {
      hash = "sha256-fsFsoqqp/jBWemhhc1V8ZNbQ3Vjz+8iXFAvHXblZyaM=";
      package = ./packages/septabee_T1-T24.nix;
    };
    "B_T24_offline" = {
      hash = "sha256-tgtRoxj0z6rKOObss3MprbLYEP8wz057xaLwg0fei3Q=";
      package = ./packages/septabee_T1-T24.nix;
    };
    "B_T23" = {
      hash = "sha256-FiqzP2HArulOWmoDMwvQOGi6q245ArKHfUEcQ+g3qvE=";
      package = ./packages/septabee_T1-T24.nix;
    };
    "B_T23_offline" = {
      hash = "sha256-tTHsOpoxuk1kFgyXkhRVnW9OqKhYJ8MGSR8vCRsa4yQ=";
      package = ./packages/septabee_T1-T24.nix;
    };
    "B_T22" = {
      hash = "sha256-x1JMOhMUrHng1afx1cTn8wOa2FFwLjPUZh3gfXHNn7A=";
      package = ./packages/septabee_T1-T24.nix;
    };
    "B_T22_offline" = {
      hash = "sha256-bIeqiJ4O6dUxvtL4aGbSvaYdRscTrWDEz7SYFim/LFk=";
      package = ./packages/septabee_T1-T24.nix;
    };
    "B_T21" = {
      hash = "sha256-vWCu08ql44x2fdNfMcGuPYSKS7Ap6dpzPikNlKp5XaI=";
      package = ./packages/septabee_T1-T24.nix;
    };
    "B_T21_offline" = {
      hash = "sha256-qNssCOfnjwoLfD65MXyNiDhGthZrlQ4/2cupByn5RZs=";
      package = ./packages/septabee_T1-T24.nix;
    };
    "B_T20" = {
      hash = "sha256-nOaclfpb+pq/v/vYgNPQyamVWeCJd4xn10Jsq/ufIEU=";
      package = ./packages/septabee_T1-T24.nix;
    };
    "B_T20_offline" = {
      hash = "sha256-mX5SONd2pkOona4tJt9CbhhME0O8fn4Kd4vjaz3gL8E=";
      package = ./packages/septabee_T1-T24.nix;
    };
    "B_T19" = {
      hash = "sha256-mJ/ur7XA+unFvi+ua5fWRNxJfI60TVhUAYyHF/cLJ/4=";
      package = ./packages/septabee_T1-T24.nix;
    };
    "B_T19_offline" = {
      hash = "sha256-yV2eA9k6ghGXbZUdNGQZuztcQGoDFfxbWCnQN952FW0=";
      package = ./packages/septabee_T1-T24.nix;
    };
    "B_T18" = {
      hash = "sha256-qMrVv+gwHqjhkLwC6gUEl8+Ub+fQki9szoF8Xq/w2Hk=";
      package = ./packages/septabee_T1-T24.nix;
    };
    "B_T18_offline" = {
      hash = "sha256-tifAmLjP6911Z3iUJqkNQyh7jSK9JcQ/tcMeL2kWfYU=";
      package = ./packages/septabee_T1-T24.nix;
    };
    "B_T17" = {
      hash = "sha256-64mBbfy7QuW1vf69RPS3U8L9wzHdGYwxQ/QoCgunNVY=";
      package = ./packages/septabee_T1-T24.nix;
    };
    "B_T17_offline" = {
      hash = "sha256-RjeJ+gPc32NFye+kaCcpvnTwC7u8QxH39Fl+DuomhBU=";
      package = ./packages/septabee_T1-T24.nix;
    };
    "B_T16" = {
      hash = "sha256-L7GE0iFFSplVqymRvWkCjNadl1XVn8e3mpjsS1Y0Crs=";
      package = ./packages/septabee_T1-T24.nix;
    };
    "B_T16_offline" = {
      hash = "sha256-1cimDVeFf/DODIi1qamUKhKrze8/ReceK/iUHqlpKuM=";
      package = ./packages/septabee_T1-T24.nix;
    };
    "B_T15" = {
      hash = "sha256-+LE0Ukl2Mz2KIbe/ykM8GXTSlDFpyrB35hN3lIKcbnM=";
      package = ./packages/septabee_T1-T24.nix;
    };
    "B_T15_offline" = {
      hash = "sha256-A+/zGQutL22Ed+GIaDkCsyJ3M1028/Azk7U/VRWhtOQ=";
      package = ./packages/septabee_T1-T24.nix;
    };
    "B_T14" = {
      hash = "sha256-ToKbM7LNcvjQytb462HWYTyULGXRWDXj0PIIVPx1Ll0=";
      package = ./packages/septabee_T1-T24.nix;
    };
    "B_T14_offline" = {
      hash = "sha256-E7zTwjC5yqVSK3LGby/L15NWg8LN9xNrnUx3Gc0hpac=";
      package = ./packages/septabee_T1-T24.nix;
    };
    "B_T13" = {
      hash = "sha256-qUInrE+kyS7DA/wCRFvKLZSIDvCdfvkstOlh+r9H3ZY=";
      package = ./packages/septabee_T1-T24.nix;
    };
    "B_T13_offline" = {
      hash = "sha256-hEHR7TdB7u2+akx32ekCA3xpx964fbeixsSxLA0bgko=";
      package = ./packages/septabee_T1-T24.nix;
    };
    "B_T12" = {
      hash = "sha256-MhvCjxhFaU7VlsEGLK7oRcQfmrk2Eqv3w08J2sqs2Fc=";
      package = ./packages/septabee_T1-T24.nix;
    };
    "B_T12_offline" = {
      hash = "sha256-uIlVS0GLIL2z36Ino9qVompIgX6g0d3L45MmdmIusYY=";
      package = ./packages/septabee_T1-T24.nix;
    };
    "B_T11" = {
      hash = "sha256-2U3AkX5/+ZMxcCND1lkJr0WOuQarmsuThMPiNeGjPQ8=";
      package = ./packages/septabee_T1-T24.nix;
    };
    "B_T11_offline" = {
      hash = "sha256-NYbHt7KjgXaosV1CLd1nI76gYpWTTE0NY2stCOTLHdM=";
      package = ./packages/septabee_T1-T24.nix;
    };
    "B_T9" = {
      hash = "sha256-RHh4XiEo0hCHf36Sn7tDN1zDozDHTUNfl9GmuPF/ePs=";
      package = ./packages/septabee_T1-T24.nix;
    };
    "B_T9_offline" = {
      hash = "sha256-3sFcqSShKTokOHXsKkP/rpGsIOQeDKsqlq0G/gNkPt0=";
      package = ./packages/septabee_T1-T24.nix;
    };
    "B_T8" = {
      hash = "sha256-NeF1YSXrF/mEWpJca/jU2nEaRSHtlEe03ocyXwb0jGA=";
      package = ./packages/septabee_T1-T24.nix;
    };
    "B_T8_offline" = {
      hash = "sha256-2wGMB72oiS8Y45T6pVn/2+TikD1xD9VT3QzPejumPDk=";
      package = ./packages/septabee_T1-T24.nix;
    };
    "B_T7" = {
      hash = "sha256-+BRkf4TrJZqCjnQmUg0sMoJTsmnSyXiXNovTKo72k54=";
      package = ./packages/septabee_T1-T24.nix;
    };
    "B_T7_offline" = {
      hash = "sha256-tVxMALnZewmrKTWnn5C0mNmvfM84scScbwGl0Hfk+LA=";
      package = ./packages/septabee_T1-T24.nix;
    };
    "B_T6" = {
      hash = "sha256-tkBRI8GcpOjtZs9sA0ycIPeq6eaFjDVH2YBfTXl7Leo=";
      package = ./packages/septabee_T1-T24.nix;
    };
    "B_T6_offline" = {
      hash = "sha256-f2oR3nxSrBZHPhPN0eWWZlbFSQa34EWBEDyQmoRjvAA=";
      package = ./packages/septabee_T1-T24.nix;
    };
    "B_T5" = {
      hash = "sha256-dBEdBy8PChrAxiTLYoIdOqTg77UsTGoogKhV1o6eiAk=";
      package = ./packages/septabee_T1-T24.nix;
    };
    "B_T5_offline" = {
      hash = "sha256-+c8RUdz1EIPhubxDFYfhnevQN0v4cRKDQ2bcRmLn4sk=";
      package = ./packages/septabee_T1-T24.nix;
    };
    "B_T4" = {
      hash = "sha256-Uuu3g11TCczOSDx15AqEJTosPkPjBNaWjBAPFf8uNw8=";
      package = ./packages/septabee_T1-T24.nix;
    };
    "B_T3" = {
      hash = "sha256-vdXJ4Qusvi/ehztmp2iibiFZLJvbU7+mRnR7KSmxrFA=";
      package = ./packages/septabee_T1-T24.nix;
    };
    "B_T2" = {
      hash = "sha256-OMnbRBTku8yi4b3Ay7d70EbB/e2Qh+PfzK2O8qRFoaA=";
      package = ./packages/septabee_T1-T24.nix;
    };
    "B_T1" = {
      hash = "sha256-JlWmeDnMTjBNwLTADvSswbtfhJK6t1bu0xHkmBgLtvA=";
      package = ./packages/septabee_T1-T24.nix;
    };
  };
in {
  inherit latest latest_offline;

  hashes = builtins.mapAttrs (name: value: value.hash) versions;
  packages = builtins.mapAttrs (name: value: value.package) versions;
  versions = builtins.attrNames versions;
}
