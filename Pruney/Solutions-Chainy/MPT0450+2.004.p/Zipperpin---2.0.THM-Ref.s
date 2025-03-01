%------------------------------------------------------------------------------
% File       : Zipperpin---2.0
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_portfolio.sh /export/starexec/sandbox/benchmark/theBenchmark.p /export/starexec/sandbox/tmp/tmp.PJ30XIwv7j

% Computer   : n010.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 13:40:02 EST 2020

% Result     : Theorem 0.45s
% Output     : Refutation 0.45s
% Verified   : 
% Statistics : Number of formulae       :   49 (  75 expanded)
%              Number of leaves         :   20 (  32 expanded)
%              Depth                    :    9
%              Number of atoms          :  312 ( 536 expanded)
%              Number of equality atoms :   10 (  16 expanded)
%              Maximal formula depth    :   12 (   6 average)

% Comments   : 
%------------------------------------------------------------------------------
thf(m1_subset_1_type,type,(
    m1_subset_1: $i > $i > $o )).

thf(k1_zfmisc_1_type,type,(
    k1_zfmisc_1: $i > $i )).

thf(k3_relat_1_type,type,(
    k3_relat_1: $i > $i )).

thf(k3_xboole_0_type,type,(
    k3_xboole_0: $i > $i > $i )).

thf(k1_setfam_1_type,type,(
    k1_setfam_1: $i > $i )).

thf(sk_B_type,type,(
    sk_B: $i )).

thf(k4_xboole_0_type,type,(
    k4_xboole_0: $i > $i > $i )).

thf(r1_tarski_type,type,(
    r1_tarski: $i > $i > $o )).

thf(sk_A_type,type,(
    sk_A: $i )).

thf(v1_relat_1_type,type,(
    v1_relat_1: $i > $o )).

thf(k2_tarski_type,type,(
    k2_tarski: $i > $i > $i )).

thf(commutativity_k2_tarski,axiom,(
    ! [A: $i,B: $i] :
      ( ( k2_tarski @ A @ B )
      = ( k2_tarski @ B @ A ) ) )).

thf('0',plain,(
    ! [X7: $i,X8: $i] :
      ( ( k2_tarski @ X8 @ X7 )
      = ( k2_tarski @ X7 @ X8 ) ) ),
    inference(cnf,[status(esa)],[commutativity_k2_tarski])).

thf(t12_setfam_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( k1_setfam_1 @ ( k2_tarski @ A @ B ) )
      = ( k3_xboole_0 @ A @ B ) ) )).

thf('1',plain,(
    ! [X11: $i,X12: $i] :
      ( ( k1_setfam_1 @ ( k2_tarski @ X11 @ X12 ) )
      = ( k3_xboole_0 @ X11 @ X12 ) ) ),
    inference(cnf,[status(esa)],[t12_setfam_1])).

thf('2',plain,(
    ! [X0: $i,X1: $i] :
      ( ( k1_setfam_1 @ ( k2_tarski @ X1 @ X0 ) )
      = ( k3_xboole_0 @ X0 @ X1 ) ) ),
    inference('sup+',[status(thm)],['0','1'])).

thf('3',plain,(
    ! [X11: $i,X12: $i] :
      ( ( k1_setfam_1 @ ( k2_tarski @ X11 @ X12 ) )
      = ( k3_xboole_0 @ X11 @ X12 ) ) ),
    inference(cnf,[status(esa)],[t12_setfam_1])).

thf('4',plain,(
    ! [X0: $i,X1: $i] :
      ( ( k3_xboole_0 @ X1 @ X0 )
      = ( k3_xboole_0 @ X0 @ X1 ) ) ),
    inference('sup+',[status(thm)],['2','3'])).

thf(t48_xboole_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( k4_xboole_0 @ A @ ( k4_xboole_0 @ A @ B ) )
      = ( k3_xboole_0 @ A @ B ) ) )).

thf('5',plain,(
    ! [X5: $i,X6: $i] :
      ( ( k4_xboole_0 @ X5 @ ( k4_xboole_0 @ X5 @ X6 ) )
      = ( k3_xboole_0 @ X5 @ X6 ) ) ),
    inference(cnf,[status(esa)],[t48_xboole_1])).

thf(t36_xboole_1,axiom,(
    ! [A: $i,B: $i] :
      ( r1_tarski @ ( k4_xboole_0 @ A @ B ) @ A ) )).

