%------------------------------------------------------------------------------
% File       : Zipperpin---2.0
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_portfolio.sh /export/starexec/sandbox/benchmark/theBenchmark.p /export/starexec/sandbox/tmp/tmp.T0Q7txtm6s

% Computer   : n009.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 13:47:02 EST 2020

% Result     : Theorem 0.20s
% Output     : Refutation 0.20s
% Verified   : 
% Statistics : Number of formulae       :   47 (  68 expanded)
%              Number of leaves         :   22 (  32 expanded)
%              Depth                    :   11
%              Number of atoms          :  301 ( 473 expanded)
%              Number of equality atoms :   24 (  35 expanded)
%              Maximal formula depth    :   11 (   6 average)

% Comments   : 
%------------------------------------------------------------------------------
thf(k1_relat_1_type,type,(
    k1_relat_1: $i > $i )).

thf(k10_relat_1_type,type,(
    k10_relat_1: $i > $i > $i )).

thf(v1_relat_1_type,type,(
    v1_relat_1: $i > $o )).

thf(m1_subset_1_type,type,(
    m1_subset_1: $i > $i > $o )).

thf(sk_B_type,type,(
    sk_B: $i )).

thf(k5_relat_1_type,type,(
    k5_relat_1: $i > $i > $i )).

thf(k1_zfmisc_1_type,type,(
    k1_zfmisc_1: $i > $i )).

thf(k2_relat_1_type,type,(
    k2_relat_1: $i > $i )).

thf(sk_A_type,type,(
    sk_A: $i )).

thf(k9_relat_1_type,type,(
    k9_relat_1: $i > $i > $i )).

thf(k6_relat_1_type,type,(
    k6_relat_1: $i > $i )).

thf(k3_xboole_0_type,type,(
    k3_xboole_0: $i > $i > $i )).

thf(r1_tarski_type,type,(
    r1_tarski: $i > $i > $o )).

thf(v1_funct_1_type,type,(
    v1_funct_1: $i > $o )).

thf(t162_funct_1,conjecture,(
    ! [A: $i,B: $i] :
      ( ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ A ) )
     => ( ( k9_relat_1 @ ( k6_relat_1 @ A ) @ B )
        = B ) ) )).

thf(zf_stmt_0,negated_conjecture,(
    ~ ! [A: $i,B: $i] :
        ( ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ A ) )
       => ( ( k9_relat_1 @ ( k6_relat_1 @ A ) @ B )
          = B ) ) ),
    inference('cnf.neg',[status(esa)],[t162_funct_1])).

