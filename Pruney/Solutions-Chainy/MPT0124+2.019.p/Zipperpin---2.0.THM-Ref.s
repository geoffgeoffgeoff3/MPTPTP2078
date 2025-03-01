%------------------------------------------------------------------------------
% File       : Zipperpin---2.0
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_portfolio.sh /export/starexec/sandbox2/benchmark/theBenchmark.p /export/starexec/sandbox2/tmp/tmp.E8XmrOIqJd

% Computer   : n005.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 13:26:55 EST 2020

% Result     : Theorem 0.46s
% Output     : Refutation 0.46s
% Verified   : 
% Statistics : Number of formulae       :   63 ( 208 expanded)
%              Number of leaves         :   18 (  75 expanded)
%              Depth                    :   12
%              Number of atoms          :  471 (1680 expanded)
%              Number of equality atoms :   52 ( 193 expanded)
%              Maximal formula depth    :   11 (   6 average)

% Comments   : 
%------------------------------------------------------------------------------
thf(k4_xboole_0_type,type,(
    k4_xboole_0: $i > $i > $i )).

thf(r1_tarski_type,type,(
    r1_tarski: $i > $i > $o )).

thf(k3_xboole_0_type,type,(
    k3_xboole_0: $i > $i > $i )).

thf(sk_A_type,type,(
    sk_A: $i )).

thf(k2_xboole_0_type,type,(
    k2_xboole_0: $i > $i > $i )).

thf(sk_C_type,type,(
    sk_C: $i )).

thf(sk_B_type,type,(
    sk_B: $i )).

thf(k5_xboole_0_type,type,(
    k5_xboole_0: $i > $i > $i )).

thf(t117_xboole_1,conjecture,(
    ! [A: $i,B: $i,C: $i] :
      ( ( r1_tarski @ C @ B )
     => ( ( k4_xboole_0 @ A @ C )
        = ( k2_xboole_0 @ ( k4_xboole_0 @ A @ B ) @ ( k3_xboole_0 @ A @ ( k4_xboole_0 @ B @ C ) ) ) ) ) )).

thf(zf_stmt_0,negated_conjecture,(
    ~ ! [A: $i,B: $i,C: $i] :
        ( ( r1_tarski @ C @ B )
       => ( ( k4_xboole_0 @ A @ C )
          = ( k2_xboole_0 @ ( k4_xboole_0 @ A @ B ) @ ( k3_xboole_0 @ A @ ( k4_xboole_0 @ B @ C ) ) ) ) ) ),
    inference('cnf.neg',[status(esa)],[t117_xboole_1])).

thf('0',plain,(
    ( k4_xboole_0 @ sk_A @ sk_C )
 != ( k2_xboole_0 @ ( k4_xboole_0 @ sk_A @ sk_B ) @ ( k3_xboole_0 @ sk_A @ ( k4_xboole_0 @ sk_B @ sk_C ) ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(t49_xboole_1,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( k3_xboole_0 @ A @ ( k4_xboole_0 @ B @ C ) )
      = ( k4_xboole_0 @ ( k3_xboole_0 @ A @ B ) @ C ) ) )).

thf('1',plain,(
    ! [X14: $i,X15: $i,X16: $i] :
      ( ( k3_xboole_0 @ X14 @ ( k4_xboole_0 @ X15 @ X16 ) )
      = ( k4_xboole_0 @ ( k3_xboole_0 @ X14 @ X15 ) @ X16 ) ) ),
    inference(cnf,[status(esa)],[t49_xboole_1])).

thf('2',plain,(
    ( k4_xboole_0 @ sk_A @ sk_C )
 != ( k2_xboole_0 @ ( k4_xboole_0 @ sk_A @ sk_B ) @ ( k4_xboole_0 @ ( k3_xboole_0 @ sk_A @ sk_B ) @ sk_C ) ) ),
    inference(demod,[status(thm)],['0','1'])).

thf('3',plain,(
    ! [X14: $i,X15: $i,X16: $i] :
      ( ( k3_xboole_0 @ X14 @ ( k4_xboole_0 @ X15 @ X16 ) )
      = ( k4_xboole_0 @ ( k3_xboole_0 @ X14 @ X15 ) @ X16 ) ) ),
    inference(cnf,[status(esa)],[t49_xboole_1])).

thf(t52_xboole_1,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( k4_xboole_0 @ A @ ( k4_xboole_0 @ B @ C ) )
      = ( k2_xboole_0 @ ( k4_xboole_0 @ A @ B ) @ ( k3_xboole_0 @ A @ C ) ) ) )).

thf('4',plain,(
    ! [X17: $i,X18: $i,X19: $i] :
      ( ( k4_xboole_0 @ X17 @ ( k4_xboole_0 @ X18 @ X19 ) )
      = ( k2_xboole_0 @ ( k4_xboole_0 @ X17 @ X18 ) @ ( k3_xboole_0 @ X17 @ X19 ) ) ) ),
    inference(cnf,[status(esa)],[t52_xboole_1])).

