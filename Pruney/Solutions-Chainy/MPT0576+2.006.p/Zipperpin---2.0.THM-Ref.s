%------------------------------------------------------------------------------
% File       : Zipperpin---2.0
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_portfolio.sh /export/starexec/sandbox2/benchmark/theBenchmark.p /export/starexec/sandbox2/tmp/tmp.sDICaDBPBY

% Computer   : n023.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 13:43:21 EST 2020

% Result     : Theorem 0.22s
% Output     : Refutation 0.22s
% Verified   : 
% Statistics : Number of formulae       :   32 (  42 expanded)
%              Number of leaves         :   13 (  18 expanded)
%              Depth                    :    7
%              Number of atoms          :  209 ( 379 expanded)
%              Number of equality atoms :    5 (   5 expanded)
%              Maximal formula depth    :   13 (   6 average)

% Comments   : 
%------------------------------------------------------------------------------
thf(sk_A_type,type,(
    sk_A: $i )).

thf(sk_B_type,type,(
    sk_B: $i )).

thf(k2_xboole_0_type,type,(
    k2_xboole_0: $i > $i > $i )).

thf(v1_relat_1_type,type,(
    v1_relat_1: $i > $o )).

thf(sk_C_type,type,(
    sk_C: $i )).

thf(sk_D_type,type,(
    sk_D: $i )).

thf(r1_tarski_type,type,(
    r1_tarski: $i > $i > $o )).

thf(k10_relat_1_type,type,(
    k10_relat_1: $i > $i > $i )).

thf(t180_relat_1,conjecture,(
    ! [A: $i,B: $i,C: $i] :
      ( ( v1_relat_1 @ C )
     => ! [D: $i] :
          ( ( v1_relat_1 @ D )
         => ( ( ( r1_tarski @ C @ D )
              & ( r1_tarski @ A @ B ) )
           => ( r1_tarski @ ( k10_relat_1 @ C @ A ) @ ( k10_relat_1 @ D @ B ) ) ) ) ) )).

thf(zf_stmt_0,negated_conjecture,(
    ~ ! [A: $i,B: $i,C: $i] :
        ( ( v1_relat_1 @ C )
       => ! [D: $i] :
            ( ( v1_relat_1 @ D )
           => ( ( ( r1_tarski @ C @ D )
                & ( r1_tarski @ A @ B ) )
             => ( r1_tarski @ ( k10_relat_1 @ C @ A ) @ ( k10_relat_1 @ D @ B ) ) ) ) ) ),
    inference('cnf.neg',[status(esa)],[t180_relat_1])).