thf('0',plain,(
    m1_subset_1 @ sk_B @ ( k1_zfmisc_1 @ sk_A ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(t3_subset,axiom,(
    ! [A: $i,B: $i] :
      ( ( m1_subset_1 @ A @ ( k1_zfmisc_1 @ B ) )
    <=> ( r1_tarski @ A @ B ) ) )).

thf('1',plain,(
    ! [X5: $i,X6: $i] :
      ( ( r1_tarski @ X5 @ X6 )
      | ~ ( m1_subset_1 @ X5 @ ( k1_zfmisc_1 @ X6 ) ) ) ),
    inference(cnf,[status(esa)],[t3_subset])).

thf('2',plain,(
    r1_tarski @ sk_B @ sk_A ),
    inference('sup-',[status(thm)],['0','1'])).

thf(t71_relat_1,axiom,(
    ! [A: $i] :
      ( ( ( k2_relat_1 @ ( k6_relat_1 @ A ) )
        = A )
      & ( ( k1_relat_1 @ ( k6_relat_1 @ A ) )
        = A ) ) )).

thf('3',plain,(
    ! [X12: $i] :
      ( ( k2_relat_1 @ ( k6_relat_1 @ X12 ) )
      = X12 ) ),
    inference(cnf,[status(esa)],[t71_relat_1])).

thf(t147_funct_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( ( v1_relat_1 @ B )
        & ( v1_funct_1 @ B ) )
     => ( ( r1_tarski @ A @ ( k2_relat_1 @ B ) )
       => ( ( k9_relat_1 @ B @ ( k10_relat_1 @ B @ A ) )
          = A ) ) ) )).

thf('4',plain,(
    ! [X15: $i,X16: $i] :
      ( ~ ( r1_tarski @ X15 @ ( k2_relat_1 @ X16 ) )
      | ( ( k9_relat_1 @ X16 @ ( k10_relat_1 @ X16 @ X15 ) )
        = X15 )
      | ~ ( v1_funct_1 @ X16 )
      | ~ ( v1_relat_1 @ X16 ) ) ),
    inference(cnf,[status(esa)],[t147_funct_1])).

thf('5',plain,(
    ! [X0: $i,X1: $i] :
      ( ~ ( r1_tarski @ X1 @ X0 )
      | ~ ( v1_relat_1 @ ( k6_relat_1 @ X0 ) )
      | ~ ( v1_funct_1 @ ( k6_relat_1 @ X0 ) )
      | ( ( k9_relat_1 @ ( k6_relat_1 @ X0 ) @ ( k10_relat_1 @ ( k6_relat_1 @ X0 ) @ X1 ) )
        = X1 ) ) ),
    inference('sup-',[status(thm)],['3','4'])).

thf(fc3_funct_1,axiom,(
    ! [A: $i] :
      ( ( v1_funct_1 @ ( k6_relat_1 @ A ) )
      & ( v1_relat_1 @ ( k6_relat_1 @ A ) ) ) )).

thf('6',plain,(
    ! [X13: $i] :
      ( v1_relat_1 @ ( k6_relat_1 @ X13 ) ) ),
    inference(cnf,[status(esa)],[fc3_funct_1])).

thf('7',plain,(
    ! [X14: $i] :
      ( v1_funct_1 @ ( k6_relat_1 @ X14 ) ) ),
    inference(cnf,[status(esa)],[fc3_funct_1])).

thf('8',plain,(
    ! [X0: $i,X1: $i] :
      ( ~ ( r1_tarski @ X1 @ X0 )
      | ( ( k9_relat_1 @ ( k6_relat_1 @ X0 ) @ ( k10_relat_1 @ ( k6_relat_1 @ X0 ) @ X1 ) )
        = X1 ) ) ),
    inference(demod,[status(thm)],['5','6','7'])).

thf('9',plain,
    ( ( k9_relat_1 @ ( k6_relat_1 @ sk_A ) @ ( k10_relat_1 @ ( k6_relat_1 @ sk_A ) @ sk_B ) )
    = sk_B ),
    inference('sup-',[status(thm)],['2','8'])).

thf(idempotence_k3_xboole_0,axiom,(
    ! [A: $i,B: $i] :
      ( ( k3_xboole_0 @ A @ A )
      = A ) )).

thf('10',plain,(
    ! [X0: $i] :
      ( ( k3_xboole_0 @ X0 @ X0 )
      = X0 ) ),
    inference(cnf,[status(esa)],[idempotence_k3_xboole_0])).

thf(t43_funct_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( k5_relat_1 @ ( k6_relat_1 @ B ) @ ( k6_relat_1 @ A ) )
      = ( k6_relat_1 @ ( k3_xboole_0 @ A @ B ) ) ) )).

thf('11',plain,(
    ! [X17: $i,X18: $i] :
      ( ( k5_relat_1 @ ( k6_relat_1 @ X18 ) @ ( k6_relat_1 @ X17 ) )
      = ( k6_relat_1 @ ( k3_xboole_0 @ X17 @ X18 ) ) ) ),
    inference(cnf,[status(esa)],[t43_funct_1])).

thf('12',plain,
    ( ( k9_relat_1 @ ( k6_relat_1 @ sk_A ) @ ( k10_relat_1 @ ( k6_relat_1 @ sk_A ) @ sk_B ) )
    = sk_B ),
    inference('sup-',[status(thm)],['2','8'])).

