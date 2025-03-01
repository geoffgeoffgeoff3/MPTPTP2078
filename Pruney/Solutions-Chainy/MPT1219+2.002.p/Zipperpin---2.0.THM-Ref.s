%------------------------------------------------------------------------------
% File       : Zipperpin---2.0
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_portfolio.sh /export/starexec/sandbox/benchmark/theBenchmark.p /export/starexec/sandbox/tmp/tmp.mm60L1Jmda

% Computer   : n003.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 14:02:39 EST 2020

% Result     : Theorem 0.20s
% Output     : Refutation 0.20s
% Verified   : 
% Statistics : Number of formulae       :   21 (  27 expanded)
%              Number of leaves         :   10 (  13 expanded)
%              Depth                    :    7
%              Number of atoms          :  156 ( 300 expanded)
%              Number of equality atoms :   17 (  29 expanded)
%              Maximal formula depth    :   13 (   5 average)

% Comments   : 
%------------------------------------------------------------------------------
thf(sk_C_type,type,(
    sk_C: $i )).

thf(k1_zfmisc_1_type,type,(
    k1_zfmisc_1: $i > $i )).

thf(u1_struct_0_type,type,(
    u1_struct_0: $i > $i )).

thf(l1_struct_0_type,type,(
    l1_struct_0: $i > $o )).

thf(sk_A_type,type,(
    sk_A: $i )).

thf(m1_subset_1_type,type,(
    m1_subset_1: $i > $i > $o )).

thf(k3_subset_1_type,type,(
    k3_subset_1: $i > $i > $i )).

thf(sk_B_type,type,(
    sk_B: $i )).

thf(t21_tops_1,conjecture,(
    ! [A: $i] :
      ( ( l1_struct_0 @ A )
     => ! [B: $i] :
          ( ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ ( u1_struct_0 @ A ) ) )
         => ! [C: $i] :
              ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( u1_struct_0 @ A ) ) )
             => ( ( ( k3_subset_1 @ ( u1_struct_0 @ A ) @ B )
                  = ( k3_subset_1 @ ( u1_struct_0 @ A ) @ C ) )
               => ( B = C ) ) ) ) ) )).

thf(zf_stmt_0,negated_conjecture,(
    ~ ! [A: $i] :
        ( ( l1_struct_0 @ A )
       => ! [B: $i] :
            ( ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ ( u1_struct_0 @ A ) ) )
           => ! [C: $i] :
                ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( u1_struct_0 @ A ) ) )
               => ( ( ( k3_subset_1 @ ( u1_struct_0 @ A ) @ B )
                    = ( k3_subset_1 @ ( u1_struct_0 @ A ) @ C ) )
                 => ( B = C ) ) ) ) ) ),
    inference('cnf.neg',[status(esa)],[t21_tops_1])).

thf('0',plain,
    ( ( k3_subset_1 @ ( u1_struct_0 @ sk_A ) @ sk_B )
    = ( k3_subset_1 @ ( u1_struct_0 @ sk_A ) @ sk_C ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('1',plain,(
    m1_subset_1 @ sk_B @ ( k1_zfmisc_1 @ ( u1_struct_0 @ sk_A ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(t64_subset_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ A ) )
     => ! [C: $i] :
          ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ A ) )
         => ( ( ( k3_subset_1 @ A @ B )
              = ( k3_subset_1 @ A @ C ) )
           => ( B = C ) ) ) ) )).

thf('2',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( ~ ( m1_subset_1 @ X0 @ ( k1_zfmisc_1 @ X1 ) )
      | ( X2 = X0 )
      | ( ( k3_subset_1 @ X1 @ X2 )
       != ( k3_subset_1 @ X1 @ X0 ) )
      | ~ ( m1_subset_1 @ X2 @ ( k1_zfmisc_1 @ X1 ) ) ) ),
    inference(cnf,[status(esa)],[t64_subset_1])).

thf('3',plain,(
    ! [X0: $i] :
      ( ~ ( m1_subset_1 @ X0 @ ( k1_zfmisc_1 @ ( u1_struct_0 @ sk_A ) ) )
      | ( ( k3_subset_1 @ ( u1_struct_0 @ sk_A ) @ X0 )
       != ( k3_subset_1 @ ( u1_struct_0 @ sk_A ) @ sk_B ) )
      | ( X0 = sk_B ) ) ),
    inference('sup-',[status(thm)],['1','2'])).