thf('5',plain,(
    ! [X0: $i,X1: $i,X2: $i,X3: $i] :
      ( ( k4_xboole_0 @ X2 @ ( k4_xboole_0 @ X3 @ ( k4_xboole_0 @ X1 @ X0 ) ) )
      = ( k2_xboole_0 @ ( k4_xboole_0 @ X2 @ X3 ) @ ( k4_xboole_0 @ ( k3_xboole_0 @ X2 @ X1 ) @ X0 ) ) ) ),
    inference('sup+',[status(thm)],['3','4'])).

thf('6',plain,(
    r1_tarski @ sk_C @ sk_B ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(t45_xboole_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( r1_tarski @ A @ B )
     => ( B
        = ( k2_xboole_0 @ A @ ( k4_xboole_0 @ B @ A ) ) ) ) )).

thf('7',plain,(
    ! [X10: $i,X11: $i] :
      ( ( X11
        = ( k2_xboole_0 @ X10 @ ( k4_xboole_0 @ X11 @ X10 ) ) )
      | ~ ( r1_tarski @ X10 @ X11 ) ) ),
    inference(cnf,[status(esa)],[t45_xboole_1])).

thf('8',plain,
    ( sk_B
    = ( k2_xboole_0 @ sk_C @ ( k4_xboole_0 @ sk_B @ sk_C ) ) ),
    inference('sup-',[status(thm)],['6','7'])).

thf(t40_xboole_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( k4_xboole_0 @ ( k2_xboole_0 @ A @ B ) @ B )
      = ( k4_xboole_0 @ A @ B ) ) )).

thf('9',plain,(
    ! [X8: $i,X9: $i] :
      ( ( k4_xboole_0 @ ( k2_xboole_0 @ X8 @ X9 ) @ X9 )
      = ( k4_xboole_0 @ X8 @ X9 ) ) ),
    inference(cnf,[status(esa)],[t40_xboole_1])).

thf('10',plain,
    ( ( k4_xboole_0 @ sk_B @ ( k4_xboole_0 @ sk_B @ sk_C ) )
    = ( k4_xboole_0 @ sk_C @ ( k4_xboole_0 @ sk_B @ sk_C ) ) ),
    inference('sup+',[status(thm)],['8','9'])).

thf(t48_xboole_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( k4_xboole_0 @ A @ ( k4_xboole_0 @ A @ B ) )
      = ( k3_xboole_0 @ A @ B ) ) )).

thf('11',plain,(
    ! [X12: $i,X13: $i] :
      ( ( k4_xboole_0 @ X12 @ ( k4_xboole_0 @ X12 @ X13 ) )
      = ( k3_xboole_0 @ X12 @ X13 ) ) ),
    inference(cnf,[status(esa)],[t48_xboole_1])).

thf('12',plain,
    ( ( k3_xboole_0 @ sk_B @ sk_C )
    = ( k4_xboole_0 @ sk_C @ ( k4_xboole_0 @ sk_B @ sk_C ) ) ),
    inference(demod,[status(thm)],['10','11'])).

thf(idempotence_k2_xboole_0,axiom,(
    ! [A: $i,B: $i] :
      ( ( k2_xboole_0 @ A @ A )
      = A ) )).

thf('13',plain,(
    ! [X0: $i] :
      ( ( k2_xboole_0 @ X0 @ X0 )
      = X0 ) ),
    inference(cnf,[status(esa)],[idempotence_k2_xboole_0])).

thf(t21_xboole_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( k3_xboole_0 @ A @ ( k2_xboole_0 @ A @ B ) )
      = A ) )).

thf('14',plain,(
    ! [X5: $i,X6: $i] :
      ( ( k3_xboole_0 @ X5 @ ( k2_xboole_0 @ X5 @ X6 ) )
      = X5 ) ),
    inference(cnf,[status(esa)],[t21_xboole_1])).

thf('15',plain,(
    ! [X0: $i] :
      ( ( k3_xboole_0 @ X0 @ X0 )
      = X0 ) ),
    inference('sup+',[status(thm)],['13','14'])).

thf('16',plain,(
    ! [X17: $i,X18: $i,X19: $i] :
      ( ( k4_xboole_0 @ X17 @ ( k4_xboole_0 @ X18 @ X19 ) )
      = ( k2_xboole_0 @ ( k4_xboole_0 @ X17 @ X18 ) @ ( k3_xboole_0 @ X17 @ X19 ) ) ) ),
    inference(cnf,[status(esa)],[t52_xboole_1])).