thf(t159_relat_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( v1_relat_1 @ B )
     => ! [C: $i] :
          ( ( v1_relat_1 @ C )
         => ( ( k9_relat_1 @ ( k5_relat_1 @ B @ C ) @ A )
            = ( k9_relat_1 @ C @ ( k9_relat_1 @ B @ A ) ) ) ) ) )).

thf('13',plain,(
    ! [X8: $i,X9: $i,X10: $i] :
      ( ~ ( v1_relat_1 @ X8 )
      | ( ( k9_relat_1 @ ( k5_relat_1 @ X9 @ X8 ) @ X10 )
        = ( k9_relat_1 @ X8 @ ( k9_relat_1 @ X9 @ X10 ) ) )
      | ~ ( v1_relat_1 @ X9 ) ) ),
    inference(cnf,[status(esa)],[t159_relat_1])).

thf('14',plain,(
    ! [X0: $i] :
      ( ( ( k9_relat_1 @ ( k5_relat_1 @ ( k6_relat_1 @ sk_A ) @ X0 ) @ ( k10_relat_1 @ ( k6_relat_1 @ sk_A ) @ sk_B ) )
        = ( k9_relat_1 @ X0 @ sk_B ) )
      | ~ ( v1_relat_1 @ ( k6_relat_1 @ sk_A ) )
      | ~ ( v1_relat_1 @ X0 ) ) ),
    inference('sup+',[status(thm)],['12','13'])).

thf('15',plain,(
    ! [X13: $i] :
      ( v1_relat_1 @ ( k6_relat_1 @ X13 ) ) ),
    inference(cnf,[status(esa)],[fc3_funct_1])).

thf('16',plain,(
    ! [X0: $i] :
      ( ( ( k9_relat_1 @ ( k5_relat_1 @ ( k6_relat_1 @ sk_A ) @ X0 ) @ ( k10_relat_1 @ ( k6_relat_1 @ sk_A ) @ sk_B ) )
        = ( k9_relat_1 @ X0 @ sk_B ) )
      | ~ ( v1_relat_1 @ X0 ) ) ),
    inference(demod,[status(thm)],['14','15'])).

thf('17',plain,(
    ! [X0: $i] :
      ( ( ( k9_relat_1 @ ( k6_relat_1 @ ( k3_xboole_0 @ X0 @ sk_A ) ) @ ( k10_relat_1 @ ( k6_relat_1 @ sk_A ) @ sk_B ) )
        = ( k9_relat_1 @ ( k6_relat_1 @ X0 ) @ sk_B ) )
      | ~ ( v1_relat_1 @ ( k6_relat_1 @ X0 ) ) ) ),
    inference('sup+',[status(thm)],['11','16'])).

thf('18',plain,(
    ! [X13: $i] :
      ( v1_relat_1 @ ( k6_relat_1 @ X13 ) ) ),
    inference(cnf,[status(esa)],[fc3_funct_1])).

thf('19',plain,(
    ! [X0: $i] :
      ( ( k9_relat_1 @ ( k6_relat_1 @ ( k3_xboole_0 @ X0 @ sk_A ) ) @ ( k10_relat_1 @ ( k6_relat_1 @ sk_A ) @ sk_B ) )
      = ( k9_relat_1 @ ( k6_relat_1 @ X0 ) @ sk_B ) ) ),
    inference(demod,[status(thm)],['17','18'])).

thf('20',plain,
    ( ( k9_relat_1 @ ( k6_relat_1 @ sk_A ) @ ( k10_relat_1 @ ( k6_relat_1 @ sk_A ) @ sk_B ) )
    = ( k9_relat_1 @ ( k6_relat_1 @ sk_A ) @ sk_B ) ),
    inference('sup+',[status(thm)],['10','19'])).

thf('21',plain,
    ( sk_B
    = ( k9_relat_1 @ ( k6_relat_1 @ sk_A ) @ sk_B ) ),
    inference('sup+',[status(thm)],['9','20'])).