thf('6',plain,(
    ! [X3: $i,X4: $i] :
      ( r1_tarski @ ( k4_xboole_0 @ X3 @ X4 ) @ X3 ) ),
    inference(cnf,[status(esa)],[t36_xboole_1])).

thf('7',plain,(
    ! [X0: $i,X1: $i] :
      ( r1_tarski @ ( k3_xboole_0 @ X1 @ X0 ) @ X1 ) ),
    inference('sup+',[status(thm)],['5','6'])).

thf(t31_relat_1,axiom,(
    ! [A: $i] :
      ( ( v1_relat_1 @ A )
     => ! [B: $i] :
          ( ( v1_relat_1 @ B )
         => ( ( r1_tarski @ A @ B )
           => ( r1_tarski @ ( k3_relat_1 @ A ) @ ( k3_relat_1 @ B ) ) ) ) ) )).

thf('8',plain,(
    ! [X18: $i,X19: $i] :
      ( ~ ( v1_relat_1 @ X18 )
      | ( r1_tarski @ ( k3_relat_1 @ X19 ) @ ( k3_relat_1 @ X18 ) )
      | ~ ( r1_tarski @ X19 @ X18 )
      | ~ ( v1_relat_1 @ X19 ) ) ),
    inference(cnf,[status(esa)],[t31_relat_1])).

thf('9',plain,(
    ! [X0: $i,X1: $i] :
      ( ~ ( v1_relat_1 @ ( k3_xboole_0 @ X0 @ X1 ) )
      | ( r1_tarski @ ( k3_relat_1 @ ( k3_xboole_0 @ X0 @ X1 ) ) @ ( k3_relat_1 @ X0 ) )
      | ~ ( v1_relat_1 @ X0 ) ) ),
    inference('sup-',[status(thm)],['7','8'])).

thf('10',plain,(
    ! [X5: $i,X6: $i] :
      ( ( k4_xboole_0 @ X5 @ ( k4_xboole_0 @ X5 @ X6 ) )
      = ( k3_xboole_0 @ X5 @ X6 ) ) ),
    inference(cnf,[status(esa)],[t48_xboole_1])).

thf('11',plain,(
    ! [X3: $i,X4: $i] :
      ( r1_tarski @ ( k4_xboole_0 @ X3 @ X4 ) @ X3 ) ),
    inference(cnf,[status(esa)],[t36_xboole_1])).

thf(t3_subset,axiom,(
    ! [A: $i,B: $i] :
      ( ( m1_subset_1 @ A @ ( k1_zfmisc_1 @ B ) )
    <=> ( r1_tarski @ A @ B ) ) )).

thf('12',plain,(
    ! [X13: $i,X15: $i] :
      ( ( m1_subset_1 @ X13 @ ( k1_zfmisc_1 @ X15 ) )
      | ~ ( r1_tarski @ X13 @ X15 ) ) ),
    inference(cnf,[status(esa)],[t3_subset])).

thf('13',plain,(
    ! [X0: $i,X1: $i] :
      ( m1_subset_1 @ ( k4_xboole_0 @ X0 @ X1 ) @ ( k1_zfmisc_1 @ X0 ) ) ),
    inference('sup-',[status(thm)],['11','12'])).

thf(cc2_relat_1,axiom,(
    ! [A: $i] :
      ( ( v1_relat_1 @ A )
     => ! [B: $i] :
          ( ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ A ) )
         => ( v1_relat_1 @ B ) ) ) )).

thf('14',plain,(
    ! [X16: $i,X17: $i] :
      ( ~ ( m1_subset_1 @ X16 @ ( k1_zfmisc_1 @ X17 ) )
      | ( v1_relat_1 @ X16 )
      | ~ ( v1_relat_1 @ X17 ) ) ),
    inference(cnf,[status(esa)],[cc2_relat_1])).

thf('15',plain,(
    ! [X0: $i,X1: $i] :
      ( ~ ( v1_relat_1 @ X0 )
      | ( v1_relat_1 @ ( k4_xboole_0 @ X0 @ X1 ) ) ) ),
    inference('sup-',[status(thm)],['13','14'])).

thf('16',plain,(
    ! [X0: $i,X1: $i] :
      ( ( v1_relat_1 @ ( k3_xboole_0 @ X1 @ X0 ) )
      | ~ ( v1_relat_1 @ X1 ) ) ),
    inference('sup+',[status(thm)],['10','15'])).