thf('17',plain,(
    ! [X0: $i,X1: $i] :
      ( ( k4_xboole_0 @ X0 @ ( k4_xboole_0 @ X1 @ X0 ) )
      = ( k2_xboole_0 @ ( k4_xboole_0 @ X0 @ X1 ) @ X0 ) ) ),
    inference('sup+',[status(thm)],['15','16'])).

thf('18',plain,(
    r1_tarski @ sk_C @ sk_B ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(t12_xboole_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( r1_tarski @ A @ B )
     => ( ( k2_xboole_0 @ A @ B )
        = B ) ) )).

thf('19',plain,(
    ! [X3: $i,X4: $i] :
      ( ( ( k2_xboole_0 @ X4 @ X3 )
        = X3 )
      | ~ ( r1_tarski @ X4 @ X3 ) ) ),
    inference(cnf,[status(esa)],[t12_xboole_1])).

thf('20',plain,
    ( ( k2_xboole_0 @ sk_C @ sk_B )
    = sk_B ),
    inference('sup-',[status(thm)],['18','19'])).

thf('21',plain,(
    ! [X5: $i,X6: $i] :
      ( ( k3_xboole_0 @ X5 @ ( k2_xboole_0 @ X5 @ X6 ) )
      = X5 ) ),
    inference(cnf,[status(esa)],[t21_xboole_1])).

thf('22',plain,
    ( ( k3_xboole_0 @ sk_C @ sk_B )
    = sk_C ),
    inference('sup+',[status(thm)],['20','21'])).

thf(t100_xboole_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( k4_xboole_0 @ A @ B )
      = ( k5_xboole_0 @ A @ ( k3_xboole_0 @ A @ B ) ) ) )).

thf('23',plain,(
    ! [X1: $i,X2: $i] :
      ( ( k4_xboole_0 @ X1 @ X2 )
      = ( k5_xboole_0 @ X1 @ ( k3_xboole_0 @ X1 @ X2 ) ) ) ),
    inference(cnf,[status(esa)],[t100_xboole_1])).

thf('24',plain,
    ( ( k4_xboole_0 @ sk_C @ sk_B )
    = ( k5_xboole_0 @ sk_C @ sk_C ) ),
    inference('sup+',[status(thm)],['22','23'])).

thf('25',plain,
    ( ( k3_xboole_0 @ sk_B @ sk_C )
    = ( k2_xboole_0 @ ( k5_xboole_0 @ sk_C @ sk_C ) @ sk_C ) ),
    inference(demod,[status(thm)],['12','17','24'])).

thf('26',plain,(
    ! [X12: $i,X13: $i] :
      ( ( k4_xboole_0 @ X12 @ ( k4_xboole_0 @ X12 @ X13 ) )
      = ( k3_xboole_0 @ X12 @ X13 ) ) ),
    inference(cnf,[status(esa)],[t48_xboole_1])).

thf('27',plain,(
    ! [X0: $i,X1: $i] :
      ( ( k4_xboole_0 @ X0 @ ( k4_xboole_0 @ X1 @ X0 ) )
      = ( k2_xboole_0 @ ( k4_xboole_0 @ X0 @ X1 ) @ X0 ) ) ),
    inference('sup+',[status(thm)],['15','16'])).

thf('28',plain,(
    ! [X0: $i] :
      ( ( k3_xboole_0 @ X0 @ X0 )
      = ( k2_xboole_0 @ ( k4_xboole_0 @ X0 @ X0 ) @ X0 ) ) ),
    inference('sup+',[status(thm)],['26','27'])).

thf('29',plain,(
    ! [X0: $i] :
      ( ( k3_xboole_0 @ X0 @ X0 )
      = X0 ) ),
    inference('sup+',[status(thm)],['13','14'])).

thf('30',plain,(
    ! [X0: $i] :
      ( ( k3_xboole_0 @ X0 @ X0 )
      = X0 ) ),
    inference('sup+',[status(thm)],['13','14'])).

thf('31',plain,(
    ! [X1: $i,X2: $i] :
      ( ( k4_xboole_0 @ X1 @ X2 )
      = ( k5_xboole_0 @ X1 @ ( k3_xboole_0 @ X1 @ X2 ) ) ) ),
    inference(cnf,[status(esa)],[t100_xboole_1])).

thf('32',plain,(
    ! [X0: $i] :
      ( ( k4_xboole_0 @ X0 @ X0 )
      = ( k5_xboole_0 @ X0 @ X0 ) ) ),
    inference('sup+',[status(thm)],['30','31'])).

thf('33',plain,(
    ! [X0: $i] :
      ( X0
      = ( k2_xboole_0 @ ( k5_xboole_0 @ X0 @ X0 ) @ X0 ) ) ),
    inference(demod,[status(thm)],['28','29','32'])).

thf('34',plain,
    ( ( k3_xboole_0 @ sk_B @ sk_C )
    = sk_C ),
    inference(demod,[status(thm)],['25','33'])).

