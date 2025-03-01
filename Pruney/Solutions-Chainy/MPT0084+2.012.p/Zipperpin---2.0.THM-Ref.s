%------------------------------------------------------------------------------
% File       : Zipperpin---2.0
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_portfolio.sh /export/starexec/sandbox/benchmark/theBenchmark.p /export/starexec/sandbox/tmp/tmp.97dRpZEL8g

% Computer   : n002.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 13:25:20 EST 2020

% Result     : Theorem 0.20s
% Output     : Refutation 0.20s
% Verified   : 
% Statistics : Number of formulae       :   59 (  74 expanded)
%              Number of leaves         :   17 (  30 expanded)
%              Depth                    :   11
%              Number of atoms          :  361 ( 489 expanded)
%              Number of equality atoms :   41 (  52 expanded)
%              Maximal formula depth    :   11 (   6 average)

% Comments   : 
%------------------------------------------------------------------------------
thf(r1_xboole_0_type,type,(
    r1_xboole_0: $i > $i > $o )).

thf(sk_A_type,type,(
    sk_A: $i )).

thf(k1_xboole_0_type,type,(
    k1_xboole_0: $i )).

thf(sk_B_type,type,(
    sk_B: $i )).

thf(k3_xboole_0_type,type,(
    k3_xboole_0: $i > $i > $i )).

thf(k2_xboole_0_type,type,(
    k2_xboole_0: $i > $i > $i )).

thf(k4_xboole_0_type,type,(
    k4_xboole_0: $i > $i > $i )).

thf(r1_tarski_type,type,(
    r1_tarski: $i > $i > $o )).

thf(sk_C_1_type,type,(
    sk_C_1: $i )).

thf(t77_xboole_1,conjecture,(
    ! [A: $i,B: $i,C: $i] :
      ~ ( ~ ( r1_xboole_0 @ A @ B )
        & ( r1_tarski @ A @ C )
        & ( r1_xboole_0 @ A @ ( k3_xboole_0 @ B @ C ) ) ) )).

thf(zf_stmt_0,negated_conjecture,(
    ~ ! [A: $i,B: $i,C: $i] :
        ~ ( ~ ( r1_xboole_0 @ A @ B )
          & ( r1_tarski @ A @ C )
          & ( r1_xboole_0 @ A @ ( k3_xboole_0 @ B @ C ) ) ) ),
    inference('cnf.neg',[status(esa)],[t77_xboole_1])).

