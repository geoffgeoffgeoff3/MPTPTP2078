%------------------------------------------------------------------------------
% File       : Zipperpin---2.0
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_portfolio.sh /export/starexec/sandbox/benchmark/theBenchmark.p /export/starexec/sandbox/tmp/tmp.TKo4m60Q8f

% Computer   : n008.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 13:38:50 EST 2020

% Result     : Theorem 0.21s
% Output     : Refutation 0.21s
% Verified   : 
% Statistics : Number of formulae       :   45 (  60 expanded)
%              Number of leaves         :   17 (  25 expanded)
%              Depth                    :   11
%              Number of atoms          :  295 ( 402 expanded)
%              Number of equality atoms :   43 (  57 expanded)
%              Maximal formula depth    :   11 (   6 average)

% Comments   : 
%------------------------------------------------------------------------------
thf(k1_xboole_0_type,type,(
    k1_xboole_0: $i )).

thf(k3_xboole_0_type,type,(
    k3_xboole_0: $i > $i > $i )).

thf(k1_setfam_1_type,type,(
    k1_setfam_1: $i > $i )).

thf(sk_B_type,type,(
    sk_B: $i )).

thf(r1_xboole_0_type,type,(
    r1_xboole_0: $i > $i > $o )).

thf(sk_A_type,type,(
    sk_A: $i )).

thf(k1_tarski_type,type,(
    k1_tarski: $i > $i )).

thf(k2_tarski_type,type,(
    k2_tarski: $i > $i > $i )).

thf(k2_xboole_0_type,type,(
    k2_xboole_0: $i > $i > $i )).

thf(t12_setfam_1,conjecture,(
    ! [A: $i,B: $i] :
      ( ( k1_setfam_1 @ ( k2_tarski @ A @ B ) )
      = ( k3_xboole_0 @ A @ B ) ) )).

thf(zf_stmt_0,negated_conjecture,(
    ~ ! [A: $i,B: $i] :
        ( ( k1_setfam_1 @ ( k2_tarski @ A @ B ) )
        = ( k3_xboole_0 @ A @ B ) ) ),
    inference('cnf.neg',[status(esa)],[t12_setfam_1])).