thf('17',plain,(
    ! [X0: $i,X1: $i] :
      ( ~ ( v1_relat_1 @ X0 )
      | ( r1_tarski @ ( k3_relat_1 @ ( k3_xboole_0 @ X0 @ X1 ) ) @ ( k3_relat_1 @ X0 ) ) ) ),
    inference(clc,[status(thm)],['9','16'])).

thf('18',plain,(
    ! [X0: $i,X1: $i] :
      ( ( r1_tarski @ ( k3_relat_1 @ ( k3_xboole_0 @ X1 @ X0 ) ) @ ( k3_relat_1 @ X0 ) )
      | ~ ( v1_relat_1 @ X0 ) ) ),
    inference('sup+',[status(thm)],['4','17'])).

thf('19',plain,(
    ! [X0: $i,X1: $i] :
      ( ~ ( v1_relat_1 @ X0 )
      | ( r1_tarski @ ( k3_relat_1 @ ( k3_xboole_0 @ X0 @ X1 ) ) @ ( k3_relat_1 @ X0 ) ) ) ),
    inference(clc,[status(thm)],['9','16'])).

thf(t19_xboole_1,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( ( r1_tarski @ A @ B )
        & ( r1_tarski @ A @ C ) )
     => ( r1_tarski @ A @ ( k3_xboole_0 @ B @ C ) ) ) )).

thf('20',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( ~ ( r1_tarski @ X0 @ X1 )
      | ~ ( r1_tarski @ X0 @ X2 )
      | ( r1_tarski @ X0 @ ( k3_xboole_0 @ X1 @ X2 ) ) ) ),
    inference(cnf,[status(esa)],[t19_xboole_1])).

thf('21',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( ~ ( v1_relat_1 @ X0 )
      | ( r1_tarski @ ( k3_relat_1 @ ( k3_xboole_0 @ X0 @ X1 ) ) @ ( k3_xboole_0 @ ( k3_relat_1 @ X0 ) @ X2 ) )
      | ~ ( r1_tarski @ ( k3_relat_1 @ ( k3_xboole_0 @ X0 @ X1 ) ) @ X2 ) ) ),
    inference('sup-',[status(thm)],['19','20'])).

thf('22',plain,(
    ! [X0: $i,X1: $i] :
      ( ~ ( v1_relat_1 @ X0 )
      | ( r1_tarski @ ( k3_relat_1 @ ( k3_xboole_0 @ X1 @ X0 ) ) @ ( k3_xboole_0 @ ( k3_relat_1 @ X1 ) @ ( k3_relat_1 @ X0 ) ) )
      | ~ ( v1_relat_1 @ X1 ) ) ),
    inference('sup-',[status(thm)],['18','21'])).

thf(t34_relat_1,conjecture,(
    ! [A: $i] :
      ( ( v1_relat_1 @ A )
     => ! [B: $i] :
          ( ( v1_relat_1 @ B )
         => ( r1_tarski @ ( k3_relat_1 @ ( k3_xboole_0 @ A @ B ) ) @ ( k3_xboole_0 @ ( k3_relat_1 @ A ) @ ( k3_relat_1 @ B ) ) ) ) ) )).

thf(zf_stmt_0,negated_conjecture,(
    ~ ! [A: $i] :
        ( ( v1_relat_1 @ A )
       => ! [B: $i] :
            ( ( v1_relat_1 @ B )
           => ( r1_tarski @ ( k3_relat_1 @ ( k3_xboole_0 @ A @ B ) ) @ ( k3_xboole_0 @ ( k3_relat_1 @ A ) @ ( k3_relat_1 @ B ) ) ) ) ) ),
    inference('cnf.neg',[status(esa)],[t34_relat_1])).