thf('0',plain,(
    ~ ( r1_xboole_0 @ sk_A @ sk_B ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('1',plain,(
    r1_xboole_0 @ sk_A @ ( k3_xboole_0 @ sk_B @ sk_C_1 ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(d7_xboole_0,axiom,(
    ! [A: $i,B: $i] :
      ( ( r1_xboole_0 @ A @ B )
    <=> ( ( k3_xboole_0 @ A @ B )
        = k1_xboole_0 ) ) )).

thf('2',plain,(
    ! [X2: $i,X3: $i] :
      ( ( ( k3_xboole_0 @ X2 @ X3 )
        = k1_xboole_0 )
      | ~ ( r1_xboole_0 @ X2 @ X3 ) ) ),
    inference(cnf,[status(esa)],[d7_xboole_0])).

thf('3',plain,
    ( ( k3_xboole_0 @ sk_A @ ( k3_xboole_0 @ sk_B @ sk_C_1 ) )
    = k1_xboole_0 ),
    inference('sup-',[status(thm)],['1','2'])).

thf(t48_xboole_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( k4_xboole_0 @ A @ ( k4_xboole_0 @ A @ B ) )
      = ( k3_xboole_0 @ A @ B ) ) )).

thf('4',plain,(
    ! [X17: $i,X18: $i] :
      ( ( k4_xboole_0 @ X17 @ ( k4_xboole_0 @ X17 @ X18 ) )
      = ( k3_xboole_0 @ X17 @ X18 ) ) ),
    inference(cnf,[status(esa)],[t48_xboole_1])).

thf(l32_xboole_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( ( k4_xboole_0 @ A @ B )
        = k1_xboole_0 )
    <=> ( r1_tarski @ A @ B ) ) )).

thf('5',plain,(
    ! [X9: $i,X10: $i] :
      ( ( r1_tarski @ X9 @ X10 )
      | ( ( k4_xboole_0 @ X9 @ X10 )
       != k1_xboole_0 ) ) ),
    inference(cnf,[status(esa)],[l32_xboole_1])).

thf('6',plain,(
    ! [X0: $i,X1: $i] :
      ( ( ( k3_xboole_0 @ X1 @ X0 )
       != k1_xboole_0 )
      | ( r1_tarski @ X1 @ ( k4_xboole_0 @ X1 @ X0 ) ) ) ),
    inference('sup-',[status(thm)],['4','5'])).

thf('7',plain,
    ( ( k1_xboole_0 != k1_xboole_0 )
    | ( r1_tarski @ sk_A @ ( k4_xboole_0 @ sk_A @ ( k3_xboole_0 @ sk_B @ sk_C_1 ) ) ) ),
    inference('sup-',[status(thm)],['3','6'])).

thf('8',plain,(
    r1_tarski @ sk_A @ ( k4_xboole_0 @ sk_A @ ( k3_xboole_0 @ sk_B @ sk_C_1 ) ) ),
    inference(simplify,[status(thm)],['7'])).

thf('9',plain,(
    r1_tarski @ sk_A @ sk_C_1 ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('10',plain,(
    ! [X9: $i,X11: $i] :
      ( ( ( k4_xboole_0 @ X9 @ X11 )
        = k1_xboole_0 )
      | ~ ( r1_tarski @ X9 @ X11 ) ) ),
    inference(cnf,[status(esa)],[l32_xboole_1])).

thf('11',plain,
    ( ( k4_xboole_0 @ sk_A @ sk_C_1 )
    = k1_xboole_0 ),
    inference('sup-',[status(thm)],['9','10'])).

thf(l36_xboole_1,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( k4_xboole_0 @ A @ ( k3_xboole_0 @ B @ C ) )
      = ( k2_xboole_0 @ ( k4_xboole_0 @ A @ B ) @ ( k4_xboole_0 @ A @ C ) ) ) )).

thf('12',plain,(
    ! [X12: $i,X13: $i,X14: $i] :
      ( ( k4_xboole_0 @ X12 @ ( k3_xboole_0 @ X13 @ X14 ) )
      = ( k2_xboole_0 @ ( k4_xboole_0 @ X12 @ X13 ) @ ( k4_xboole_0 @ X12 @ X14 ) ) ) ),
    inference(cnf,[status(esa)],[l36_xboole_1])).

thf('13',plain,(
    ! [X0: $i] :
      ( ( k4_xboole_0 @ sk_A @ ( k3_xboole_0 @ X0 @ sk_C_1 ) )
      = ( k2_xboole_0 @ ( k4_xboole_0 @ sk_A @ X0 ) @ k1_xboole_0 ) ) ),
    inference('sup+',[status(thm)],['11','12'])).

thf(t3_boole,axiom,(
    ! [A: $i] :
      ( ( k4_xboole_0 @ A @ k1_xboole_0 )
      = A ) )).

thf('14',plain,(
    ! [X16: $i] :
      ( ( k4_xboole_0 @ X16 @ k1_xboole_0 )
      = X16 ) ),
    inference(cnf,[status(esa)],[t3_boole])).

thf('15',plain,(
    ! [X17: $i,X18: $i] :
      ( ( k4_xboole_0 @ X17 @ ( k4_xboole_0 @ X17 @ X18 ) )
      = ( k3_xboole_0 @ X17 @ X18 ) ) ),
    inference(cnf,[status(esa)],[t48_xboole_1])).

thf('16',plain,(
    ! [X0: $i] :
      ( ( k4_xboole_0 @ X0 @ X0 )
      = ( k3_xboole_0 @ X0 @ k1_xboole_0 ) ) ),
    inference('sup+',[status(thm)],['14','15'])).

thf(t2_boole,axiom,(
    ! [A: $i] :
      ( ( k3_xboole_0 @ A @ k1_xboole_0 )
      = k1_xboole_0 ) )).

thf('17',plain,(
    ! [X15: $i] :
      ( ( k3_xboole_0 @ X15 @ k1_xboole_0 )
      = k1_xboole_0 ) ),
    inference(cnf,[status(esa)],[t2_boole])).

thf('18',plain,(
    ! [X0: $i] :
      ( ( k4_xboole_0 @ X0 @ X0 )
      = k1_xboole_0 ) ),
    inference(demod,[status(thm)],['16','17'])).

thf('19',plain,(
    ! [X16: $i] :
      ( ( k4_xboole_0 @ X16 @ k1_xboole_0 )
      = X16 ) ),
    inference(cnf,[status(esa)],[t3_boole])).

thf('20',plain,(
    ! [X12: $i,X13: $i,X14: $i] :
      ( ( k4_xboole_0 @ X12 @ ( k3_xboole_0 @ X13 @ X14 ) )
      = ( k2_xboole_0 @ ( k4_xboole_0 @ X12 @ X13 ) @ ( k4_xboole_0 @ X12 @ X14 ) ) ) ),
    inference(cnf,[status(esa)],[l36_xboole_1])).

thf('21',plain,(
    ! [X0: $i,X1: $i] :
      ( ( k4_xboole_0 @ X0 @ ( k3_xboole_0 @ k1_xboole_0 @ X1 ) )
      = ( k2_xboole_0 @ X0 @ ( k4_xboole_0 @ X0 @ X1 ) ) ) ),
    inference('sup+',[status(thm)],['19','20'])).

thf(commutativity_k3_xboole_0,axiom,(
    ! [A: $i,B: $i] :
      ( ( k3_xboole_0 @ A @ B )
      = ( k3_xboole_0 @ B @ A ) ) )).

thf('22',plain,(
    ! [X0: $i,X1: $i] :
      ( ( k3_xboole_0 @ X1 @ X0 )
      = ( k3_xboole_0 @ X0 @ X1 ) ) ),
    inference(cnf,[status(esa)],[commutativity_k3_xboole_0])).

thf('23',plain,(
    ! [X15: $i] :
      ( ( k3_xboole_0 @ X15 @ k1_xboole_0 )
      = k1_xboole_0 ) ),
    inference(cnf,[status(esa)],[t2_boole])).

thf('24',plain,(
    ! [X0: $i] :
      ( ( k3_xboole_0 @ k1_xboole_0 @ X0 )
      = k1_xboole_0 ) ),
    inference('sup+',[status(thm)],['22','23'])).

thf('25',plain,(
    ! [X16: $i] :
      ( ( k4_xboole_0 @ X16 @ k1_xboole_0 )
      = X16 ) ),
    inference(cnf,[status(esa)],[t3_boole])).

thf('26',plain,(
    ! [X0: $i,X1: $i] :
      ( X0
      = ( k2_xboole_0 @ X0 @ ( k4_xboole_0 @ X0 @ X1 ) ) ) ),
    inference(demod,[status(thm)],['21','24','25'])).

thf('27',plain,(
    ! [X0: $i] :
      ( X0
      = ( k2_xboole_0 @ X0 @ k1_xboole_0 ) ) ),
    inference('sup+',[status(thm)],['18','26'])).

thf('28',plain,(
    ! [X0: $i] :
      ( ( k4_xboole_0 @ sk_A @ ( k3_xboole_0 @ X0 @ sk_C_1 ) )
      = ( k4_xboole_0 @ sk_A @ X0 ) ) ),
    inference(demod,[status(thm)],['13','27'])).

thf('29',plain,(
    r1_tarski @ sk_A @ ( k4_xboole_0 @ sk_A @ sk_B ) ),
    inference(demod,[status(thm)],['8','28'])).

thf('30',plain,(
    ! [X9: $i,X11: $i] :
      ( ( ( k4_xboole_0 @ X9 @ X11 )
        = k1_xboole_0 )
      | ~ ( r1_tarski @ X9 @ X11 ) ) ),
    inference(cnf,[status(esa)],[l32_xboole_1])).

thf('31',plain,
    ( ( k4_xboole_0 @ sk_A @ ( k4_xboole_0 @ sk_A @ sk_B ) )
    = k1_xboole_0 ),
    inference('sup-',[status(thm)],['29','30'])).

thf('32',plain,(
    ! [X17: $i,X18: $i] :
      ( ( k4_xboole_0 @ X17 @ ( k4_xboole_0 @ X17 @ X18 ) )
      = ( k3_xboole_0 @ X17 @ X18 ) ) ),
    inference(cnf,[status(esa)],[t48_xboole_1])).

thf('33',plain,(
    ! [X0: $i,X1: $i] :
      ( ( k3_xboole_0 @ X1 @ X0 )
      = ( k3_xboole_0 @ X0 @ X1 ) ) ),
    inference(cnf,[status(esa)],[commutativity_k3_xboole_0])).

thf('34',plain,
    ( ( k3_xboole_0 @ sk_B @ sk_A )
    = k1_xboole_0 ),
    inference(demod,[status(thm)],['31','32','33'])).

thf('35',plain,(
    ! [X0: $i,X1: $i] :
      ( ( k3_xboole_0 @ X1 @ X0 )
      = ( k3_xboole_0 @ X0 @ X1 ) ) ),
    inference(cnf,[status(esa)],[commutativity_k3_xboole_0])).

thf('36',plain,(
    ! [X2: $i,X4: $i] :
      ( ( r1_xboole_0 @ X2 @ X4 )
      | ( ( k3_xboole_0 @ X2 @ X4 )
       != k1_xboole_0 ) ) ),
    inference(cnf,[status(esa)],[d7_xboole_0])).

thf('37',plain,(
    ! [X0: $i,X1: $i] :
      ( ( ( k3_xboole_0 @ X1 @ X0 )
       != k1_xboole_0 )
      | ( r1_xboole_0 @ X0 @ X1 ) ) ),
    inference('sup-',[status(thm)],['35','36'])).

thf('38',plain,
    ( ( k1_xboole_0 != k1_xboole_0 )
    | ( r1_xboole_0 @ sk_A @ sk_B ) ),
    inference('sup-',[status(thm)],['34','37'])).

thf('39',plain,(
    r1_xboole_0 @ sk_A @ sk_B ),
    inference(simplify,[status(thm)],['38'])).

thf('40',plain,(
    $false ),
    inference(demod,[status(thm)],['0','39'])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.00/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.12/0.13  % Command    : run_portfolio.sh /export/starexec/sandbox/benchmark/theBenchmark.p /export/starexec/sandbox/tmp/tmp.97dRpZEL8g
% 0.13/0.34  % Computer   : n002.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % DateTime   : Tue Dec  1 10:43:52 EST 2020
% 0.13/0.35  % CPUTime    : 
% 0.13/0.35  % Running portfolio for 600 s
% 0.13/0.35  % File         : /export/starexec/sandbox/benchmark/theBenchmark.p
% 0.13/0.35  % Number of cores: 8
% 0.13/0.35  % Python version: Python 3.6.8
% 0.13/0.35  % Running in FO mode
% 0.20/0.55  % Running /export/starexec/sandbox/solver/bin/fo/fo7.sh for 78
% 0.20/0.55  % Solved by: fo/fo7.sh
% 0.20/0.55  To remain in the chosen logic fragment, unification with booleans has been disabled.
% 0.20/0.55  % done 250 iterations in 0.094s
% 0.20/0.55  % SZS status Theorem for '/export/starexec/sandbox/benchmark/theBenchmark.p'
% 0.20/0.55  % SZS output start Refutation
% 0.20/0.55  thf(r1_xboole_0_type, type, r1_xboole_0: $i > $i > $o).
% 0.20/0.55  thf(sk_A_type, type, sk_A: $i).
% 0.20/0.55  thf(k1_xboole_0_type, type, k1_xboole_0: $i).
% 0.20/0.55  thf(sk_B_type, type, sk_B: $i).
% 0.20/0.55  thf(k3_xboole_0_type, type, k3_xboole_0: $i > $i > $i).
% 0.20/0.55  thf(k2_xboole_0_type, type, k2_xboole_0: $i > $i > $i).
% 0.20/0.55  thf(k4_xboole_0_type, type, k4_xboole_0: $i > $i > $i).
% 0.20/0.55  thf(r1_tarski_type, type, r1_tarski: $i > $i > $o).
% 0.20/0.55  thf(sk_C_1_type, type, sk_C_1: $i).
% 0.20/0.55  thf(t77_xboole_1, conjecture,
% 0.20/0.55    (![A:$i,B:$i,C:$i]:
% 0.20/0.55     ( ~( ( ~( r1_xboole_0 @ A @ B ) ) & ( r1_tarski @ A @ C ) & 
% 0.20/0.55          ( r1_xboole_0 @ A @ ( k3_xboole_0 @ B @ C ) ) ) ))).
% 0.20/0.55  thf(zf_stmt_0, negated_conjecture,
% 0.20/0.55    (~( ![A:$i,B:$i,C:$i]:
% 0.20/0.55        ( ~( ( ~( r1_xboole_0 @ A @ B ) ) & ( r1_tarski @ A @ C ) & 
% 0.20/0.55             ( r1_xboole_0 @ A @ ( k3_xboole_0 @ B @ C ) ) ) ) )),
% 0.20/0.55    inference('cnf.neg', [status(esa)], [t77_xboole_1])).
% 0.20/0.55  thf('0', plain, (~ (r1_xboole_0 @ sk_A @ sk_B)),
% 0.20/0.55      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.55  thf('1', plain, ((r1_xboole_0 @ sk_A @ (k3_xboole_0 @ sk_B @ sk_C_1))),
% 0.20/0.55      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.55  thf(d7_xboole_0, axiom,
% 0.20/0.55    (![A:$i,B:$i]:
% 0.20/0.55     ( ( r1_xboole_0 @ A @ B ) <=>
% 0.20/0.55       ( ( k3_xboole_0 @ A @ B ) = ( k1_xboole_0 ) ) ))).
% 0.20/0.55  thf('2', plain,
% 0.20/0.55      (![X2 : $i, X3 : $i]:
% 0.20/0.55         (((k3_xboole_0 @ X2 @ X3) = (k1_xboole_0)) | ~ (r1_xboole_0 @ X2 @ X3))),
% 0.20/0.55      inference('cnf', [status(esa)], [d7_xboole_0])).
% 0.20/0.55  thf('3', plain,
% 0.20/0.55      (((k3_xboole_0 @ sk_A @ (k3_xboole_0 @ sk_B @ sk_C_1)) = (k1_xboole_0))),
% 0.20/0.55      inference('sup-', [status(thm)], ['1', '2'])).
% 0.20/0.55  thf(t48_xboole_1, axiom,
% 0.20/0.55    (![A:$i,B:$i]:
% 0.20/0.55     ( ( k4_xboole_0 @ A @ ( k4_xboole_0 @ A @ B ) ) = ( k3_xboole_0 @ A @ B ) ))).
% 0.20/0.55  thf('4', plain,
% 0.20/0.55      (![X17 : $i, X18 : $i]:
% 0.20/0.55         ((k4_xboole_0 @ X17 @ (k4_xboole_0 @ X17 @ X18))
% 0.20/0.55           = (k3_xboole_0 @ X17 @ X18))),
% 0.20/0.55      inference('cnf', [status(esa)], [t48_xboole_1])).
% 0.20/0.55  thf(l32_xboole_1, axiom,
% 0.20/0.55    (![A:$i,B:$i]:
% 0.20/0.55     ( ( ( k4_xboole_0 @ A @ B ) = ( k1_xboole_0 ) ) <=> ( r1_tarski @ A @ B ) ))).
% 0.20/0.55  thf('5', plain,
% 0.20/0.55      (![X9 : $i, X10 : $i]:
% 0.20/0.55         ((r1_tarski @ X9 @ X10) | ((k4_xboole_0 @ X9 @ X10) != (k1_xboole_0)))),
% 0.20/0.55      inference('cnf', [status(esa)], [l32_xboole_1])).
% 0.20/0.55  thf('6', plain,
% 0.20/0.55      (![X0 : $i, X1 : $i]:
% 0.20/0.55         (((k3_xboole_0 @ X1 @ X0) != (k1_xboole_0))
% 0.20/0.55          | (r1_tarski @ X1 @ (k4_xboole_0 @ X1 @ X0)))),
% 0.20/0.55      inference('sup-', [status(thm)], ['4', '5'])).
% 0.20/0.55  thf('7', plain,
% 0.20/0.55      ((((k1_xboole_0) != (k1_xboole_0))
% 0.20/0.55        | (r1_tarski @ sk_A @ 
% 0.20/0.55           (k4_xboole_0 @ sk_A @ (k3_xboole_0 @ sk_B @ sk_C_1))))),
% 0.20/0.55      inference('sup-', [status(thm)], ['3', '6'])).
% 0.20/0.55  thf('8', plain,
% 0.20/0.55      ((r1_tarski @ sk_A @ (k4_xboole_0 @ sk_A @ (k3_xboole_0 @ sk_B @ sk_C_1)))),
% 0.20/0.55      inference('simplify', [status(thm)], ['7'])).
% 0.20/0.55  thf('9', plain, ((r1_tarski @ sk_A @ sk_C_1)),
% 0.20/0.55      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.55  thf('10', plain,
% 0.20/0.55      (![X9 : $i, X11 : $i]:
% 0.20/0.55         (((k4_xboole_0 @ X9 @ X11) = (k1_xboole_0)) | ~ (r1_tarski @ X9 @ X11))),
% 0.20/0.55      inference('cnf', [status(esa)], [l32_xboole_1])).
% 0.20/0.55  thf('11', plain, (((k4_xboole_0 @ sk_A @ sk_C_1) = (k1_xboole_0))),
% 0.20/0.55      inference('sup-', [status(thm)], ['9', '10'])).
% 0.20/0.55  thf(l36_xboole_1, axiom,
% 0.20/0.55    (![A:$i,B:$i,C:$i]:
% 0.20/0.55     ( ( k4_xboole_0 @ A @ ( k3_xboole_0 @ B @ C ) ) =
% 0.20/0.55       ( k2_xboole_0 @ ( k4_xboole_0 @ A @ B ) @ ( k4_xboole_0 @ A @ C ) ) ))).
% 0.20/0.55  thf('12', plain,
% 0.20/0.55      (![X12 : $i, X13 : $i, X14 : $i]:
% 0.20/0.55         ((k4_xboole_0 @ X12 @ (k3_xboole_0 @ X13 @ X14))
% 0.20/0.55           = (k2_xboole_0 @ (k4_xboole_0 @ X12 @ X13) @ 
% 0.20/0.55              (k4_xboole_0 @ X12 @ X14)))),
% 0.20/0.55      inference('cnf', [status(esa)], [l36_xboole_1])).
% 0.20/0.55  thf('13', plain,
% 0.20/0.55      (![X0 : $i]:
% 0.20/0.55         ((k4_xboole_0 @ sk_A @ (k3_xboole_0 @ X0 @ sk_C_1))
% 0.20/0.55           = (k2_xboole_0 @ (k4_xboole_0 @ sk_A @ X0) @ k1_xboole_0))),
% 0.20/0.55      inference('sup+', [status(thm)], ['11', '12'])).
% 0.20/0.55  thf(t3_boole, axiom,
% 0.20/0.55    (![A:$i]: ( ( k4_xboole_0 @ A @ k1_xboole_0 ) = ( A ) ))).
% 0.20/0.55  thf('14', plain, (![X16 : $i]: ((k4_xboole_0 @ X16 @ k1_xboole_0) = (X16))),
% 0.20/0.55      inference('cnf', [status(esa)], [t3_boole])).
% 0.20/0.55  thf('15', plain,
% 0.20/0.55      (![X17 : $i, X18 : $i]:
% 0.20/0.55         ((k4_xboole_0 @ X17 @ (k4_xboole_0 @ X17 @ X18))
% 0.20/0.55           = (k3_xboole_0 @ X17 @ X18))),
% 0.20/0.55      inference('cnf', [status(esa)], [t48_xboole_1])).
% 0.20/0.55  thf('16', plain,
% 0.20/0.55      (![X0 : $i]: ((k4_xboole_0 @ X0 @ X0) = (k3_xboole_0 @ X0 @ k1_xboole_0))),
% 0.20/0.55      inference('sup+', [status(thm)], ['14', '15'])).
% 0.20/0.55  thf(t2_boole, axiom,
% 0.20/0.55    (![A:$i]: ( ( k3_xboole_0 @ A @ k1_xboole_0 ) = ( k1_xboole_0 ) ))).
% 0.20/0.55  thf('17', plain,
% 0.20/0.55      (![X15 : $i]: ((k3_xboole_0 @ X15 @ k1_xboole_0) = (k1_xboole_0))),
% 0.20/0.55      inference('cnf', [status(esa)], [t2_boole])).
% 0.20/0.55  thf('18', plain, (![X0 : $i]: ((k4_xboole_0 @ X0 @ X0) = (k1_xboole_0))),
% 0.20/0.55      inference('demod', [status(thm)], ['16', '17'])).
% 0.20/0.55  thf('19', plain, (![X16 : $i]: ((k4_xboole_0 @ X16 @ k1_xboole_0) = (X16))),
% 0.20/0.55      inference('cnf', [status(esa)], [t3_boole])).
% 0.20/0.55  thf('20', plain,
% 0.20/0.55      (![X12 : $i, X13 : $i, X14 : $i]:
% 0.20/0.55         ((k4_xboole_0 @ X12 @ (k3_xboole_0 @ X13 @ X14))
% 0.20/0.55           = (k2_xboole_0 @ (k4_xboole_0 @ X12 @ X13) @ 
% 0.20/0.55              (k4_xboole_0 @ X12 @ X14)))),
% 0.20/0.55      inference('cnf', [status(esa)], [l36_xboole_1])).
% 0.20/0.55  thf('21', plain,
% 0.20/0.55      (![X0 : $i, X1 : $i]:
% 0.20/0.55         ((k4_xboole_0 @ X0 @ (k3_xboole_0 @ k1_xboole_0 @ X1))
% 0.20/0.55           = (k2_xboole_0 @ X0 @ (k4_xboole_0 @ X0 @ X1)))),
% 0.20/0.55      inference('sup+', [status(thm)], ['19', '20'])).
% 0.20/0.55  thf(commutativity_k3_xboole_0, axiom,
% 0.20/0.55    (![A:$i,B:$i]: ( ( k3_xboole_0 @ A @ B ) = ( k3_xboole_0 @ B @ A ) ))).
% 0.20/0.55  thf('22', plain,
% 0.20/0.55      (![X0 : $i, X1 : $i]: ((k3_xboole_0 @ X1 @ X0) = (k3_xboole_0 @ X0 @ X1))),
% 0.20/0.55      inference('cnf', [status(esa)], [commutativity_k3_xboole_0])).
% 0.20/0.55  thf('23', plain,
% 0.20/0.55      (![X15 : $i]: ((k3_xboole_0 @ X15 @ k1_xboole_0) = (k1_xboole_0))),
% 0.20/0.55      inference('cnf', [status(esa)], [t2_boole])).
% 0.20/0.55  thf('24', plain,
% 0.20/0.55      (![X0 : $i]: ((k3_xboole_0 @ k1_xboole_0 @ X0) = (k1_xboole_0))),
% 0.20/0.55      inference('sup+', [status(thm)], ['22', '23'])).
% 0.20/0.55  thf('25', plain, (![X16 : $i]: ((k4_xboole_0 @ X16 @ k1_xboole_0) = (X16))),
% 0.20/0.55      inference('cnf', [status(esa)], [t3_boole])).
% 0.20/0.55  thf('26', plain,
% 0.20/0.55      (![X0 : $i, X1 : $i]:
% 0.20/0.55         ((X0) = (k2_xboole_0 @ X0 @ (k4_xboole_0 @ X0 @ X1)))),
% 0.20/0.55      inference('demod', [status(thm)], ['21', '24', '25'])).
% 0.20/0.55  thf('27', plain, (![X0 : $i]: ((X0) = (k2_xboole_0 @ X0 @ k1_xboole_0))),
% 0.20/0.55      inference('sup+', [status(thm)], ['18', '26'])).
% 0.20/0.55  thf('28', plain,
% 0.20/0.55      (![X0 : $i]:
% 0.20/0.55         ((k4_xboole_0 @ sk_A @ (k3_xboole_0 @ X0 @ sk_C_1))
% 0.20/0.55           = (k4_xboole_0 @ sk_A @ X0))),
% 0.20/0.55      inference('demod', [status(thm)], ['13', '27'])).
% 0.20/0.55  thf('29', plain, ((r1_tarski @ sk_A @ (k4_xboole_0 @ sk_A @ sk_B))),
% 0.20/0.55      inference('demod', [status(thm)], ['8', '28'])).
% 0.20/0.55  thf('30', plain,
% 0.20/0.55      (![X9 : $i, X11 : $i]:
% 0.20/0.55         (((k4_xboole_0 @ X9 @ X11) = (k1_xboole_0)) | ~ (r1_tarski @ X9 @ X11))),
% 0.20/0.55      inference('cnf', [status(esa)], [l32_xboole_1])).
% 0.20/0.55  thf('31', plain,
% 0.20/0.55      (((k4_xboole_0 @ sk_A @ (k4_xboole_0 @ sk_A @ sk_B)) = (k1_xboole_0))),
% 0.20/0.55      inference('sup-', [status(thm)], ['29', '30'])).
% 0.20/0.55  thf('32', plain,
% 0.20/0.55      (![X17 : $i, X18 : $i]:
% 0.20/0.55         ((k4_xboole_0 @ X17 @ (k4_xboole_0 @ X17 @ X18))
% 0.20/0.55           = (k3_xboole_0 @ X17 @ X18))),
% 0.20/0.55      inference('cnf', [status(esa)], [t48_xboole_1])).
% 0.20/0.55  thf('33', plain,
% 0.20/0.55      (![X0 : $i, X1 : $i]: ((k3_xboole_0 @ X1 @ X0) = (k3_xboole_0 @ X0 @ X1))),
% 0.20/0.55      inference('cnf', [status(esa)], [commutativity_k3_xboole_0])).
% 0.20/0.55  thf('34', plain, (((k3_xboole_0 @ sk_B @ sk_A) = (k1_xboole_0))),
% 0.20/0.55      inference('demod', [status(thm)], ['31', '32', '33'])).
% 0.20/0.55  thf('35', plain,
% 0.20/0.55      (![X0 : $i, X1 : $i]: ((k3_xboole_0 @ X1 @ X0) = (k3_xboole_0 @ X0 @ X1))),
% 0.20/0.55      inference('cnf', [status(esa)], [commutativity_k3_xboole_0])).
% 0.20/0.55  thf('36', plain,
% 0.20/0.55      (![X2 : $i, X4 : $i]:
% 0.20/0.55         ((r1_xboole_0 @ X2 @ X4) | ((k3_xboole_0 @ X2 @ X4) != (k1_xboole_0)))),
% 0.20/0.55      inference('cnf', [status(esa)], [d7_xboole_0])).
% 0.20/0.55  thf('37', plain,
% 0.20/0.55      (![X0 : $i, X1 : $i]:
% 0.20/0.55         (((k3_xboole_0 @ X1 @ X0) != (k1_xboole_0)) | (r1_xboole_0 @ X0 @ X1))),
% 0.20/0.55      inference('sup-', [status(thm)], ['35', '36'])).
% 0.20/0.55  thf('38', plain,
% 0.20/0.55      ((((k1_xboole_0) != (k1_xboole_0)) | (r1_xboole_0 @ sk_A @ sk_B))),
% 0.20/0.55      inference('sup-', [status(thm)], ['34', '37'])).
% 0.20/0.55  thf('39', plain, ((r1_xboole_0 @ sk_A @ sk_B)),
% 0.20/0.55      inference('simplify', [status(thm)], ['38'])).
% 0.20/0.55  thf('40', plain, ($false), inference('demod', [status(thm)], ['0', '39'])).
% 0.20/0.55  
% 0.20/0.55  % SZS output end Refutation
% 0.20/0.55  
% 0.20/0.56  % Zipperpin 1.5 exiting
%------------------------------------------------------------------------------