thf('4',plain,
    ( ( ( k3_subset_1 @ ( u1_struct_0 @ sk_A ) @ sk_B )
     != ( k3_subset_1 @ ( u1_struct_0 @ sk_A ) @ sk_B ) )
    | ( sk_C = sk_B )
    | ~ ( m1_subset_1 @ sk_C @ ( k1_zfmisc_1 @ ( u1_struct_0 @ sk_A ) ) ) ),
    inference('sup-',[status(thm)],['0','3'])).

thf('5',plain,(
    m1_subset_1 @ sk_C @ ( k1_zfmisc_1 @ ( u1_struct_0 @ sk_A ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('6',plain,
    ( ( ( k3_subset_1 @ ( u1_struct_0 @ sk_A ) @ sk_B )
     != ( k3_subset_1 @ ( u1_struct_0 @ sk_A ) @ sk_B ) )
    | ( sk_C = sk_B ) ),
    inference(demod,[status(thm)],['4','5'])).

thf('7',plain,(
    sk_C = sk_B ),
    inference(simplify,[status(thm)],['6'])).

thf('8',plain,(
    sk_B != sk_C ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('9',plain,(
    $false ),
    inference('simplify_reflect-',[status(thm)],['7','8'])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.03/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.03/0.13  % Command    : run_portfolio.sh /export/starexec/sandbox/benchmark/theBenchmark.p /export/starexec/sandbox/tmp/tmp.mm60L1Jmda
% 0.13/0.34  % Computer   : n003.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % DateTime   : Tue Dec  1 12:03:27 EST 2020
% 0.13/0.34  % CPUTime    : 
% 0.13/0.34  % Running portfolio for 600 s
% 0.13/0.34  % File         : /export/starexec/sandbox/benchmark/theBenchmark.p
% 0.13/0.34  % Number of cores: 8
% 0.13/0.34  % Python version: Python 3.6.8
% 0.13/0.34  % Running in FO mode
% 0.20/0.46  % Running /export/starexec/sandbox/solver/bin/fo/fo7.sh for 78
% 0.20/0.46  % Solved by: fo/fo7.sh
% 0.20/0.46  To remain in the chosen logic fragment, unification with booleans has been disabled.
% 0.20/0.46  % done 6 iterations in 0.009s
% 0.20/0.46  % SZS status Theorem for '/export/starexec/sandbox/benchmark/theBenchmark.p'
% 0.20/0.46  % SZS output start Refutation
% 0.20/0.46  thf(sk_C_type, type, sk_C: $i).
% 0.20/0.46  thf(k1_zfmisc_1_type, type, k1_zfmisc_1: $i > $i).
% 0.20/0.46  thf(u1_struct_0_type, type, u1_struct_0: $i > $i).
% 0.20/0.46  thf(l1_struct_0_type, type, l1_struct_0: $i > $o).
% 0.20/0.46  thf(sk_A_type, type, sk_A: $i).
% 0.20/0.46  thf(m1_subset_1_type, type, m1_subset_1: $i > $i > $o).
% 0.20/0.46  thf(k3_subset_1_type, type, k3_subset_1: $i > $i > $i).
% 0.20/0.46  thf(sk_B_type, type, sk_B: $i).
% 0.20/0.46  thf(t21_tops_1, conjecture,
% 0.20/0.46    (![A:$i]:
% 0.20/0.46     ( ( l1_struct_0 @ A ) =>
% 0.20/0.46       ( ![B:$i]:
% 0.20/0.46         ( ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ ( u1_struct_0 @ A ) ) ) =>
% 0.20/0.46           ( ![C:$i]:
% 0.20/0.46             ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( u1_struct_0 @ A ) ) ) =>
% 0.20/0.46               ( ( ( k3_subset_1 @ ( u1_struct_0 @ A ) @ B ) =
% 0.20/0.46                   ( k3_subset_1 @ ( u1_struct_0 @ A ) @ C ) ) =>
% 0.20/0.46                 ( ( B ) = ( C ) ) ) ) ) ) ) ))).
% 0.20/0.46  thf(zf_stmt_0, negated_conjecture,
% 0.20/0.46    (~( ![A:$i]:
% 0.20/0.46        ( ( l1_struct_0 @ A ) =>
% 0.20/0.46          ( ![B:$i]:
% 0.20/0.46            ( ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ ( u1_struct_0 @ A ) ) ) =>
% 0.20/0.46              ( ![C:$i]:
% 0.20/0.46                ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( u1_struct_0 @ A ) ) ) =>
% 0.20/0.46                  ( ( ( k3_subset_1 @ ( u1_struct_0 @ A ) @ B ) =
% 0.20/0.46                      ( k3_subset_1 @ ( u1_struct_0 @ A ) @ C ) ) =>
% 0.20/0.46                    ( ( B ) = ( C ) ) ) ) ) ) ) ) )),
% 0.20/0.46    inference('cnf.neg', [status(esa)], [t21_tops_1])).
% 0.20/0.46  thf('0', plain,
% 0.20/0.46      (((k3_subset_1 @ (u1_struct_0 @ sk_A) @ sk_B)
% 0.20/0.46         = (k3_subset_1 @ (u1_struct_0 @ sk_A) @ sk_C))),
% 0.20/0.46      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.46  thf('1', plain,
% 0.20/0.46      ((m1_subset_1 @ sk_B @ (k1_zfmisc_1 @ (u1_struct_0 @ sk_A)))),
% 0.20/0.46      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.46  thf(t64_subset_1, axiom,
% 0.20/0.46    (![A:$i,B:$i]:
% 0.20/0.46     ( ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ A ) ) =>
% 0.20/0.46       ( ![C:$i]:
% 0.20/0.46         ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ A ) ) =>
% 0.20/0.46           ( ( ( k3_subset_1 @ A @ B ) = ( k3_subset_1 @ A @ C ) ) =>
% 0.20/0.46             ( ( B ) = ( C ) ) ) ) ) ))).
% 0.20/0.46  thf('2', plain,
% 0.20/0.46      (![X0 : $i, X1 : $i, X2 : $i]:
% 0.20/0.46         (~ (m1_subset_1 @ X0 @ (k1_zfmisc_1 @ X1))
% 0.20/0.46          | ((X2) = (X0))
% 0.20/0.46          | ((k3_subset_1 @ X1 @ X2) != (k3_subset_1 @ X1 @ X0))
% 0.20/0.46          | ~ (m1_subset_1 @ X2 @ (k1_zfmisc_1 @ X1)))),
% 0.20/0.46      inference('cnf', [status(esa)], [t64_subset_1])).
% 0.20/0.46  thf('3', plain,
% 0.20/0.46      (![X0 : $i]:
% 0.20/0.46         (~ (m1_subset_1 @ X0 @ (k1_zfmisc_1 @ (u1_struct_0 @ sk_A)))
% 0.20/0.46          | ((k3_subset_1 @ (u1_struct_0 @ sk_A) @ X0)
% 0.20/0.46              != (k3_subset_1 @ (u1_struct_0 @ sk_A) @ sk_B))
% 0.20/0.46          | ((X0) = (sk_B)))),
% 0.20/0.46      inference('sup-', [status(thm)], ['1', '2'])).
% 0.20/0.46  thf('4', plain,
% 0.20/0.46      ((((k3_subset_1 @ (u1_struct_0 @ sk_A) @ sk_B)
% 0.20/0.46          != (k3_subset_1 @ (u1_struct_0 @ sk_A) @ sk_B))
% 0.20/0.46        | ((sk_C) = (sk_B))
% 0.20/0.46        | ~ (m1_subset_1 @ sk_C @ (k1_zfmisc_1 @ (u1_struct_0 @ sk_A))))),
% 0.20/0.46      inference('sup-', [status(thm)], ['0', '3'])).
% 0.20/0.46  thf('5', plain,
% 0.20/0.46      ((m1_subset_1 @ sk_C @ (k1_zfmisc_1 @ (u1_struct_0 @ sk_A)))),
% 0.20/0.46      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.46  thf('6', plain,
% 0.20/0.46      ((((k3_subset_1 @ (u1_struct_0 @ sk_A) @ sk_B)
% 0.20/0.46          != (k3_subset_1 @ (u1_struct_0 @ sk_A) @ sk_B))
% 0.20/0.46        | ((sk_C) = (sk_B)))),
% 0.20/0.46      inference('demod', [status(thm)], ['4', '5'])).
% 0.20/0.46  thf('7', plain, (((sk_C) = (sk_B))),
% 0.20/0.46      inference('simplify', [status(thm)], ['6'])).
% 0.20/0.46  thf('8', plain, (((sk_B) != (sk_C))),
% 0.20/0.46      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.46  thf('9', plain, ($false),
% 0.20/0.46      inference('simplify_reflect-', [status(thm)], ['7', '8'])).
% 0.20/0.46  
% 0.20/0.46  % SZS output end Refutation
% 0.20/0.46  
% 0.20/0.47  % Zipperpin 1.5 exiting
%------------------------------------------------------------------------------