thf('0',plain,(
    ~ ( r1_tarski @ ( k10_relat_1 @ sk_C @ sk_A ) @ ( k10_relat_1 @ sk_D @ sk_B ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('1',plain,(
    r1_tarski @ sk_C @ sk_D ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(t179_relat_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( v1_relat_1 @ B )
     => ! [C: $i] :
          ( ( v1_relat_1 @ C )
         => ( ( r1_tarski @ B @ C )
           => ( r1_tarski @ ( k10_relat_1 @ B @ A ) @ ( k10_relat_1 @ C @ A ) ) ) ) ) )).

thf('2',plain,(
    ! [X8: $i,X9: $i,X10: $i] :
      ( ~ ( v1_relat_1 @ X8 )
      | ( r1_tarski @ ( k10_relat_1 @ X9 @ X10 ) @ ( k10_relat_1 @ X8 @ X10 ) )
      | ~ ( r1_tarski @ X9 @ X8 )
      | ~ ( v1_relat_1 @ X9 ) ) ),
    inference(cnf,[status(esa)],[t179_relat_1])).

thf('3',plain,(
    ! [X0: $i] :
      ( ~ ( v1_relat_1 @ sk_C )
      | ( r1_tarski @ ( k10_relat_1 @ sk_C @ X0 ) @ ( k10_relat_1 @ sk_D @ X0 ) )
      | ~ ( v1_relat_1 @ sk_D ) ) ),
    inference('sup-',[status(thm)],['1','2'])).

thf('4',plain,(
    v1_relat_1 @ sk_C ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('5',plain,(
    v1_relat_1 @ sk_D ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('6',plain,(
    ! [X0: $i] :
      ( r1_tarski @ ( k10_relat_1 @ sk_C @ X0 ) @ ( k10_relat_1 @ sk_D @ X0 ) ) ),
    inference(demod,[status(thm)],['3','4','5'])).

thf('7',plain,(
    r1_tarski @ sk_A @ sk_B ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(t12_xboole_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( r1_tarski @ A @ B )
     => ( ( k2_xboole_0 @ A @ B )
        = B ) ) )).

thf('8',plain,(
    ! [X3: $i,X4: $i] :
      ( ( ( k2_xboole_0 @ X4 @ X3 )
        = X3 )
      | ~ ( r1_tarski @ X4 @ X3 ) ) ),
    inference(cnf,[status(esa)],[t12_xboole_1])).

thf('9',plain,
    ( ( k2_xboole_0 @ sk_A @ sk_B )
    = sk_B ),
    inference('sup-',[status(thm)],['7','8'])).

thf(t175_relat_1,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( v1_relat_1 @ C )
     => ( ( k10_relat_1 @ C @ ( k2_xboole_0 @ A @ B ) )
        = ( k2_xboole_0 @ ( k10_relat_1 @ C @ A ) @ ( k10_relat_1 @ C @ B ) ) ) ) )).

thf('10',plain,(
    ! [X5: $i,X6: $i,X7: $i] :
      ( ( ( k10_relat_1 @ X5 @ ( k2_xboole_0 @ X6 @ X7 ) )
        = ( k2_xboole_0 @ ( k10_relat_1 @ X5 @ X6 ) @ ( k10_relat_1 @ X5 @ X7 ) ) )
      | ~ ( v1_relat_1 @ X5 ) ) ),
    inference(cnf,[status(esa)],[t175_relat_1])).

thf(t11_xboole_1,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( r1_tarski @ ( k2_xboole_0 @ A @ B ) @ C )
     => ( r1_tarski @ A @ C ) ) )).

thf('11',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( ( r1_tarski @ X0 @ X1 )
      | ~ ( r1_tarski @ ( k2_xboole_0 @ X0 @ X2 ) @ X1 ) ) ),
    inference(cnf,[status(esa)],[t11_xboole_1])).

thf('12',plain,(
    ! [X0: $i,X1: $i,X2: $i,X3: $i] :
      ( ~ ( r1_tarski @ ( k10_relat_1 @ X2 @ ( k2_xboole_0 @ X1 @ X0 ) ) @ X3 )
      | ~ ( v1_relat_1 @ X2 )
      | ( r1_tarski @ ( k10_relat_1 @ X2 @ X1 ) @ X3 ) ) ),
    inference('sup-',[status(thm)],['10','11'])).

thf('13',plain,(
    ! [X0: $i,X1: $i] :
      ( ~ ( r1_tarski @ ( k10_relat_1 @ X1 @ sk_B ) @ X0 )
      | ( r1_tarski @ ( k10_relat_1 @ X1 @ sk_A ) @ X0 )
      | ~ ( v1_relat_1 @ X1 ) ) ),
    inference('sup-',[status(thm)],['9','12'])).

thf('14',plain,
    ( ~ ( v1_relat_1 @ sk_C )
    | ( r1_tarski @ ( k10_relat_1 @ sk_C @ sk_A ) @ ( k10_relat_1 @ sk_D @ sk_B ) ) ),
    inference('sup-',[status(thm)],['6','13'])).

thf('15',plain,(
    v1_relat_1 @ sk_C ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('16',plain,(
    r1_tarski @ ( k10_relat_1 @ sk_C @ sk_A ) @ ( k10_relat_1 @ sk_D @ sk_B ) ),
    inference(demod,[status(thm)],['14','15'])).

thf('17',plain,(
    $false ),
    inference(demod,[status(thm)],['0','16'])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.03/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.03/0.14  % Command    : run_portfolio.sh /export/starexec/sandbox2/benchmark/theBenchmark.p /export/starexec/sandbox2/tmp/tmp.sDICaDBPBY
% 0.15/0.35  % Computer   : n023.cluster.edu
% 0.15/0.35  % Model      : x86_64 x86_64
% 0.15/0.35  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.15/0.35  % Memory     : 8042.1875MB
% 0.15/0.35  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.15/0.35  % CPULimit   : 60
% 0.15/0.35  % DateTime   : Tue Dec  1 15:54:36 EST 2020
% 0.15/0.35  % CPUTime    : 
% 0.15/0.35  % Running portfolio for 600 s
% 0.15/0.35  % File         : /export/starexec/sandbox2/benchmark/theBenchmark.p
% 0.15/0.35  % Number of cores: 8
% 0.15/0.35  % Python version: Python 3.6.8
% 0.15/0.36  % Running in FO mode
% 0.22/0.47  % Running /export/starexec/sandbox2/solver/bin/fo/fo7.sh for 78
% 0.22/0.47  % Solved by: fo/fo7.sh
% 0.22/0.47  To remain in the chosen logic fragment, unification with booleans has been disabled.
% 0.22/0.47  % done 22 iterations in 0.014s
% 0.22/0.47  % SZS status Theorem for '/export/starexec/sandbox2/benchmark/theBenchmark.p'
% 0.22/0.47  % SZS output start Refutation
% 0.22/0.47  thf(sk_A_type, type, sk_A: $i).
% 0.22/0.47  thf(sk_B_type, type, sk_B: $i).
% 0.22/0.47  thf(k2_xboole_0_type, type, k2_xboole_0: $i > $i > $i).
% 0.22/0.47  thf(v1_relat_1_type, type, v1_relat_1: $i > $o).
% 0.22/0.47  thf(sk_C_type, type, sk_C: $i).
% 0.22/0.47  thf(sk_D_type, type, sk_D: $i).
% 0.22/0.47  thf(r1_tarski_type, type, r1_tarski: $i > $i > $o).
% 0.22/0.47  thf(k10_relat_1_type, type, k10_relat_1: $i > $i > $i).
% 0.22/0.47  thf(t180_relat_1, conjecture,
% 0.22/0.47    (![A:$i,B:$i,C:$i]:
% 0.22/0.47     ( ( v1_relat_1 @ C ) =>
% 0.22/0.47       ( ![D:$i]:
% 0.22/0.47         ( ( v1_relat_1 @ D ) =>
% 0.22/0.47           ( ( ( r1_tarski @ C @ D ) & ( r1_tarski @ A @ B ) ) =>
% 0.22/0.47             ( r1_tarski @ ( k10_relat_1 @ C @ A ) @ ( k10_relat_1 @ D @ B ) ) ) ) ) ))).
% 0.22/0.47  thf(zf_stmt_0, negated_conjecture,
% 0.22/0.47    (~( ![A:$i,B:$i,C:$i]:
% 0.22/0.47        ( ( v1_relat_1 @ C ) =>
% 0.22/0.47          ( ![D:$i]:
% 0.22/0.47            ( ( v1_relat_1 @ D ) =>
% 0.22/0.47              ( ( ( r1_tarski @ C @ D ) & ( r1_tarski @ A @ B ) ) =>
% 0.22/0.47                ( r1_tarski @ ( k10_relat_1 @ C @ A ) @ ( k10_relat_1 @ D @ B ) ) ) ) ) ) )),
% 0.22/0.47    inference('cnf.neg', [status(esa)], [t180_relat_1])).
% 0.22/0.47  thf('0', plain,
% 0.22/0.47      (~ (r1_tarski @ (k10_relat_1 @ sk_C @ sk_A) @ (k10_relat_1 @ sk_D @ sk_B))),
% 0.22/0.47      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.22/0.47  thf('1', plain, ((r1_tarski @ sk_C @ sk_D)),
% 0.22/0.47      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.22/0.47  thf(t179_relat_1, axiom,
% 0.22/0.47    (![A:$i,B:$i]:
% 0.22/0.47     ( ( v1_relat_1 @ B ) =>
% 0.22/0.47       ( ![C:$i]:
% 0.22/0.47         ( ( v1_relat_1 @ C ) =>
% 0.22/0.47           ( ( r1_tarski @ B @ C ) =>
% 0.22/0.47             ( r1_tarski @ ( k10_relat_1 @ B @ A ) @ ( k10_relat_1 @ C @ A ) ) ) ) ) ))).
% 0.22/0.47  thf('2', plain,
% 0.22/0.47      (![X8 : $i, X9 : $i, X10 : $i]:
% 0.22/0.47         (~ (v1_relat_1 @ X8)
% 0.22/0.47          | (r1_tarski @ (k10_relat_1 @ X9 @ X10) @ (k10_relat_1 @ X8 @ X10))
% 0.22/0.47          | ~ (r1_tarski @ X9 @ X8)
% 0.22/0.47          | ~ (v1_relat_1 @ X9))),
% 0.22/0.47      inference('cnf', [status(esa)], [t179_relat_1])).
% 0.22/0.47  thf('3', plain,
% 0.22/0.47      (![X0 : $i]:
% 0.22/0.47         (~ (v1_relat_1 @ sk_C)
% 0.22/0.47          | (r1_tarski @ (k10_relat_1 @ sk_C @ X0) @ (k10_relat_1 @ sk_D @ X0))
% 0.22/0.47          | ~ (v1_relat_1 @ sk_D))),
% 0.22/0.47      inference('sup-', [status(thm)], ['1', '2'])).
% 0.22/0.47  thf('4', plain, ((v1_relat_1 @ sk_C)),
% 0.22/0.47      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.22/0.47  thf('5', plain, ((v1_relat_1 @ sk_D)),
% 0.22/0.47      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.22/0.47  thf('6', plain,
% 0.22/0.47      (![X0 : $i]:
% 0.22/0.47         (r1_tarski @ (k10_relat_1 @ sk_C @ X0) @ (k10_relat_1 @ sk_D @ X0))),
% 0.22/0.47      inference('demod', [status(thm)], ['3', '4', '5'])).
% 0.22/0.47  thf('7', plain, ((r1_tarski @ sk_A @ sk_B)),
% 0.22/0.47      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.22/0.47  thf(t12_xboole_1, axiom,
% 0.22/0.47    (![A:$i,B:$i]:
% 0.22/0.47     ( ( r1_tarski @ A @ B ) => ( ( k2_xboole_0 @ A @ B ) = ( B ) ) ))).
% 0.22/0.47  thf('8', plain,
% 0.22/0.47      (![X3 : $i, X4 : $i]:
% 0.22/0.47         (((k2_xboole_0 @ X4 @ X3) = (X3)) | ~ (r1_tarski @ X4 @ X3))),
% 0.22/0.47      inference('cnf', [status(esa)], [t12_xboole_1])).
% 0.22/0.47  thf('9', plain, (((k2_xboole_0 @ sk_A @ sk_B) = (sk_B))),
% 0.22/0.47      inference('sup-', [status(thm)], ['7', '8'])).
% 0.22/0.47  thf(t175_relat_1, axiom,
% 0.22/0.47    (![A:$i,B:$i,C:$i]:
% 0.22/0.47     ( ( v1_relat_1 @ C ) =>
% 0.22/0.47       ( ( k10_relat_1 @ C @ ( k2_xboole_0 @ A @ B ) ) =
% 0.22/0.47         ( k2_xboole_0 @ ( k10_relat_1 @ C @ A ) @ ( k10_relat_1 @ C @ B ) ) ) ))).
% 0.22/0.47  thf('10', plain,
% 0.22/0.47      (![X5 : $i, X6 : $i, X7 : $i]:
% 0.22/0.47         (((k10_relat_1 @ X5 @ (k2_xboole_0 @ X6 @ X7))
% 0.22/0.47            = (k2_xboole_0 @ (k10_relat_1 @ X5 @ X6) @ (k10_relat_1 @ X5 @ X7)))
% 0.22/0.47          | ~ (v1_relat_1 @ X5))),
% 0.22/0.47      inference('cnf', [status(esa)], [t175_relat_1])).
% 0.22/0.47  thf(t11_xboole_1, axiom,
% 0.22/0.47    (![A:$i,B:$i,C:$i]:
% 0.22/0.47     ( ( r1_tarski @ ( k2_xboole_0 @ A @ B ) @ C ) => ( r1_tarski @ A @ C ) ))).
% 0.22/0.47  thf('11', plain,
% 0.22/0.47      (![X0 : $i, X1 : $i, X2 : $i]:
% 0.22/0.47         ((r1_tarski @ X0 @ X1) | ~ (r1_tarski @ (k2_xboole_0 @ X0 @ X2) @ X1))),
% 0.22/0.47      inference('cnf', [status(esa)], [t11_xboole_1])).
% 0.22/0.47  thf('12', plain,
% 0.22/0.47      (![X0 : $i, X1 : $i, X2 : $i, X3 : $i]:
% 0.22/0.47         (~ (r1_tarski @ (k10_relat_1 @ X2 @ (k2_xboole_0 @ X1 @ X0)) @ X3)
% 0.22/0.47          | ~ (v1_relat_1 @ X2)
% 0.22/0.47          | (r1_tarski @ (k10_relat_1 @ X2 @ X1) @ X3))),
% 0.22/0.47      inference('sup-', [status(thm)], ['10', '11'])).
% 0.22/0.47  thf('13', plain,
% 0.22/0.47      (![X0 : $i, X1 : $i]:
% 0.22/0.47         (~ (r1_tarski @ (k10_relat_1 @ X1 @ sk_B) @ X0)
% 0.22/0.47          | (r1_tarski @ (k10_relat_1 @ X1 @ sk_A) @ X0)
% 0.22/0.47          | ~ (v1_relat_1 @ X1))),
% 0.22/0.47      inference('sup-', [status(thm)], ['9', '12'])).
% 0.22/0.47  thf('14', plain,
% 0.22/0.47      ((~ (v1_relat_1 @ sk_C)
% 0.22/0.47        | (r1_tarski @ (k10_relat_1 @ sk_C @ sk_A) @ 
% 0.22/0.47           (k10_relat_1 @ sk_D @ sk_B)))),
% 0.22/0.47      inference('sup-', [status(thm)], ['6', '13'])).
% 0.22/0.47  thf('15', plain, ((v1_relat_1 @ sk_C)),
% 0.22/0.47      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.22/0.47  thf('16', plain,
% 0.22/0.47      ((r1_tarski @ (k10_relat_1 @ sk_C @ sk_A) @ (k10_relat_1 @ sk_D @ sk_B))),
% 0.22/0.47      inference('demod', [status(thm)], ['14', '15'])).
% 0.22/0.47  thf('17', plain, ($false), inference('demod', [status(thm)], ['0', '16'])).
% 0.22/0.47  
% 0.22/0.47  % SZS output end Refutation
% 0.22/0.47  
% 0.22/0.48  % Zipperpin 1.5 exiting
%------------------------------------------------------------------------------