thf('23',plain,(
    ~ ( r1_tarski @ ( k3_relat_1 @ ( k3_xboole_0 @ sk_A @ sk_B ) ) @ ( k3_xboole_0 @ ( k3_relat_1 @ sk_A ) @ ( k3_relat_1 @ sk_B ) ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('24',plain,
    ( ~ ( v1_relat_1 @ sk_A )
    | ~ ( v1_relat_1 @ sk_B ) ),
    inference('sup-',[status(thm)],['22','23'])).

thf('25',plain,(
    v1_relat_1 @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('26',plain,(
    v1_relat_1 @ sk_B ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('27',plain,(
    $false ),
    inference(demod,[status(thm)],['24','25','26'])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.11/0.13  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.11/0.14  % Command    : run_portfolio.sh /export/starexec/sandbox/benchmark/theBenchmark.p /export/starexec/sandbox/tmp/tmp.PJ30XIwv7j
% 0.13/0.35  % Computer   : n010.cluster.edu
% 0.13/0.35  % Model      : x86_64 x86_64
% 0.13/0.35  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.35  % Memory     : 8042.1875MB
% 0.13/0.35  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.35  % CPULimit   : 60
% 0.13/0.35  % DateTime   : Tue Dec  1 11:50:29 EST 2020
% 0.13/0.35  % CPUTime    : 
% 0.13/0.35  % Running portfolio for 600 s
% 0.13/0.35  % File         : /export/starexec/sandbox/benchmark/theBenchmark.p
% 0.13/0.35  % Number of cores: 8
% 0.13/0.35  % Python version: Python 3.6.8
% 0.13/0.36  % Running in FO mode
% 0.45/0.65  % Running /export/starexec/sandbox/solver/bin/fo/fo7.sh for 78
% 0.45/0.65  % Solved by: fo/fo7.sh
% 0.45/0.65  To remain in the chosen logic fragment, unification with booleans has been disabled.
% 0.45/0.65  % done 451 iterations in 0.185s
% 0.45/0.65  % SZS status Theorem for '/export/starexec/sandbox/benchmark/theBenchmark.p'
% 0.45/0.65  % SZS output start Refutation
% 0.45/0.65  thf(m1_subset_1_type, type, m1_subset_1: $i > $i > $o).
% 0.45/0.65  thf(k1_zfmisc_1_type, type, k1_zfmisc_1: $i > $i).
% 0.45/0.65  thf(k3_relat_1_type, type, k3_relat_1: $i > $i).
% 0.45/0.65  thf(k3_xboole_0_type, type, k3_xboole_0: $i > $i > $i).
% 0.45/0.65  thf(k1_setfam_1_type, type, k1_setfam_1: $i > $i).
% 0.45/0.65  thf(sk_B_type, type, sk_B: $i).
% 0.45/0.65  thf(k4_xboole_0_type, type, k4_xboole_0: $i > $i > $i).
% 0.45/0.65  thf(r1_tarski_type, type, r1_tarski: $i > $i > $o).
% 0.45/0.65  thf(sk_A_type, type, sk_A: $i).
% 0.45/0.65  thf(v1_relat_1_type, type, v1_relat_1: $i > $o).
% 0.45/0.65  thf(k2_tarski_type, type, k2_tarski: $i > $i > $i).
% 0.45/0.65  thf(commutativity_k2_tarski, axiom,
% 0.45/0.65    (![A:$i,B:$i]: ( ( k2_tarski @ A @ B ) = ( k2_tarski @ B @ A ) ))).
% 0.45/0.65  thf('0', plain,
% 0.45/0.65      (![X7 : $i, X8 : $i]: ((k2_tarski @ X8 @ X7) = (k2_tarski @ X7 @ X8))),
% 0.45/0.65      inference('cnf', [status(esa)], [commutativity_k2_tarski])).
% 0.45/0.65  thf(t12_setfam_1, axiom,
% 0.45/0.65    (![A:$i,B:$i]:
% 0.45/0.65     ( ( k1_setfam_1 @ ( k2_tarski @ A @ B ) ) = ( k3_xboole_0 @ A @ B ) ))).
% 0.45/0.65  thf('1', plain,
% 0.45/0.65      (![X11 : $i, X12 : $i]:
% 0.45/0.65         ((k1_setfam_1 @ (k2_tarski @ X11 @ X12)) = (k3_xboole_0 @ X11 @ X12))),
% 0.45/0.65      inference('cnf', [status(esa)], [t12_setfam_1])).
% 0.45/0.65  thf('2', plain,
% 0.45/0.65      (![X0 : $i, X1 : $i]:
% 0.45/0.65         ((k1_setfam_1 @ (k2_tarski @ X1 @ X0)) = (k3_xboole_0 @ X0 @ X1))),
% 0.45/0.65      inference('sup+', [status(thm)], ['0', '1'])).
% 0.45/0.65  thf('3', plain,
% 0.45/0.65      (![X11 : $i, X12 : $i]:
% 0.45/0.65         ((k1_setfam_1 @ (k2_tarski @ X11 @ X12)) = (k3_xboole_0 @ X11 @ X12))),
% 0.45/0.65      inference('cnf', [status(esa)], [t12_setfam_1])).
% 0.45/0.65  thf('4', plain,
% 0.45/0.65      (![X0 : $i, X1 : $i]: ((k3_xboole_0 @ X1 @ X0) = (k3_xboole_0 @ X0 @ X1))),
% 0.45/0.65      inference('sup+', [status(thm)], ['2', '3'])).
% 0.45/0.65  thf(t48_xboole_1, axiom,
% 0.45/0.65    (![A:$i,B:$i]:
% 0.45/0.65     ( ( k4_xboole_0 @ A @ ( k4_xboole_0 @ A @ B ) ) = ( k3_xboole_0 @ A @ B ) ))).
% 0.45/0.65  thf('5', plain,
% 0.45/0.65      (![X5 : $i, X6 : $i]:
% 0.45/0.65         ((k4_xboole_0 @ X5 @ (k4_xboole_0 @ X5 @ X6))
% 0.45/0.65           = (k3_xboole_0 @ X5 @ X6))),
% 0.45/0.65      inference('cnf', [status(esa)], [t48_xboole_1])).
% 0.45/0.65  thf(t36_xboole_1, axiom,
% 0.45/0.65    (![A:$i,B:$i]: ( r1_tarski @ ( k4_xboole_0 @ A @ B ) @ A ))).
% 0.45/0.65  thf('6', plain,
% 0.45/0.65      (![X3 : $i, X4 : $i]: (r1_tarski @ (k4_xboole_0 @ X3 @ X4) @ X3)),
% 0.45/0.65      inference('cnf', [status(esa)], [t36_xboole_1])).
% 0.45/0.65  thf('7', plain,
% 0.45/0.65      (![X0 : $i, X1 : $i]: (r1_tarski @ (k3_xboole_0 @ X1 @ X0) @ X1)),
% 0.45/0.65      inference('sup+', [status(thm)], ['5', '6'])).
% 0.45/0.65  thf(t31_relat_1, axiom,
% 0.45/0.65    (![A:$i]:
% 0.45/0.65     ( ( v1_relat_1 @ A ) =>
% 0.45/0.65       ( ![B:$i]:
% 0.45/0.65         ( ( v1_relat_1 @ B ) =>
% 0.45/0.65           ( ( r1_tarski @ A @ B ) =>
% 0.45/0.65             ( r1_tarski @ ( k3_relat_1 @ A ) @ ( k3_relat_1 @ B ) ) ) ) ) ))).
% 0.45/0.65  thf('8', plain,
% 0.45/0.65      (![X18 : $i, X19 : $i]:
% 0.45/0.65         (~ (v1_relat_1 @ X18)
% 0.45/0.65          | (r1_tarski @ (k3_relat_1 @ X19) @ (k3_relat_1 @ X18))
% 0.45/0.65          | ~ (r1_tarski @ X19 @ X18)
% 0.45/0.65          | ~ (v1_relat_1 @ X19))),
% 0.45/0.65      inference('cnf', [status(esa)], [t31_relat_1])).
% 0.45/0.65  thf('9', plain,
% 0.45/0.65      (![X0 : $i, X1 : $i]:
% 0.45/0.65         (~ (v1_relat_1 @ (k3_xboole_0 @ X0 @ X1))
% 0.45/0.65          | (r1_tarski @ (k3_relat_1 @ (k3_xboole_0 @ X0 @ X1)) @ 
% 0.45/0.65             (k3_relat_1 @ X0))
% 0.45/0.65          | ~ (v1_relat_1 @ X0))),
% 0.45/0.65      inference('sup-', [status(thm)], ['7', '8'])).
% 0.45/0.65  thf('10', plain,
% 0.45/0.65      (![X5 : $i, X6 : $i]:
% 0.45/0.65         ((k4_xboole_0 @ X5 @ (k4_xboole_0 @ X5 @ X6))
% 0.45/0.65           = (k3_xboole_0 @ X5 @ X6))),
% 0.45/0.65      inference('cnf', [status(esa)], [t48_xboole_1])).
% 0.45/0.65  thf('11', plain,
% 0.45/0.65      (![X3 : $i, X4 : $i]: (r1_tarski @ (k4_xboole_0 @ X3 @ X4) @ X3)),
% 0.45/0.65      inference('cnf', [status(esa)], [t36_xboole_1])).
% 0.45/0.65  thf(t3_subset, axiom,
% 0.45/0.65    (![A:$i,B:$i]:
% 0.45/0.65     ( ( m1_subset_1 @ A @ ( k1_zfmisc_1 @ B ) ) <=> ( r1_tarski @ A @ B ) ))).
% 0.45/0.65  thf('12', plain,
% 0.45/0.65      (![X13 : $i, X15 : $i]:
% 0.45/0.65         ((m1_subset_1 @ X13 @ (k1_zfmisc_1 @ X15)) | ~ (r1_tarski @ X13 @ X15))),
% 0.45/0.65      inference('cnf', [status(esa)], [t3_subset])).
% 0.45/0.65  thf('13', plain,
% 0.45/0.65      (![X0 : $i, X1 : $i]:
% 0.45/0.65         (m1_subset_1 @ (k4_xboole_0 @ X0 @ X1) @ (k1_zfmisc_1 @ X0))),
% 0.45/0.65      inference('sup-', [status(thm)], ['11', '12'])).
% 0.45/0.65  thf(cc2_relat_1, axiom,
% 0.45/0.65    (![A:$i]:
% 0.45/0.65     ( ( v1_relat_1 @ A ) =>
% 0.45/0.65       ( ![B:$i]:
% 0.45/0.65         ( ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ A ) ) => ( v1_relat_1 @ B ) ) ) ))).
% 0.45/0.65  thf('14', plain,
% 0.45/0.65      (![X16 : $i, X17 : $i]:
% 0.45/0.65         (~ (m1_subset_1 @ X16 @ (k1_zfmisc_1 @ X17))
% 0.45/0.65          | (v1_relat_1 @ X16)
% 0.45/0.65          | ~ (v1_relat_1 @ X17))),
% 0.45/0.65      inference('cnf', [status(esa)], [cc2_relat_1])).
% 0.45/0.65  thf('15', plain,
% 0.45/0.65      (![X0 : $i, X1 : $i]:
% 0.45/0.65         (~ (v1_relat_1 @ X0) | (v1_relat_1 @ (k4_xboole_0 @ X0 @ X1)))),
% 0.45/0.65      inference('sup-', [status(thm)], ['13', '14'])).
% 0.45/0.65  thf('16', plain,
% 0.45/0.65      (![X0 : $i, X1 : $i]:
% 0.45/0.65         ((v1_relat_1 @ (k3_xboole_0 @ X1 @ X0)) | ~ (v1_relat_1 @ X1))),
% 0.45/0.65      inference('sup+', [status(thm)], ['10', '15'])).
% 0.45/0.65  thf('17', plain,
% 0.45/0.65      (![X0 : $i, X1 : $i]:
% 0.45/0.65         (~ (v1_relat_1 @ X0)
% 0.45/0.65          | (r1_tarski @ (k3_relat_1 @ (k3_xboole_0 @ X0 @ X1)) @ 
% 0.45/0.65             (k3_relat_1 @ X0)))),
% 0.45/0.65      inference('clc', [status(thm)], ['9', '16'])).
% 0.45/0.65  thf('18', plain,
% 0.45/0.65      (![X0 : $i, X1 : $i]:
% 0.45/0.65         ((r1_tarski @ (k3_relat_1 @ (k3_xboole_0 @ X1 @ X0)) @ 
% 0.45/0.65           (k3_relat_1 @ X0))
% 0.45/0.65          | ~ (v1_relat_1 @ X0))),
% 0.45/0.65      inference('sup+', [status(thm)], ['4', '17'])).
% 0.45/0.65  thf('19', plain,
% 0.45/0.65      (![X0 : $i, X1 : $i]:
% 0.45/0.65         (~ (v1_relat_1 @ X0)
% 0.45/0.65          | (r1_tarski @ (k3_relat_1 @ (k3_xboole_0 @ X0 @ X1)) @ 
% 0.45/0.65             (k3_relat_1 @ X0)))),
% 0.45/0.65      inference('clc', [status(thm)], ['9', '16'])).
% 0.45/0.65  thf(t19_xboole_1, axiom,
% 0.45/0.65    (![A:$i,B:$i,C:$i]:
% 0.45/0.65     ( ( ( r1_tarski @ A @ B ) & ( r1_tarski @ A @ C ) ) =>
% 0.45/0.65       ( r1_tarski @ A @ ( k3_xboole_0 @ B @ C ) ) ))).
% 0.45/0.65  thf('20', plain,
% 0.45/0.65      (![X0 : $i, X1 : $i, X2 : $i]:
% 0.45/0.65         (~ (r1_tarski @ X0 @ X1)
% 0.45/0.65          | ~ (r1_tarski @ X0 @ X2)
% 0.45/0.65          | (r1_tarski @ X0 @ (k3_xboole_0 @ X1 @ X2)))),
% 0.45/0.65      inference('cnf', [status(esa)], [t19_xboole_1])).
% 0.45/0.65  thf('21', plain,
% 0.45/0.65      (![X0 : $i, X1 : $i, X2 : $i]:
% 0.45/0.65         (~ (v1_relat_1 @ X0)
% 0.45/0.65          | (r1_tarski @ (k3_relat_1 @ (k3_xboole_0 @ X0 @ X1)) @ 
% 0.45/0.65             (k3_xboole_0 @ (k3_relat_1 @ X0) @ X2))
% 0.45/0.65          | ~ (r1_tarski @ (k3_relat_1 @ (k3_xboole_0 @ X0 @ X1)) @ X2))),
% 0.45/0.65      inference('sup-', [status(thm)], ['19', '20'])).
% 0.45/0.65  thf('22', plain,
% 0.45/0.65      (![X0 : $i, X1 : $i]:
% 0.45/0.65         (~ (v1_relat_1 @ X0)
% 0.45/0.65          | (r1_tarski @ (k3_relat_1 @ (k3_xboole_0 @ X1 @ X0)) @ 
% 0.45/0.65             (k3_xboole_0 @ (k3_relat_1 @ X1) @ (k3_relat_1 @ X0)))
% 0.45/0.65          | ~ (v1_relat_1 @ X1))),
% 0.45/0.65      inference('sup-', [status(thm)], ['18', '21'])).
% 0.45/0.65  thf(t34_relat_1, conjecture,
% 0.45/0.65    (![A:$i]:
% 0.45/0.65     ( ( v1_relat_1 @ A ) =>
% 0.45/0.65       ( ![B:$i]:
% 0.45/0.65         ( ( v1_relat_1 @ B ) =>
% 0.45/0.65           ( r1_tarski @
% 0.45/0.65             ( k3_relat_1 @ ( k3_xboole_0 @ A @ B ) ) @ 
% 0.45/0.65             ( k3_xboole_0 @ ( k3_relat_1 @ A ) @ ( k3_relat_1 @ B ) ) ) ) ) ))).
% 0.45/0.65  thf(zf_stmt_0, negated_conjecture,
% 0.45/0.65    (~( ![A:$i]:
% 0.45/0.65        ( ( v1_relat_1 @ A ) =>
% 0.45/0.65          ( ![B:$i]:
% 0.45/0.65            ( ( v1_relat_1 @ B ) =>
% 0.45/0.65              ( r1_tarski @
% 0.45/0.65                ( k3_relat_1 @ ( k3_xboole_0 @ A @ B ) ) @ 
% 0.45/0.65                ( k3_xboole_0 @ ( k3_relat_1 @ A ) @ ( k3_relat_1 @ B ) ) ) ) ) ) )),
% 0.45/0.65    inference('cnf.neg', [status(esa)], [t34_relat_1])).
% 0.45/0.65  thf('23', plain,
% 0.45/0.65      (~ (r1_tarski @ (k3_relat_1 @ (k3_xboole_0 @ sk_A @ sk_B)) @ 
% 0.45/0.65          (k3_xboole_0 @ (k3_relat_1 @ sk_A) @ (k3_relat_1 @ sk_B)))),
% 0.45/0.65      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.45/0.65  thf('24', plain, ((~ (v1_relat_1 @ sk_A) | ~ (v1_relat_1 @ sk_B))),
% 0.45/0.65      inference('sup-', [status(thm)], ['22', '23'])).
% 0.45/0.65  thf('25', plain, ((v1_relat_1 @ sk_A)),
% 0.45/0.65      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.45/0.65  thf('26', plain, ((v1_relat_1 @ sk_B)),
% 0.45/0.65      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.45/0.65  thf('27', plain, ($false),
% 0.45/0.65      inference('demod', [status(thm)], ['24', '25', '26'])).
% 0.45/0.65  
% 0.45/0.65  % SZS output end Refutation
% 0.45/0.65  
% 0.45/0.66  % Zipperpin 1.5 exiting
%------------------------------------------------------------------------------