thf('22',plain,(
    ( k9_relat_1 @ ( k6_relat_1 @ sk_A ) @ sk_B )
 != sk_B ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('23',plain,(
    $false ),
    inference('simplify_reflect-',[status(thm)],['21','22'])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.00/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.12/0.13  % Command    : run_portfolio.sh /export/starexec/sandbox/benchmark/theBenchmark.p /export/starexec/sandbox/tmp/tmp.T0Q7txtm6s
% 0.13/0.34  % Computer   : n009.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % DateTime   : Tue Dec  1 14:35:11 EST 2020
% 0.20/0.34  % CPUTime    : 
% 0.20/0.34  % Running portfolio for 600 s
% 0.20/0.34  % File         : /export/starexec/sandbox/benchmark/theBenchmark.p
% 0.20/0.34  % Number of cores: 8
% 0.20/0.35  % Python version: Python 3.6.8
% 0.20/0.35  % Running in FO mode
% 0.20/0.45  % Running /export/starexec/sandbox/solver/bin/fo/fo7.sh for 78
% 0.20/0.45  % Solved by: fo/fo7.sh
% 0.20/0.45  To remain in the chosen logic fragment, unification with booleans has been disabled.
% 0.20/0.45  % done 22 iterations in 0.016s
% 0.20/0.45  % SZS status Theorem for '/export/starexec/sandbox/benchmark/theBenchmark.p'
% 0.20/0.45  % SZS output start Refutation
% 0.20/0.45  thf(k1_relat_1_type, type, k1_relat_1: $i > $i).
% 0.20/0.45  thf(k10_relat_1_type, type, k10_relat_1: $i > $i > $i).
% 0.20/0.45  thf(v1_relat_1_type, type, v1_relat_1: $i > $o).
% 0.20/0.45  thf(m1_subset_1_type, type, m1_subset_1: $i > $i > $o).
% 0.20/0.45  thf(sk_B_type, type, sk_B: $i).
% 0.20/0.45  thf(k5_relat_1_type, type, k5_relat_1: $i > $i > $i).
% 0.20/0.45  thf(k1_zfmisc_1_type, type, k1_zfmisc_1: $i > $i).
% 0.20/0.45  thf(k2_relat_1_type, type, k2_relat_1: $i > $i).
% 0.20/0.45  thf(sk_A_type, type, sk_A: $i).
% 0.20/0.45  thf(k9_relat_1_type, type, k9_relat_1: $i > $i > $i).
% 0.20/0.45  thf(k6_relat_1_type, type, k6_relat_1: $i > $i).
% 0.20/0.45  thf(k3_xboole_0_type, type, k3_xboole_0: $i > $i > $i).
% 0.20/0.45  thf(r1_tarski_type, type, r1_tarski: $i > $i > $o).
% 0.20/0.45  thf(v1_funct_1_type, type, v1_funct_1: $i > $o).
% 0.20/0.45  thf(t162_funct_1, conjecture,
% 0.20/0.45    (![A:$i,B:$i]:
% 0.20/0.45     ( ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ A ) ) =>
% 0.20/0.45       ( ( k9_relat_1 @ ( k6_relat_1 @ A ) @ B ) = ( B ) ) ))).
% 0.20/0.45  thf(zf_stmt_0, negated_conjecture,
% 0.20/0.45    (~( ![A:$i,B:$i]:
% 0.20/0.45        ( ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ A ) ) =>
% 0.20/0.45          ( ( k9_relat_1 @ ( k6_relat_1 @ A ) @ B ) = ( B ) ) ) )),
% 0.20/0.45    inference('cnf.neg', [status(esa)], [t162_funct_1])).
% 0.20/0.45  thf('0', plain, ((m1_subset_1 @ sk_B @ (k1_zfmisc_1 @ sk_A))),
% 0.20/0.45      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.45  thf(t3_subset, axiom,
% 0.20/0.45    (![A:$i,B:$i]:
% 0.20/0.45     ( ( m1_subset_1 @ A @ ( k1_zfmisc_1 @ B ) ) <=> ( r1_tarski @ A @ B ) ))).
% 0.20/0.45  thf('1', plain,
% 0.20/0.45      (![X5 : $i, X6 : $i]:
% 0.20/0.45         ((r1_tarski @ X5 @ X6) | ~ (m1_subset_1 @ X5 @ (k1_zfmisc_1 @ X6)))),
% 0.20/0.45      inference('cnf', [status(esa)], [t3_subset])).
% 0.20/0.45  thf('2', plain, ((r1_tarski @ sk_B @ sk_A)),
% 0.20/0.45      inference('sup-', [status(thm)], ['0', '1'])).
% 0.20/0.45  thf(t71_relat_1, axiom,
% 0.20/0.45    (![A:$i]:
% 0.20/0.45     ( ( ( k2_relat_1 @ ( k6_relat_1 @ A ) ) = ( A ) ) & 
% 0.20/0.45       ( ( k1_relat_1 @ ( k6_relat_1 @ A ) ) = ( A ) ) ))).
% 0.20/0.45  thf('3', plain, (![X12 : $i]: ((k2_relat_1 @ (k6_relat_1 @ X12)) = (X12))),
% 0.20/0.45      inference('cnf', [status(esa)], [t71_relat_1])).
% 0.20/0.45  thf(t147_funct_1, axiom,
% 0.20/0.45    (![A:$i,B:$i]:
% 0.20/0.45     ( ( ( v1_relat_1 @ B ) & ( v1_funct_1 @ B ) ) =>
% 0.20/0.45       ( ( r1_tarski @ A @ ( k2_relat_1 @ B ) ) =>
% 0.20/0.45         ( ( k9_relat_1 @ B @ ( k10_relat_1 @ B @ A ) ) = ( A ) ) ) ))).
% 0.20/0.45  thf('4', plain,
% 0.20/0.45      (![X15 : $i, X16 : $i]:
% 0.20/0.45         (~ (r1_tarski @ X15 @ (k2_relat_1 @ X16))
% 0.20/0.45          | ((k9_relat_1 @ X16 @ (k10_relat_1 @ X16 @ X15)) = (X15))
% 0.20/0.45          | ~ (v1_funct_1 @ X16)
% 0.20/0.45          | ~ (v1_relat_1 @ X16))),
% 0.20/0.45      inference('cnf', [status(esa)], [t147_funct_1])).
% 0.20/0.45  thf('5', plain,
% 0.20/0.45      (![X0 : $i, X1 : $i]:
% 0.20/0.45         (~ (r1_tarski @ X1 @ X0)
% 0.20/0.45          | ~ (v1_relat_1 @ (k6_relat_1 @ X0))
% 0.20/0.45          | ~ (v1_funct_1 @ (k6_relat_1 @ X0))
% 0.20/0.45          | ((k9_relat_1 @ (k6_relat_1 @ X0) @ 
% 0.20/0.45              (k10_relat_1 @ (k6_relat_1 @ X0) @ X1)) = (X1)))),
% 0.20/0.45      inference('sup-', [status(thm)], ['3', '4'])).
% 0.20/0.45  thf(fc3_funct_1, axiom,
% 0.20/0.45    (![A:$i]:
% 0.20/0.45     ( ( v1_funct_1 @ ( k6_relat_1 @ A ) ) & 
% 0.20/0.45       ( v1_relat_1 @ ( k6_relat_1 @ A ) ) ))).
% 0.20/0.45  thf('6', plain, (![X13 : $i]: (v1_relat_1 @ (k6_relat_1 @ X13))),
% 0.20/0.45      inference('cnf', [status(esa)], [fc3_funct_1])).
% 0.20/0.45  thf('7', plain, (![X14 : $i]: (v1_funct_1 @ (k6_relat_1 @ X14))),
% 0.20/0.45      inference('cnf', [status(esa)], [fc3_funct_1])).
% 0.20/0.45  thf('8', plain,
% 0.20/0.45      (![X0 : $i, X1 : $i]:
% 0.20/0.45         (~ (r1_tarski @ X1 @ X0)
% 0.20/0.45          | ((k9_relat_1 @ (k6_relat_1 @ X0) @ 
% 0.20/0.45              (k10_relat_1 @ (k6_relat_1 @ X0) @ X1)) = (X1)))),
% 0.20/0.45      inference('demod', [status(thm)], ['5', '6', '7'])).
% 0.20/0.45  thf('9', plain,
% 0.20/0.45      (((k9_relat_1 @ (k6_relat_1 @ sk_A) @ 
% 0.20/0.45         (k10_relat_1 @ (k6_relat_1 @ sk_A) @ sk_B)) = (sk_B))),
% 0.20/0.45      inference('sup-', [status(thm)], ['2', '8'])).
% 0.20/0.45  thf(idempotence_k3_xboole_0, axiom,
% 0.20/0.45    (![A:$i,B:$i]: ( ( k3_xboole_0 @ A @ A ) = ( A ) ))).
% 0.20/0.45  thf('10', plain, (![X0 : $i]: ((k3_xboole_0 @ X0 @ X0) = (X0))),
% 0.20/0.45      inference('cnf', [status(esa)], [idempotence_k3_xboole_0])).
% 0.20/0.45  thf(t43_funct_1, axiom,
% 0.20/0.45    (![A:$i,B:$i]:
% 0.20/0.45     ( ( k5_relat_1 @ ( k6_relat_1 @ B ) @ ( k6_relat_1 @ A ) ) =
% 0.20/0.45       ( k6_relat_1 @ ( k3_xboole_0 @ A @ B ) ) ))).
% 0.20/0.45  thf('11', plain,
% 0.20/0.45      (![X17 : $i, X18 : $i]:
% 0.20/0.45         ((k5_relat_1 @ (k6_relat_1 @ X18) @ (k6_relat_1 @ X17))
% 0.20/0.45           = (k6_relat_1 @ (k3_xboole_0 @ X17 @ X18)))),
% 0.20/0.45      inference('cnf', [status(esa)], [t43_funct_1])).
% 0.20/0.45  thf('12', plain,
% 0.20/0.45      (((k9_relat_1 @ (k6_relat_1 @ sk_A) @ 
% 0.20/0.45         (k10_relat_1 @ (k6_relat_1 @ sk_A) @ sk_B)) = (sk_B))),
% 0.20/0.45      inference('sup-', [status(thm)], ['2', '8'])).
% 0.20/0.45  thf(t159_relat_1, axiom,
% 0.20/0.45    (![A:$i,B:$i]:
% 0.20/0.45     ( ( v1_relat_1 @ B ) =>
% 0.20/0.45       ( ![C:$i]:
% 0.20/0.45         ( ( v1_relat_1 @ C ) =>
% 0.20/0.45           ( ( k9_relat_1 @ ( k5_relat_1 @ B @ C ) @ A ) =
% 0.20/0.45             ( k9_relat_1 @ C @ ( k9_relat_1 @ B @ A ) ) ) ) ) ))).
% 0.20/0.45  thf('13', plain,
% 0.20/0.45      (![X8 : $i, X9 : $i, X10 : $i]:
% 0.20/0.45         (~ (v1_relat_1 @ X8)
% 0.20/0.45          | ((k9_relat_1 @ (k5_relat_1 @ X9 @ X8) @ X10)
% 0.20/0.45              = (k9_relat_1 @ X8 @ (k9_relat_1 @ X9 @ X10)))
% 0.20/0.45          | ~ (v1_relat_1 @ X9))),
% 0.20/0.45      inference('cnf', [status(esa)], [t159_relat_1])).
% 0.20/0.45  thf('14', plain,
% 0.20/0.45      (![X0 : $i]:
% 0.20/0.45         (((k9_relat_1 @ (k5_relat_1 @ (k6_relat_1 @ sk_A) @ X0) @ 
% 0.20/0.45            (k10_relat_1 @ (k6_relat_1 @ sk_A) @ sk_B))
% 0.20/0.45            = (k9_relat_1 @ X0 @ sk_B))
% 0.20/0.45          | ~ (v1_relat_1 @ (k6_relat_1 @ sk_A))
% 0.20/0.45          | ~ (v1_relat_1 @ X0))),
% 0.20/0.45      inference('sup+', [status(thm)], ['12', '13'])).
% 0.20/0.45  thf('15', plain, (![X13 : $i]: (v1_relat_1 @ (k6_relat_1 @ X13))),
% 0.20/0.45      inference('cnf', [status(esa)], [fc3_funct_1])).
% 0.20/0.45  thf('16', plain,
% 0.20/0.45      (![X0 : $i]:
% 0.20/0.45         (((k9_relat_1 @ (k5_relat_1 @ (k6_relat_1 @ sk_A) @ X0) @ 
% 0.20/0.45            (k10_relat_1 @ (k6_relat_1 @ sk_A) @ sk_B))
% 0.20/0.45            = (k9_relat_1 @ X0 @ sk_B))
% 0.20/0.45          | ~ (v1_relat_1 @ X0))),
% 0.20/0.45      inference('demod', [status(thm)], ['14', '15'])).
% 0.20/0.45  thf('17', plain,
% 0.20/0.45      (![X0 : $i]:
% 0.20/0.45         (((k9_relat_1 @ (k6_relat_1 @ (k3_xboole_0 @ X0 @ sk_A)) @ 
% 0.20/0.45            (k10_relat_1 @ (k6_relat_1 @ sk_A) @ sk_B))
% 0.20/0.45            = (k9_relat_1 @ (k6_relat_1 @ X0) @ sk_B))
% 0.20/0.45          | ~ (v1_relat_1 @ (k6_relat_1 @ X0)))),
% 0.20/0.45      inference('sup+', [status(thm)], ['11', '16'])).
% 0.20/0.45  thf('18', plain, (![X13 : $i]: (v1_relat_1 @ (k6_relat_1 @ X13))),
% 0.20/0.45      inference('cnf', [status(esa)], [fc3_funct_1])).
% 0.20/0.45  thf('19', plain,
% 0.20/0.45      (![X0 : $i]:
% 0.20/0.45         ((k9_relat_1 @ (k6_relat_1 @ (k3_xboole_0 @ X0 @ sk_A)) @ 
% 0.20/0.45           (k10_relat_1 @ (k6_relat_1 @ sk_A) @ sk_B))
% 0.20/0.45           = (k9_relat_1 @ (k6_relat_1 @ X0) @ sk_B))),
% 0.20/0.45      inference('demod', [status(thm)], ['17', '18'])).
% 0.20/0.45  thf('20', plain,
% 0.20/0.45      (((k9_relat_1 @ (k6_relat_1 @ sk_A) @ 
% 0.20/0.45         (k10_relat_1 @ (k6_relat_1 @ sk_A) @ sk_B))
% 0.20/0.45         = (k9_relat_1 @ (k6_relat_1 @ sk_A) @ sk_B))),
% 0.20/0.45      inference('sup+', [status(thm)], ['10', '19'])).
% 0.20/0.45  thf('21', plain, (((sk_B) = (k9_relat_1 @ (k6_relat_1 @ sk_A) @ sk_B))),
% 0.20/0.45      inference('sup+', [status(thm)], ['9', '20'])).
% 0.20/0.45  thf('22', plain, (((k9_relat_1 @ (k6_relat_1 @ sk_A) @ sk_B) != (sk_B))),
% 0.20/0.45      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.45  thf('23', plain, ($false),
% 0.20/0.45      inference('simplify_reflect-', [status(thm)], ['21', '22'])).
% 0.20/0.45  
% 0.20/0.45  % SZS output end Refutation
% 0.20/0.45  
% 0.20/0.46  % Zipperpin 1.5 exiting
%------------------------------------------------------------------------------