thf('35',plain,(
    ! [X1: $i,X2: $i] :
      ( ( k4_xboole_0 @ X1 @ X2 )
      = ( k5_xboole_0 @ X1 @ ( k3_xboole_0 @ X1 @ X2 ) ) ) ),
    inference(cnf,[status(esa)],[t100_xboole_1])).

thf('36',plain,
    ( ( k4_xboole_0 @ sk_B @ sk_C )
    = ( k5_xboole_0 @ sk_B @ sk_C ) ),
    inference('sup+',[status(thm)],['34','35'])).

thf('37',plain,
    ( ( k4_xboole_0 @ sk_B @ sk_C )
    = ( k5_xboole_0 @ sk_B @ sk_C ) ),
    inference('sup+',[status(thm)],['34','35'])).

thf('38',plain,(
    ! [X12: $i,X13: $i] :
      ( ( k4_xboole_0 @ X12 @ ( k4_xboole_0 @ X12 @ X13 ) )
      = ( k3_xboole_0 @ X12 @ X13 ) ) ),
    inference(cnf,[status(esa)],[t48_xboole_1])).

thf('39',plain,
    ( ( k4_xboole_0 @ sk_B @ ( k5_xboole_0 @ sk_B @ sk_C ) )
    = ( k3_xboole_0 @ sk_B @ sk_C ) ),
    inference('sup+',[status(thm)],['37','38'])).

thf('40',plain,
    ( ( k3_xboole_0 @ sk_B @ sk_C )
    = sk_C ),
    inference(demod,[status(thm)],['25','33'])).

thf('41',plain,
    ( ( k4_xboole_0 @ sk_B @ ( k5_xboole_0 @ sk_B @ sk_C ) )
    = sk_C ),
    inference(demod,[status(thm)],['39','40'])).

thf('42',plain,(
    ( k4_xboole_0 @ sk_A @ sk_C )
 != ( k4_xboole_0 @ sk_A @ sk_C ) ),
    inference(demod,[status(thm)],['2','5','36','41'])).