thf('0',plain,(
    ( k1_setfam_1 @ ( k2_tarski @ sk_A @ sk_B ) )
 != ( k3_xboole_0 @ sk_A @ sk_B ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(t69_enumset1,axiom,(
    ! [A: $i] :
      ( ( k2_tarski @ A @ A )
      = ( k1_tarski @ A ) ) )).

thf('1',plain,(
    ! [X7: $i] :
      ( ( k2_tarski @ X7 @ X7 )
      = ( k1_tarski @ X7 ) ) ),
    inference(cnf,[status(esa)],[t69_enumset1])).

thf(t41_enumset1,axiom,(
    ! [A: $i,B: $i] :
      ( ( k2_tarski @ A @ B )
      = ( k2_xboole_0 @ ( k1_tarski @ A ) @ ( k1_tarski @ B ) ) ) )).

thf('2',plain,(
    ! [X5: $i,X6: $i] :
      ( ( k2_tarski @ X5 @ X6 )
      = ( k2_xboole_0 @ ( k1_tarski @ X5 ) @ ( k1_tarski @ X6 ) ) ) ),
    inference(cnf,[status(esa)],[t41_enumset1])).

thf('3',plain,(
    ! [X0: $i,X1: $i] :
      ( ( k2_tarski @ X0 @ X1 )
      = ( k2_xboole_0 @ ( k2_tarski @ X0 @ X0 ) @ ( k1_tarski @ X1 ) ) ) ),
    inference('sup+',[status(thm)],['1','2'])).

thf('4',plain,(
    ! [X7: $i] :
      ( ( k2_tarski @ X7 @ X7 )
      = ( k1_tarski @ X7 ) ) ),
    inference(cnf,[status(esa)],[t69_enumset1])).

thf(t11_setfam_1,axiom,(
    ! [A: $i] :
      ( ( k1_setfam_1 @ ( k1_tarski @ A ) )
      = A ) )).

thf('5',plain,(
    ! [X16: $i] :
      ( ( k1_setfam_1 @ ( k1_tarski @ X16 ) )
      = X16 ) ),
    inference(cnf,[status(esa)],[t11_setfam_1])).

thf('6',plain,(
    ! [X0: $i] :
      ( ( k1_setfam_1 @ ( k2_tarski @ X0 @ X0 ) )
      = X0 ) ),
    inference('sup+',[status(thm)],['4','5'])).

thf(t10_setfam_1,axiom,(
    ! [A: $i,B: $i] :
      ~ ( ( A != k1_xboole_0 )
        & ( B != k1_xboole_0 )
        & ( ( k1_setfam_1 @ ( k2_xboole_0 @ A @ B ) )
         != ( k3_xboole_0 @ ( k1_setfam_1 @ A ) @ ( k1_setfam_1 @ B ) ) ) ) )).

thf('7',plain,(
    ! [X14: $i,X15: $i] :
      ( ( X14 = k1_xboole_0 )
      | ( ( k1_setfam_1 @ ( k2_xboole_0 @ X14 @ X15 ) )
        = ( k3_xboole_0 @ ( k1_setfam_1 @ X14 ) @ ( k1_setfam_1 @ X15 ) ) )
      | ( X15 = k1_xboole_0 ) ) ),
    inference(cnf,[status(esa)],[t10_setfam_1])).

thf('8',plain,(
    ! [X0: $i,X1: $i] :
      ( ( ( k1_setfam_1 @ ( k2_xboole_0 @ ( k2_tarski @ X0 @ X0 ) @ X1 ) )
        = ( k3_xboole_0 @ X0 @ ( k1_setfam_1 @ X1 ) ) )
      | ( X1 = k1_xboole_0 )
      | ( ( k2_tarski @ X0 @ X0 )
        = k1_xboole_0 ) ) ),
    inference('sup+',[status(thm)],['6','7'])).

thf('9',plain,(
    ! [X7: $i] :
      ( ( k2_tarski @ X7 @ X7 )
      = ( k1_tarski @ X7 ) ) ),
    inference(cnf,[status(esa)],[t69_enumset1])).

thf('10',plain,(
    ! [X7: $i] :
      ( ( k2_tarski @ X7 @ X7 )
      = ( k1_tarski @ X7 ) ) ),
    inference(cnf,[status(esa)],[t69_enumset1])).

thf(t19_zfmisc_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( k3_xboole_0 @ ( k1_tarski @ A ) @ ( k2_tarski @ A @ B ) )
      = ( k1_tarski @ A ) ) )).

thf('11',plain,(
    ! [X12: $i,X13: $i] :
      ( ( k3_xboole_0 @ ( k1_tarski @ X12 ) @ ( k2_tarski @ X12 @ X13 ) )
      = ( k1_tarski @ X12 ) ) ),
    inference(cnf,[status(esa)],[t19_zfmisc_1])).

thf('12',plain,(
    ! [X0: $i] :
      ( ( k3_xboole_0 @ ( k1_tarski @ X0 ) @ ( k1_tarski @ X0 ) )
      = ( k1_tarski @ X0 ) ) ),
    inference('sup+',[status(thm)],['10','11'])).

thf(d7_xboole_0,axiom,(
    ! [A: $i,B: $i] :
      ( ( r1_xboole_0 @ A @ B )
    <=> ( ( k3_xboole_0 @ A @ B )
        = k1_xboole_0 ) ) )).

thf('13',plain,(
    ! [X0: $i,X2: $i] :
      ( ( r1_xboole_0 @ X0 @ X2 )
      | ( ( k3_xboole_0 @ X0 @ X2 )
       != k1_xboole_0 ) ) ),
    inference(cnf,[status(esa)],[d7_xboole_0])).

thf('14',plain,(
    ! [X0: $i] :
      ( ( ( k1_tarski @ X0 )
       != k1_xboole_0 )
      | ( r1_xboole_0 @ ( k1_tarski @ X0 ) @ ( k1_tarski @ X0 ) ) ) ),
    inference('sup-',[status(thm)],['12','13'])).

thf(t16_zfmisc_1,axiom,(
    ! [A: $i,B: $i] :
      ~ ( ( r1_xboole_0 @ ( k1_tarski @ A ) @ ( k1_tarski @ B ) )
        & ( A = B ) ) )).

thf('15',plain,(
    ! [X10: $i,X11: $i] :
      ( ~ ( r1_xboole_0 @ ( k1_tarski @ X10 ) @ ( k1_tarski @ X11 ) )
      | ( X10 != X11 ) ) ),
    inference(cnf,[status(esa)],[t16_zfmisc_1])).

thf('16',plain,(
    ! [X11: $i] :
      ~ ( r1_xboole_0 @ ( k1_tarski @ X11 ) @ ( k1_tarski @ X11 ) ) ),
    inference(simplify,[status(thm)],['15'])).

thf('17',plain,(
    ! [X0: $i] :
      ( ( k1_tarski @ X0 )
     != k1_xboole_0 ) ),
    inference(clc,[status(thm)],['14','16'])).

thf('18',plain,(
    ! [X0: $i] :
      ( ( k2_tarski @ X0 @ X0 )
     != k1_xboole_0 ) ),
    inference('sup-',[status(thm)],['9','17'])).

thf('19',plain,(
    ! [X0: $i,X1: $i] :
      ( ( ( k1_setfam_1 @ ( k2_xboole_0 @ ( k2_tarski @ X0 @ X0 ) @ X1 ) )
        = ( k3_xboole_0 @ X0 @ ( k1_setfam_1 @ X1 ) ) )
      | ( X1 = k1_xboole_0 ) ) ),
    inference('simplify_reflect-',[status(thm)],['8','18'])).

thf('20',plain,(
    ! [X0: $i,X1: $i] :
      ( ( ( k1_setfam_1 @ ( k2_tarski @ X1 @ X0 ) )
        = ( k3_xboole_0 @ X1 @ ( k1_setfam_1 @ ( k1_tarski @ X0 ) ) ) )
      | ( ( k1_tarski @ X0 )
        = k1_xboole_0 ) ) ),
    inference('sup+',[status(thm)],['3','19'])).

thf('21',plain,(
    ! [X16: $i] :
      ( ( k1_setfam_1 @ ( k1_tarski @ X16 ) )
      = X16 ) ),
    inference(cnf,[status(esa)],[t11_setfam_1])).

thf('22',plain,(
    ! [X0: $i,X1: $i] :
      ( ( ( k1_setfam_1 @ ( k2_tarski @ X1 @ X0 ) )
        = ( k3_xboole_0 @ X1 @ X0 ) )
      | ( ( k1_tarski @ X0 )
        = k1_xboole_0 ) ) ),
    inference(demod,[status(thm)],['20','21'])).

thf('23',plain,(
    ! [X0: $i] :
      ( ( k1_tarski @ X0 )
     != k1_xboole_0 ) ),
    inference(clc,[status(thm)],['14','16'])).

thf('24',plain,(
    ! [X0: $i,X1: $i] :
      ( ( k1_setfam_1 @ ( k2_tarski @ X1 @ X0 ) )
      = ( k3_xboole_0 @ X1 @ X0 ) ) ),
    inference('simplify_reflect-',[status(thm)],['22','23'])).

thf('25',plain,(
    ( k3_xboole_0 @ sk_A @ sk_B )
 != ( k3_xboole_0 @ sk_A @ sk_B ) ),
    inference(demod,[status(thm)],['0','24'])).

thf('26',plain,(
    $false ),
    inference(simplify,[status(thm)],['25'])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.03/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.03/0.13  % Command    : run_portfolio.sh /export/starexec/sandbox/benchmark/theBenchmark.p /export/starexec/sandbox/tmp/tmp.TKo4m60Q8f
% 0.12/0.34  % Computer   : n008.cluster.edu
% 0.12/0.34  % Model      : x86_64 x86_64
% 0.12/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.12/0.34  % Memory     : 8042.1875MB
% 0.12/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.12/0.34  % CPULimit   : 60
% 0.12/0.34  % DateTime   : Tue Dec  1 20:58:15 EST 2020
% 0.12/0.34  % CPUTime    : 
% 0.12/0.34  % Running portfolio for 600 s
% 0.12/0.34  % File         : /export/starexec/sandbox/benchmark/theBenchmark.p
% 0.12/0.34  % Number of cores: 8
% 0.12/0.35  % Python version: Python 3.6.8
% 0.12/0.35  % Running in FO mode
% 0.21/0.49  % Running /export/starexec/sandbox/solver/bin/fo/fo7.sh for 78
% 0.21/0.49  % Solved by: fo/fo7.sh
% 0.21/0.49  To remain in the chosen logic fragment, unification with booleans has been disabled.
% 0.21/0.49  % done 107 iterations in 0.037s
% 0.21/0.49  % SZS status Theorem for '/export/starexec/sandbox/benchmark/theBenchmark.p'
% 0.21/0.49  % SZS output start Refutation
% 0.21/0.49  thf(k1_xboole_0_type, type, k1_xboole_0: $i).
% 0.21/0.49  thf(k3_xboole_0_type, type, k3_xboole_0: $i > $i > $i).
% 0.21/0.49  thf(k1_setfam_1_type, type, k1_setfam_1: $i > $i).
% 0.21/0.49  thf(sk_B_type, type, sk_B: $i).
% 0.21/0.49  thf(r1_xboole_0_type, type, r1_xboole_0: $i > $i > $o).
% 0.21/0.49  thf(sk_A_type, type, sk_A: $i).
% 0.21/0.49  thf(k1_tarski_type, type, k1_tarski: $i > $i).
% 0.21/0.49  thf(k2_tarski_type, type, k2_tarski: $i > $i > $i).
% 0.21/0.49  thf(k2_xboole_0_type, type, k2_xboole_0: $i > $i > $i).
% 0.21/0.49  thf(t12_setfam_1, conjecture,
% 0.21/0.49    (![A:$i,B:$i]:
% 0.21/0.49     ( ( k1_setfam_1 @ ( k2_tarski @ A @ B ) ) = ( k3_xboole_0 @ A @ B ) ))).
% 0.21/0.49  thf(zf_stmt_0, negated_conjecture,
% 0.21/0.49    (~( ![A:$i,B:$i]:
% 0.21/0.49        ( ( k1_setfam_1 @ ( k2_tarski @ A @ B ) ) = ( k3_xboole_0 @ A @ B ) ) )),
% 0.21/0.49    inference('cnf.neg', [status(esa)], [t12_setfam_1])).
% 0.21/0.49  thf('0', plain,
% 0.21/0.49      (((k1_setfam_1 @ (k2_tarski @ sk_A @ sk_B))
% 0.21/0.49         != (k3_xboole_0 @ sk_A @ sk_B))),
% 0.21/0.49      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.49  thf(t69_enumset1, axiom,
% 0.21/0.49    (![A:$i]: ( ( k2_tarski @ A @ A ) = ( k1_tarski @ A ) ))).
% 0.21/0.49  thf('1', plain, (![X7 : $i]: ((k2_tarski @ X7 @ X7) = (k1_tarski @ X7))),
% 0.21/0.49      inference('cnf', [status(esa)], [t69_enumset1])).
% 0.21/0.49  thf(t41_enumset1, axiom,
% 0.21/0.49    (![A:$i,B:$i]:
% 0.21/0.49     ( ( k2_tarski @ A @ B ) =
% 0.21/0.49       ( k2_xboole_0 @ ( k1_tarski @ A ) @ ( k1_tarski @ B ) ) ))).
% 0.21/0.49  thf('2', plain,
% 0.21/0.49      (![X5 : $i, X6 : $i]:
% 0.21/0.49         ((k2_tarski @ X5 @ X6)
% 0.21/0.49           = (k2_xboole_0 @ (k1_tarski @ X5) @ (k1_tarski @ X6)))),
% 0.21/0.49      inference('cnf', [status(esa)], [t41_enumset1])).
% 0.21/0.49  thf('3', plain,
% 0.21/0.49      (![X0 : $i, X1 : $i]:
% 0.21/0.49         ((k2_tarski @ X0 @ X1)
% 0.21/0.49           = (k2_xboole_0 @ (k2_tarski @ X0 @ X0) @ (k1_tarski @ X1)))),
% 0.21/0.49      inference('sup+', [status(thm)], ['1', '2'])).
% 0.21/0.49  thf('4', plain, (![X7 : $i]: ((k2_tarski @ X7 @ X7) = (k1_tarski @ X7))),
% 0.21/0.49      inference('cnf', [status(esa)], [t69_enumset1])).
% 0.21/0.49  thf(t11_setfam_1, axiom,
% 0.21/0.49    (![A:$i]: ( ( k1_setfam_1 @ ( k1_tarski @ A ) ) = ( A ) ))).
% 0.21/0.49  thf('5', plain, (![X16 : $i]: ((k1_setfam_1 @ (k1_tarski @ X16)) = (X16))),
% 0.21/0.49      inference('cnf', [status(esa)], [t11_setfam_1])).
% 0.21/0.49  thf('6', plain, (![X0 : $i]: ((k1_setfam_1 @ (k2_tarski @ X0 @ X0)) = (X0))),
% 0.21/0.49      inference('sup+', [status(thm)], ['4', '5'])).
% 0.21/0.49  thf(t10_setfam_1, axiom,
% 0.21/0.49    (![A:$i,B:$i]:
% 0.21/0.49     ( ~( ( ( A ) != ( k1_xboole_0 ) ) & ( ( B ) != ( k1_xboole_0 ) ) & 
% 0.21/0.49          ( ( k1_setfam_1 @ ( k2_xboole_0 @ A @ B ) ) !=
% 0.21/0.49            ( k3_xboole_0 @ ( k1_setfam_1 @ A ) @ ( k1_setfam_1 @ B ) ) ) ) ))).
% 0.21/0.49  thf('7', plain,
% 0.21/0.49      (![X14 : $i, X15 : $i]:
% 0.21/0.49         (((X14) = (k1_xboole_0))
% 0.21/0.49          | ((k1_setfam_1 @ (k2_xboole_0 @ X14 @ X15))
% 0.21/0.49              = (k3_xboole_0 @ (k1_setfam_1 @ X14) @ (k1_setfam_1 @ X15)))
% 0.21/0.49          | ((X15) = (k1_xboole_0)))),
% 0.21/0.49      inference('cnf', [status(esa)], [t10_setfam_1])).
% 0.21/0.49  thf('8', plain,
% 0.21/0.49      (![X0 : $i, X1 : $i]:
% 0.21/0.49         (((k1_setfam_1 @ (k2_xboole_0 @ (k2_tarski @ X0 @ X0) @ X1))
% 0.21/0.49            = (k3_xboole_0 @ X0 @ (k1_setfam_1 @ X1)))
% 0.21/0.49          | ((X1) = (k1_xboole_0))
% 0.21/0.49          | ((k2_tarski @ X0 @ X0) = (k1_xboole_0)))),
% 0.21/0.49      inference('sup+', [status(thm)], ['6', '7'])).
% 0.21/0.49  thf('9', plain, (![X7 : $i]: ((k2_tarski @ X7 @ X7) = (k1_tarski @ X7))),
% 0.21/0.49      inference('cnf', [status(esa)], [t69_enumset1])).
% 0.21/0.49  thf('10', plain, (![X7 : $i]: ((k2_tarski @ X7 @ X7) = (k1_tarski @ X7))),
% 0.21/0.49      inference('cnf', [status(esa)], [t69_enumset1])).
% 0.21/0.49  thf(t19_zfmisc_1, axiom,
% 0.21/0.49    (![A:$i,B:$i]:
% 0.21/0.49     ( ( k3_xboole_0 @ ( k1_tarski @ A ) @ ( k2_tarski @ A @ B ) ) =
% 0.21/0.49       ( k1_tarski @ A ) ))).
% 0.21/0.49  thf('11', plain,
% 0.21/0.49      (![X12 : $i, X13 : $i]:
% 0.21/0.49         ((k3_xboole_0 @ (k1_tarski @ X12) @ (k2_tarski @ X12 @ X13))
% 0.21/0.49           = (k1_tarski @ X12))),
% 0.21/0.49      inference('cnf', [status(esa)], [t19_zfmisc_1])).
% 0.21/0.49  thf('12', plain,
% 0.21/0.49      (![X0 : $i]:
% 0.21/0.49         ((k3_xboole_0 @ (k1_tarski @ X0) @ (k1_tarski @ X0))
% 0.21/0.49           = (k1_tarski @ X0))),
% 0.21/0.49      inference('sup+', [status(thm)], ['10', '11'])).
% 0.21/0.49  thf(d7_xboole_0, axiom,
% 0.21/0.49    (![A:$i,B:$i]:
% 0.21/0.49     ( ( r1_xboole_0 @ A @ B ) <=>
% 0.21/0.49       ( ( k3_xboole_0 @ A @ B ) = ( k1_xboole_0 ) ) ))).
% 0.21/0.49  thf('13', plain,
% 0.21/0.49      (![X0 : $i, X2 : $i]:
% 0.21/0.49         ((r1_xboole_0 @ X0 @ X2) | ((k3_xboole_0 @ X0 @ X2) != (k1_xboole_0)))),
% 0.21/0.49      inference('cnf', [status(esa)], [d7_xboole_0])).
% 0.21/0.49  thf('14', plain,
% 0.21/0.49      (![X0 : $i]:
% 0.21/0.49         (((k1_tarski @ X0) != (k1_xboole_0))
% 0.21/0.49          | (r1_xboole_0 @ (k1_tarski @ X0) @ (k1_tarski @ X0)))),
% 0.21/0.49      inference('sup-', [status(thm)], ['12', '13'])).
% 0.21/0.49  thf(t16_zfmisc_1, axiom,
% 0.21/0.49    (![A:$i,B:$i]:
% 0.21/0.49     ( ~( ( r1_xboole_0 @ ( k1_tarski @ A ) @ ( k1_tarski @ B ) ) & 
% 0.21/0.49          ( ( A ) = ( B ) ) ) ))).
% 0.21/0.49  thf('15', plain,
% 0.21/0.49      (![X10 : $i, X11 : $i]:
% 0.21/0.49         (~ (r1_xboole_0 @ (k1_tarski @ X10) @ (k1_tarski @ X11))
% 0.21/0.49          | ((X10) != (X11)))),
% 0.21/0.49      inference('cnf', [status(esa)], [t16_zfmisc_1])).
% 0.21/0.49  thf('16', plain,
% 0.21/0.49      (![X11 : $i]: ~ (r1_xboole_0 @ (k1_tarski @ X11) @ (k1_tarski @ X11))),
% 0.21/0.49      inference('simplify', [status(thm)], ['15'])).
% 0.21/0.49  thf('17', plain, (![X0 : $i]: ((k1_tarski @ X0) != (k1_xboole_0))),
% 0.21/0.49      inference('clc', [status(thm)], ['14', '16'])).
% 0.21/0.49  thf('18', plain, (![X0 : $i]: ((k2_tarski @ X0 @ X0) != (k1_xboole_0))),
% 0.21/0.49      inference('sup-', [status(thm)], ['9', '17'])).
% 0.21/0.49  thf('19', plain,
% 0.21/0.49      (![X0 : $i, X1 : $i]:
% 0.21/0.49         (((k1_setfam_1 @ (k2_xboole_0 @ (k2_tarski @ X0 @ X0) @ X1))
% 0.21/0.49            = (k3_xboole_0 @ X0 @ (k1_setfam_1 @ X1)))
% 0.21/0.49          | ((X1) = (k1_xboole_0)))),
% 0.21/0.49      inference('simplify_reflect-', [status(thm)], ['8', '18'])).
% 0.21/0.49  thf('20', plain,
% 0.21/0.49      (![X0 : $i, X1 : $i]:
% 0.21/0.49         (((k1_setfam_1 @ (k2_tarski @ X1 @ X0))
% 0.21/0.49            = (k3_xboole_0 @ X1 @ (k1_setfam_1 @ (k1_tarski @ X0))))
% 0.21/0.49          | ((k1_tarski @ X0) = (k1_xboole_0)))),
% 0.21/0.49      inference('sup+', [status(thm)], ['3', '19'])).
% 0.21/0.49  thf('21', plain, (![X16 : $i]: ((k1_setfam_1 @ (k1_tarski @ X16)) = (X16))),
% 0.21/0.49      inference('cnf', [status(esa)], [t11_setfam_1])).
% 0.21/0.49  thf('22', plain,
% 0.21/0.49      (![X0 : $i, X1 : $i]:
% 0.21/0.49         (((k1_setfam_1 @ (k2_tarski @ X1 @ X0)) = (k3_xboole_0 @ X1 @ X0))
% 0.21/0.49          | ((k1_tarski @ X0) = (k1_xboole_0)))),
% 0.21/0.49      inference('demod', [status(thm)], ['20', '21'])).
% 0.21/0.49  thf('23', plain, (![X0 : $i]: ((k1_tarski @ X0) != (k1_xboole_0))),
% 0.21/0.49      inference('clc', [status(thm)], ['14', '16'])).
% 0.21/0.49  thf('24', plain,
% 0.21/0.49      (![X0 : $i, X1 : $i]:
% 0.21/0.49         ((k1_setfam_1 @ (k2_tarski @ X1 @ X0)) = (k3_xboole_0 @ X1 @ X0))),
% 0.21/0.49      inference('simplify_reflect-', [status(thm)], ['22', '23'])).
% 0.21/0.49  thf('25', plain,
% 0.21/0.49      (((k3_xboole_0 @ sk_A @ sk_B) != (k3_xboole_0 @ sk_A @ sk_B))),
% 0.21/0.49      inference('demod', [status(thm)], ['0', '24'])).
% 0.21/0.49  thf('26', plain, ($false), inference('simplify', [status(thm)], ['25'])).
% 0.21/0.49  
% 0.21/0.49  % SZS output end Refutation
% 0.21/0.49  
% 0.21/0.50  % Zipperpin 1.5 exiting
%------------------------------------------------------------------------------