thf('43',plain,(
    $false ),
    inference(simplify,[status(thm)],['42'])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.11/0.13  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.11/0.14  % Command    : run_portfolio.sh /export/starexec/sandbox2/benchmark/theBenchmark.p /export/starexec/sandbox2/tmp/tmp.E8XmrOIqJd
% 0.14/0.35  % Computer   : n005.cluster.edu
% 0.14/0.35  % Model      : x86_64 x86_64
% 0.14/0.35  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.14/0.35  % Memory     : 8042.1875MB
% 0.14/0.35  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.14/0.35  % CPULimit   : 60
% 0.14/0.35  % DateTime   : Tue Dec  1 17:23:03 EST 2020
% 0.14/0.35  % CPUTime    : 
% 0.14/0.35  % Running portfolio for 600 s
% 0.14/0.35  % File         : /export/starexec/sandbox2/benchmark/theBenchmark.p
% 0.14/0.35  % Number of cores: 8
% 0.14/0.35  % Python version: Python 3.6.8
% 0.14/0.35  % Running in FO mode
% 0.46/0.65  % Running /export/starexec/sandbox2/solver/bin/fo/fo7.sh for 78
% 0.46/0.65  % Solved by: fo/fo7.sh
% 0.46/0.65  To remain in the chosen logic fragment, unification with booleans has been disabled.
% 0.46/0.65  % done 410 iterations in 0.197s
% 0.46/0.65  % SZS status Theorem for '/export/starexec/sandbox2/benchmark/theBenchmark.p'
% 0.46/0.65  % SZS output start Refutation
% 0.46/0.65  thf(k4_xboole_0_type, type, k4_xboole_0: $i > $i > $i).
% 0.46/0.65  thf(r1_tarski_type, type, r1_tarski: $i > $i > $o).
% 0.46/0.65  thf(k3_xboole_0_type, type, k3_xboole_0: $i > $i > $i).
% 0.46/0.65  thf(sk_A_type, type, sk_A: $i).
% 0.46/0.65  thf(k2_xboole_0_type, type, k2_xboole_0: $i > $i > $i).
% 0.46/0.65  thf(sk_C_type, type, sk_C: $i).
% 0.46/0.65  thf(sk_B_type, type, sk_B: $i).
% 0.46/0.65  thf(k5_xboole_0_type, type, k5_xboole_0: $i > $i > $i).
% 0.46/0.65  thf(t117_xboole_1, conjecture,
% 0.46/0.65    (![A:$i,B:$i,C:$i]:
% 0.46/0.65     ( ( r1_tarski @ C @ B ) =>
% 0.46/0.65       ( ( k4_xboole_0 @ A @ C ) =
% 0.46/0.65         ( k2_xboole_0 @
% 0.46/0.65           ( k4_xboole_0 @ A @ B ) @ 
% 0.46/0.65           ( k3_xboole_0 @ A @ ( k4_xboole_0 @ B @ C ) ) ) ) ))).
% 0.46/0.65  thf(zf_stmt_0, negated_conjecture,
% 0.46/0.65    (~( ![A:$i,B:$i,C:$i]:
% 0.46/0.65        ( ( r1_tarski @ C @ B ) =>
% 0.46/0.65          ( ( k4_xboole_0 @ A @ C ) =
% 0.46/0.65            ( k2_xboole_0 @
% 0.46/0.65              ( k4_xboole_0 @ A @ B ) @ 
% 0.46/0.65              ( k3_xboole_0 @ A @ ( k4_xboole_0 @ B @ C ) ) ) ) ) )),
% 0.46/0.65    inference('cnf.neg', [status(esa)], [t117_xboole_1])).
% 0.46/0.65  thf('0', plain,
% 0.46/0.65      (((k4_xboole_0 @ sk_A @ sk_C)
% 0.46/0.65         != (k2_xboole_0 @ (k4_xboole_0 @ sk_A @ sk_B) @ 
% 0.46/0.65             (k3_xboole_0 @ sk_A @ (k4_xboole_0 @ sk_B @ sk_C))))),
% 0.46/0.65      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.46/0.65  thf(t49_xboole_1, axiom,
% 0.46/0.65    (![A:$i,B:$i,C:$i]:
% 0.46/0.65     ( ( k3_xboole_0 @ A @ ( k4_xboole_0 @ B @ C ) ) =
% 0.46/0.65       ( k4_xboole_0 @ ( k3_xboole_0 @ A @ B ) @ C ) ))).
% 0.46/0.65  thf('1', plain,
% 0.46/0.65      (![X14 : $i, X15 : $i, X16 : $i]:
% 0.46/0.65         ((k3_xboole_0 @ X14 @ (k4_xboole_0 @ X15 @ X16))
% 0.46/0.65           = (k4_xboole_0 @ (k3_xboole_0 @ X14 @ X15) @ X16))),
% 0.46/0.65      inference('cnf', [status(esa)], [t49_xboole_1])).
% 0.46/0.65  thf('2', plain,
% 0.46/0.65      (((k4_xboole_0 @ sk_A @ sk_C)
% 0.46/0.65         != (k2_xboole_0 @ (k4_xboole_0 @ sk_A @ sk_B) @ 
% 0.46/0.65             (k4_xboole_0 @ (k3_xboole_0 @ sk_A @ sk_B) @ sk_C)))),
% 0.46/0.65      inference('demod', [status(thm)], ['0', '1'])).
% 0.46/0.65  thf('3', plain,
% 0.46/0.65      (![X14 : $i, X15 : $i, X16 : $i]:
% 0.46/0.65         ((k3_xboole_0 @ X14 @ (k4_xboole_0 @ X15 @ X16))
% 0.46/0.65           = (k4_xboole_0 @ (k3_xboole_0 @ X14 @ X15) @ X16))),
% 0.46/0.65      inference('cnf', [status(esa)], [t49_xboole_1])).
% 0.46/0.65  thf(t52_xboole_1, axiom,
% 0.46/0.65    (![A:$i,B:$i,C:$i]:
% 0.46/0.65     ( ( k4_xboole_0 @ A @ ( k4_xboole_0 @ B @ C ) ) =
% 0.46/0.65       ( k2_xboole_0 @ ( k4_xboole_0 @ A @ B ) @ ( k3_xboole_0 @ A @ C ) ) ))).
% 0.46/0.65  thf('4', plain,
% 0.46/0.65      (![X17 : $i, X18 : $i, X19 : $i]:
% 0.46/0.65         ((k4_xboole_0 @ X17 @ (k4_xboole_0 @ X18 @ X19))
% 0.46/0.65           = (k2_xboole_0 @ (k4_xboole_0 @ X17 @ X18) @ 
% 0.46/0.65              (k3_xboole_0 @ X17 @ X19)))),
% 0.46/0.65      inference('cnf', [status(esa)], [t52_xboole_1])).
% 0.46/0.65  thf('5', plain,
% 0.46/0.65      (![X0 : $i, X1 : $i, X2 : $i, X3 : $i]:
% 0.46/0.65         ((k4_xboole_0 @ X2 @ (k4_xboole_0 @ X3 @ (k4_xboole_0 @ X1 @ X0)))
% 0.46/0.65           = (k2_xboole_0 @ (k4_xboole_0 @ X2 @ X3) @ 
% 0.46/0.65              (k4_xboole_0 @ (k3_xboole_0 @ X2 @ X1) @ X0)))),
% 0.46/0.65      inference('sup+', [status(thm)], ['3', '4'])).
% 0.46/0.65  thf('6', plain, ((r1_tarski @ sk_C @ sk_B)),
% 0.46/0.65      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.46/0.65  thf(t45_xboole_1, axiom,
% 0.46/0.65    (![A:$i,B:$i]:
% 0.46/0.65     ( ( r1_tarski @ A @ B ) =>
% 0.46/0.65       ( ( B ) = ( k2_xboole_0 @ A @ ( k4_xboole_0 @ B @ A ) ) ) ))).
% 0.46/0.65  thf('7', plain,
% 0.46/0.65      (![X10 : $i, X11 : $i]:
% 0.46/0.65         (((X11) = (k2_xboole_0 @ X10 @ (k4_xboole_0 @ X11 @ X10)))
% 0.46/0.65          | ~ (r1_tarski @ X10 @ X11))),
% 0.46/0.65      inference('cnf', [status(esa)], [t45_xboole_1])).
% 0.46/0.65  thf('8', plain,
% 0.46/0.65      (((sk_B) = (k2_xboole_0 @ sk_C @ (k4_xboole_0 @ sk_B @ sk_C)))),
% 0.46/0.65      inference('sup-', [status(thm)], ['6', '7'])).
% 0.46/0.65  thf(t40_xboole_1, axiom,
% 0.46/0.65    (![A:$i,B:$i]:
% 0.46/0.65     ( ( k4_xboole_0 @ ( k2_xboole_0 @ A @ B ) @ B ) = ( k4_xboole_0 @ A @ B ) ))).
% 0.46/0.65  thf('9', plain,
% 0.46/0.65      (![X8 : $i, X9 : $i]:
% 0.46/0.65         ((k4_xboole_0 @ (k2_xboole_0 @ X8 @ X9) @ X9)
% 0.46/0.65           = (k4_xboole_0 @ X8 @ X9))),
% 0.46/0.65      inference('cnf', [status(esa)], [t40_xboole_1])).
% 0.46/0.65  thf('10', plain,
% 0.46/0.65      (((k4_xboole_0 @ sk_B @ (k4_xboole_0 @ sk_B @ sk_C))
% 0.46/0.65         = (k4_xboole_0 @ sk_C @ (k4_xboole_0 @ sk_B @ sk_C)))),
% 0.46/0.65      inference('sup+', [status(thm)], ['8', '9'])).
% 0.46/0.65  thf(t48_xboole_1, axiom,
% 0.46/0.65    (![A:$i,B:$i]:
% 0.46/0.65     ( ( k4_xboole_0 @ A @ ( k4_xboole_0 @ A @ B ) ) = ( k3_xboole_0 @ A @ B ) ))).
% 0.46/0.65  thf('11', plain,
% 0.46/0.65      (![X12 : $i, X13 : $i]:
% 0.46/0.65         ((k4_xboole_0 @ X12 @ (k4_xboole_0 @ X12 @ X13))
% 0.46/0.65           = (k3_xboole_0 @ X12 @ X13))),
% 0.46/0.65      inference('cnf', [status(esa)], [t48_xboole_1])).
% 0.46/0.65  thf('12', plain,
% 0.46/0.65      (((k3_xboole_0 @ sk_B @ sk_C)
% 0.46/0.65         = (k4_xboole_0 @ sk_C @ (k4_xboole_0 @ sk_B @ sk_C)))),
% 0.46/0.65      inference('demod', [status(thm)], ['10', '11'])).
% 0.46/0.65  thf(idempotence_k2_xboole_0, axiom,
% 0.46/0.65    (![A:$i,B:$i]: ( ( k2_xboole_0 @ A @ A ) = ( A ) ))).
% 0.46/0.65  thf('13', plain, (![X0 : $i]: ((k2_xboole_0 @ X0 @ X0) = (X0))),
% 0.46/0.65      inference('cnf', [status(esa)], [idempotence_k2_xboole_0])).
% 0.46/0.65  thf(t21_xboole_1, axiom,
% 0.46/0.65    (![A:$i,B:$i]: ( ( k3_xboole_0 @ A @ ( k2_xboole_0 @ A @ B ) ) = ( A ) ))).
% 0.46/0.65  thf('14', plain,
% 0.46/0.65      (![X5 : $i, X6 : $i]:
% 0.46/0.65         ((k3_xboole_0 @ X5 @ (k2_xboole_0 @ X5 @ X6)) = (X5))),
% 0.46/0.65      inference('cnf', [status(esa)], [t21_xboole_1])).
% 0.46/0.65  thf('15', plain, (![X0 : $i]: ((k3_xboole_0 @ X0 @ X0) = (X0))),
% 0.46/0.65      inference('sup+', [status(thm)], ['13', '14'])).
% 0.46/0.65  thf('16', plain,
% 0.46/0.65      (![X17 : $i, X18 : $i, X19 : $i]:
% 0.46/0.65         ((k4_xboole_0 @ X17 @ (k4_xboole_0 @ X18 @ X19))
% 0.46/0.65           = (k2_xboole_0 @ (k4_xboole_0 @ X17 @ X18) @ 
% 0.46/0.65              (k3_xboole_0 @ X17 @ X19)))),
% 0.46/0.65      inference('cnf', [status(esa)], [t52_xboole_1])).
% 0.46/0.65  thf('17', plain,
% 0.46/0.65      (![X0 : $i, X1 : $i]:
% 0.46/0.65         ((k4_xboole_0 @ X0 @ (k4_xboole_0 @ X1 @ X0))
% 0.46/0.65           = (k2_xboole_0 @ (k4_xboole_0 @ X0 @ X1) @ X0))),
% 0.46/0.65      inference('sup+', [status(thm)], ['15', '16'])).
% 0.46/0.65  thf('18', plain, ((r1_tarski @ sk_C @ sk_B)),
% 0.46/0.65      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.46/0.65  thf(t12_xboole_1, axiom,
% 0.46/0.65    (![A:$i,B:$i]:
% 0.46/0.65     ( ( r1_tarski @ A @ B ) => ( ( k2_xboole_0 @ A @ B ) = ( B ) ) ))).
% 0.46/0.65  thf('19', plain,
% 0.46/0.65      (![X3 : $i, X4 : $i]:
% 0.46/0.65         (((k2_xboole_0 @ X4 @ X3) = (X3)) | ~ (r1_tarski @ X4 @ X3))),
% 0.46/0.65      inference('cnf', [status(esa)], [t12_xboole_1])).
% 0.46/0.65  thf('20', plain, (((k2_xboole_0 @ sk_C @ sk_B) = (sk_B))),
% 0.46/0.65      inference('sup-', [status(thm)], ['18', '19'])).
% 0.46/0.65  thf('21', plain,
% 0.46/0.65      (![X5 : $i, X6 : $i]:
% 0.46/0.65         ((k3_xboole_0 @ X5 @ (k2_xboole_0 @ X5 @ X6)) = (X5))),
% 0.46/0.65      inference('cnf', [status(esa)], [t21_xboole_1])).
% 0.46/0.65  thf('22', plain, (((k3_xboole_0 @ sk_C @ sk_B) = (sk_C))),
% 0.46/0.65      inference('sup+', [status(thm)], ['20', '21'])).
% 0.46/0.65  thf(t100_xboole_1, axiom,
% 0.46/0.65    (![A:$i,B:$i]:
% 0.46/0.65     ( ( k4_xboole_0 @ A @ B ) = ( k5_xboole_0 @ A @ ( k3_xboole_0 @ A @ B ) ) ))).
% 0.46/0.65  thf('23', plain,
% 0.46/0.65      (![X1 : $i, X2 : $i]:
% 0.46/0.65         ((k4_xboole_0 @ X1 @ X2)
% 0.46/0.65           = (k5_xboole_0 @ X1 @ (k3_xboole_0 @ X1 @ X2)))),
% 0.46/0.65      inference('cnf', [status(esa)], [t100_xboole_1])).
% 0.46/0.65  thf('24', plain,
% 0.46/0.65      (((k4_xboole_0 @ sk_C @ sk_B) = (k5_xboole_0 @ sk_C @ sk_C))),
% 0.46/0.65      inference('sup+', [status(thm)], ['22', '23'])).
% 0.46/0.65  thf('25', plain,
% 0.46/0.65      (((k3_xboole_0 @ sk_B @ sk_C)
% 0.46/0.65         = (k2_xboole_0 @ (k5_xboole_0 @ sk_C @ sk_C) @ sk_C))),
% 0.46/0.65      inference('demod', [status(thm)], ['12', '17', '24'])).
% 0.46/0.65  thf('26', plain,
% 0.46/0.65      (![X12 : $i, X13 : $i]:
% 0.46/0.65         ((k4_xboole_0 @ X12 @ (k4_xboole_0 @ X12 @ X13))
% 0.46/0.65           = (k3_xboole_0 @ X12 @ X13))),
% 0.46/0.65      inference('cnf', [status(esa)], [t48_xboole_1])).
% 0.46/0.65  thf('27', plain,
% 0.46/0.65      (![X0 : $i, X1 : $i]:
% 0.46/0.65         ((k4_xboole_0 @ X0 @ (k4_xboole_0 @ X1 @ X0))
% 0.46/0.65           = (k2_xboole_0 @ (k4_xboole_0 @ X0 @ X1) @ X0))),
% 0.46/0.65      inference('sup+', [status(thm)], ['15', '16'])).
% 0.46/0.65  thf('28', plain,
% 0.46/0.65      (![X0 : $i]:
% 0.46/0.65         ((k3_xboole_0 @ X0 @ X0)
% 0.46/0.65           = (k2_xboole_0 @ (k4_xboole_0 @ X0 @ X0) @ X0))),
% 0.46/0.65      inference('sup+', [status(thm)], ['26', '27'])).
% 0.46/0.65  thf('29', plain, (![X0 : $i]: ((k3_xboole_0 @ X0 @ X0) = (X0))),
% 0.46/0.65      inference('sup+', [status(thm)], ['13', '14'])).
% 0.46/0.65  thf('30', plain, (![X0 : $i]: ((k3_xboole_0 @ X0 @ X0) = (X0))),
% 0.46/0.65      inference('sup+', [status(thm)], ['13', '14'])).
% 0.46/0.65  thf('31', plain,
% 0.46/0.65      (![X1 : $i, X2 : $i]:
% 0.46/0.65         ((k4_xboole_0 @ X1 @ X2)
% 0.46/0.65           = (k5_xboole_0 @ X1 @ (k3_xboole_0 @ X1 @ X2)))),
% 0.46/0.65      inference('cnf', [status(esa)], [t100_xboole_1])).
% 0.46/0.65  thf('32', plain,
% 0.46/0.65      (![X0 : $i]: ((k4_xboole_0 @ X0 @ X0) = (k5_xboole_0 @ X0 @ X0))),
% 0.46/0.65      inference('sup+', [status(thm)], ['30', '31'])).
% 0.46/0.65  thf('33', plain,
% 0.46/0.65      (![X0 : $i]: ((X0) = (k2_xboole_0 @ (k5_xboole_0 @ X0 @ X0) @ X0))),
% 0.46/0.65      inference('demod', [status(thm)], ['28', '29', '32'])).
% 0.46/0.65  thf('34', plain, (((k3_xboole_0 @ sk_B @ sk_C) = (sk_C))),
% 0.46/0.65      inference('demod', [status(thm)], ['25', '33'])).
% 0.46/0.65  thf('35', plain,
% 0.46/0.65      (![X1 : $i, X2 : $i]:
% 0.46/0.65         ((k4_xboole_0 @ X1 @ X2)
% 0.46/0.65           = (k5_xboole_0 @ X1 @ (k3_xboole_0 @ X1 @ X2)))),
% 0.46/0.65      inference('cnf', [status(esa)], [t100_xboole_1])).
% 0.46/0.65  thf('36', plain,
% 0.46/0.65      (((k4_xboole_0 @ sk_B @ sk_C) = (k5_xboole_0 @ sk_B @ sk_C))),
% 0.46/0.65      inference('sup+', [status(thm)], ['34', '35'])).
% 0.46/0.65  thf('37', plain,
% 0.46/0.65      (((k4_xboole_0 @ sk_B @ sk_C) = (k5_xboole_0 @ sk_B @ sk_C))),
% 0.46/0.65      inference('sup+', [status(thm)], ['34', '35'])).
% 0.46/0.65  thf('38', plain,
% 0.46/0.65      (![X12 : $i, X13 : $i]:
% 0.46/0.65         ((k4_xboole_0 @ X12 @ (k4_xboole_0 @ X12 @ X13))
% 0.46/0.65           = (k3_xboole_0 @ X12 @ X13))),
% 0.46/0.65      inference('cnf', [status(esa)], [t48_xboole_1])).
% 0.46/0.65  thf('39', plain,
% 0.46/0.65      (((k4_xboole_0 @ sk_B @ (k5_xboole_0 @ sk_B @ sk_C))
% 0.46/0.65         = (k3_xboole_0 @ sk_B @ sk_C))),
% 0.46/0.65      inference('sup+', [status(thm)], ['37', '38'])).
% 0.46/0.65  thf('40', plain, (((k3_xboole_0 @ sk_B @ sk_C) = (sk_C))),
% 0.46/0.65      inference('demod', [status(thm)], ['25', '33'])).
% 0.46/0.65  thf('41', plain,
% 0.46/0.65      (((k4_xboole_0 @ sk_B @ (k5_xboole_0 @ sk_B @ sk_C)) = (sk_C))),
% 0.46/0.65      inference('demod', [status(thm)], ['39', '40'])).
% 0.46/0.65  thf('42', plain,
% 0.46/0.65      (((k4_xboole_0 @ sk_A @ sk_C) != (k4_xboole_0 @ sk_A @ sk_C))),
% 0.46/0.65      inference('demod', [status(thm)], ['2', '5', '36', '41'])).
% 0.46/0.65  thf('43', plain, ($false), inference('simplify', [status(thm)], ['42'])).
% 0.46/0.65  
% 0.46/0.65  % SZS output end Refutation
% 0.46/0.65  
% 0.46/0.66  % Zipperpin 1.5 exiting
%------------------------------------------------------------------------------
