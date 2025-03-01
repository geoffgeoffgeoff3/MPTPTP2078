%------------------------------------------------------------------------------
% File       : Zipperpin---2.0
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_portfolio.sh /export/starexec/sandbox/benchmark/theBenchmark.p /export/starexec/sandbox/tmp/tmp.m7cfFYvOfd

% Computer   : n002.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 13:25:47 EST 2020

% Result     : Theorem 0.84s
% Output     : Refutation 0.84s
% Verified   : 
% Statistics : Number of formulae       :   55 (  67 expanded)
%              Number of leaves         :   16 (  26 expanded)
%              Depth                    :   15
%              Number of atoms          :  325 ( 428 expanded)
%              Number of equality atoms :   15 (  18 expanded)
%              Maximal formula depth    :   10 (   6 average)

% Comments   : 
%------------------------------------------------------------------------------
thf(k4_xboole_0_type,type,(
    k4_xboole_0: $i > $i > $i )).

thf(sk_A_type,type,(
    sk_A: $i )).

thf(k1_xboole_0_type,type,(
    k1_xboole_0: $i )).

thf(r1_tarski_type,type,(
    r1_tarski: $i > $i > $o )).

thf(sk_C_type,type,(
    sk_C: $i )).

thf(r1_xboole_0_type,type,(
    r1_xboole_0: $i > $i > $o )).

thf(sk_B_type,type,(
    sk_B: $i )).

thf(t86_xboole_1,conjecture,(
    ! [A: $i,B: $i,C: $i] :
      ( ( ( r1_tarski @ A @ B )
        & ( r1_xboole_0 @ A @ C ) )
     => ( r1_tarski @ A @ ( k4_xboole_0 @ B @ C ) ) ) )).

thf(zf_stmt_0,negated_conjecture,(
    ~ ! [A: $i,B: $i,C: $i] :
        ( ( ( r1_tarski @ A @ B )
          & ( r1_xboole_0 @ A @ C ) )
       => ( r1_tarski @ A @ ( k4_xboole_0 @ B @ C ) ) ) ),
    inference('cnf.neg',[status(esa)],[t86_xboole_1])).

thf('0',plain,(
    ~ ( r1_tarski @ sk_A @ ( k4_xboole_0 @ sk_B @ sk_C ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('1',plain,(
    r1_xboole_0 @ sk_A @ sk_C ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(t36_xboole_1,axiom,(
    ! [A: $i,B: $i] :
      ( r1_tarski @ ( k4_xboole_0 @ A @ B ) @ A ) )).

thf('2',plain,(
    ! [X5: $i,X6: $i] :
      ( r1_tarski @ ( k4_xboole_0 @ X5 @ X6 ) @ X5 ) ),
    inference(cnf,[status(esa)],[t36_xboole_1])).

thf(t63_xboole_1,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( ( r1_tarski @ A @ B )
        & ( r1_xboole_0 @ B @ C ) )
     => ( r1_xboole_0 @ A @ C ) ) )).

thf('3',plain,(
    ! [X11: $i,X12: $i,X13: $i] :
      ( ~ ( r1_tarski @ X11 @ X12 )
      | ~ ( r1_xboole_0 @ X12 @ X13 )
      | ( r1_xboole_0 @ X11 @ X13 ) ) ),
    inference(cnf,[status(esa)],[t63_xboole_1])).

thf('4',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( ( r1_xboole_0 @ ( k4_xboole_0 @ X0 @ X1 ) @ X2 )
      | ~ ( r1_xboole_0 @ X0 @ X2 ) ) ),
    inference('sup-',[status(thm)],['2','3'])).

thf('5',plain,(
    ! [X0: $i] :
      ( r1_xboole_0 @ ( k4_xboole_0 @ sk_A @ X0 ) @ sk_C ) ),
    inference('sup-',[status(thm)],['1','4'])).

thf(t83_xboole_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( r1_xboole_0 @ A @ B )
    <=> ( ( k4_xboole_0 @ A @ B )
        = A ) ) )).

thf('6',plain,(
    ! [X18: $i,X19: $i] :
      ( ( ( k4_xboole_0 @ X18 @ X19 )
        = X18 )
      | ~ ( r1_xboole_0 @ X18 @ X19 ) ) ),
    inference(cnf,[status(esa)],[t83_xboole_1])).

thf('7',plain,(
    ! [X0: $i] :
      ( ( k4_xboole_0 @ ( k4_xboole_0 @ sk_A @ X0 ) @ sk_C )
      = ( k4_xboole_0 @ sk_A @ X0 ) ) ),
    inference('sup-',[status(thm)],['5','6'])).

thf(t3_boole,axiom,(
    ! [A: $i] :
      ( ( k4_xboole_0 @ A @ k1_xboole_0 )
      = A ) )).

thf('8',plain,(
    ! [X7: $i] :
      ( ( k4_xboole_0 @ X7 @ k1_xboole_0 )
      = X7 ) ),
    inference(cnf,[status(esa)],[t3_boole])).

thf('9',plain,(
    ! [X5: $i,X6: $i] :
      ( r1_tarski @ ( k4_xboole_0 @ X5 @ X6 ) @ X5 ) ),
    inference(cnf,[status(esa)],[t36_xboole_1])).

thf('10',plain,(
    ! [X0: $i] :
      ( r1_tarski @ X0 @ X0 ) ),
    inference('sup+',[status(thm)],['8','9'])).

thf(l32_xboole_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( ( k4_xboole_0 @ A @ B )
        = k1_xboole_0 )
    <=> ( r1_tarski @ A @ B ) ) )).

thf('11',plain,(
    ! [X2: $i,X4: $i] :
      ( ( ( k4_xboole_0 @ X2 @ X4 )
        = k1_xboole_0 )
      | ~ ( r1_tarski @ X2 @ X4 ) ) ),
    inference(cnf,[status(esa)],[l32_xboole_1])).

thf('12',plain,(
    ! [X0: $i] :
      ( ( k4_xboole_0 @ X0 @ X0 )
      = k1_xboole_0 ) ),
    inference('sup-',[status(thm)],['10','11'])).

thf(t81_xboole_1,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( r1_xboole_0 @ A @ ( k4_xboole_0 @ B @ C ) )
     => ( r1_xboole_0 @ B @ ( k4_xboole_0 @ A @ C ) ) ) )).

thf('13',plain,(
    ! [X15: $i,X16: $i,X17: $i] :
      ( ( r1_xboole_0 @ X15 @ ( k4_xboole_0 @ X16 @ X17 ) )
      | ~ ( r1_xboole_0 @ X16 @ ( k4_xboole_0 @ X15 @ X17 ) ) ) ),
    inference(cnf,[status(esa)],[t81_xboole_1])).

thf('14',plain,(
    ! [X0: $i,X1: $i] :
      ( ~ ( r1_xboole_0 @ X1 @ k1_xboole_0 )
      | ( r1_xboole_0 @ X0 @ ( k4_xboole_0 @ X1 @ X0 ) ) ) ),
    inference('sup-',[status(thm)],['12','13'])).

thf(t65_xboole_1,axiom,(
    ! [A: $i] :
      ( r1_xboole_0 @ A @ k1_xboole_0 ) )).

thf('15',plain,(
    ! [X14: $i] :
      ( r1_xboole_0 @ X14 @ k1_xboole_0 ) ),
    inference(cnf,[status(esa)],[t65_xboole_1])).

thf('16',plain,(
    ! [X0: $i,X1: $i] :
      ( r1_xboole_0 @ X0 @ ( k4_xboole_0 @ X1 @ X0 ) ) ),
    inference(demod,[status(thm)],['14','15'])).

thf(symmetry_r1_xboole_0,axiom,(
    ! [A: $i,B: $i] :
      ( ( r1_xboole_0 @ A @ B )
     => ( r1_xboole_0 @ B @ A ) ) )).

thf('17',plain,(
    ! [X0: $i,X1: $i] :
      ( ( r1_xboole_0 @ X0 @ X1 )
      | ~ ( r1_xboole_0 @ X1 @ X0 ) ) ),
    inference(cnf,[status(esa)],[symmetry_r1_xboole_0])).

thf('18',plain,(
    ! [X0: $i,X1: $i] :
      ( r1_xboole_0 @ ( k4_xboole_0 @ X1 @ X0 ) @ X0 ) ),
    inference('sup-',[status(thm)],['16','17'])).

thf('19',plain,(
    ! [X15: $i,X16: $i,X17: $i] :
      ( ( r1_xboole_0 @ X15 @ ( k4_xboole_0 @ X16 @ X17 ) )
      | ~ ( r1_xboole_0 @ X16 @ ( k4_xboole_0 @ X15 @ X17 ) ) ) ),
    inference(cnf,[status(esa)],[t81_xboole_1])).

thf('20',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( r1_xboole_0 @ X1 @ ( k4_xboole_0 @ ( k4_xboole_0 @ X2 @ ( k4_xboole_0 @ X1 @ X0 ) ) @ X0 ) ) ),
    inference('sup-',[status(thm)],['18','19'])).

thf('21',plain,(
    ! [X0: $i] :
      ( r1_xboole_0 @ X0 @ ( k4_xboole_0 @ sk_A @ ( k4_xboole_0 @ X0 @ sk_C ) ) ) ),
    inference('sup+',[status(thm)],['7','20'])).

thf('22',plain,(
    r1_tarski @ sk_A @ sk_B ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('23',plain,(
    ! [X11: $i,X12: $i,X13: $i] :
      ( ~ ( r1_tarski @ X11 @ X12 )
      | ~ ( r1_xboole_0 @ X12 @ X13 )
      | ( r1_xboole_0 @ X11 @ X13 ) ) ),
    inference(cnf,[status(esa)],[t63_xboole_1])).

thf('24',plain,(
    ! [X0: $i] :
      ( ( r1_xboole_0 @ sk_A @ X0 )
      | ~ ( r1_xboole_0 @ sk_B @ X0 ) ) ),
    inference('sup-',[status(thm)],['22','23'])).

thf('25',plain,(
    r1_xboole_0 @ sk_A @ ( k4_xboole_0 @ sk_A @ ( k4_xboole_0 @ sk_B @ sk_C ) ) ),
    inference('sup-',[status(thm)],['21','24'])).

thf('26',plain,(
    ! [X0: $i,X1: $i] :
      ( ( r1_xboole_0 @ X0 @ X1 )
      | ~ ( r1_xboole_0 @ X1 @ X0 ) ) ),
    inference(cnf,[status(esa)],[symmetry_r1_xboole_0])).

thf('27',plain,(
    r1_xboole_0 @ ( k4_xboole_0 @ sk_A @ ( k4_xboole_0 @ sk_B @ sk_C ) ) @ sk_A ),
    inference('sup-',[status(thm)],['25','26'])).

thf('28',plain,(
    ! [X18: $i,X19: $i] :
      ( ( ( k4_xboole_0 @ X18 @ X19 )
        = X18 )
      | ~ ( r1_xboole_0 @ X18 @ X19 ) ) ),
    inference(cnf,[status(esa)],[t83_xboole_1])).

thf('29',plain,
    ( ( k4_xboole_0 @ ( k4_xboole_0 @ sk_A @ ( k4_xboole_0 @ sk_B @ sk_C ) ) @ sk_A )
    = ( k4_xboole_0 @ sk_A @ ( k4_xboole_0 @ sk_B @ sk_C ) ) ),
    inference('sup-',[status(thm)],['27','28'])).

thf('30',plain,(
    ! [X5: $i,X6: $i] :
      ( r1_tarski @ ( k4_xboole_0 @ X5 @ X6 ) @ X5 ) ),
    inference(cnf,[status(esa)],[t36_xboole_1])).

thf('31',plain,(
    ! [X2: $i,X4: $i] :
      ( ( ( k4_xboole_0 @ X2 @ X4 )
        = k1_xboole_0 )
      | ~ ( r1_tarski @ X2 @ X4 ) ) ),
    inference(cnf,[status(esa)],[l32_xboole_1])).

thf('32',plain,(
    ! [X0: $i,X1: $i] :
      ( ( k4_xboole_0 @ ( k4_xboole_0 @ X0 @ X1 ) @ X0 )
      = k1_xboole_0 ) ),
    inference('sup-',[status(thm)],['30','31'])).

thf('33',plain,
    ( k1_xboole_0
    = ( k4_xboole_0 @ sk_A @ ( k4_xboole_0 @ sk_B @ sk_C ) ) ),
    inference(demod,[status(thm)],['29','32'])).

thf('34',plain,(
    ! [X2: $i,X3: $i] :
      ( ( r1_tarski @ X2 @ X3 )
      | ( ( k4_xboole_0 @ X2 @ X3 )
       != k1_xboole_0 ) ) ),
    inference(cnf,[status(esa)],[l32_xboole_1])).

thf('35',plain,
    ( ( k1_xboole_0 != k1_xboole_0 )
    | ( r1_tarski @ sk_A @ ( k4_xboole_0 @ sk_B @ sk_C ) ) ),
    inference('sup-',[status(thm)],['33','34'])).

thf('36',plain,(
    r1_tarski @ sk_A @ ( k4_xboole_0 @ sk_B @ sk_C ) ),
    inference(simplify,[status(thm)],['35'])).

thf('37',plain,(
    $false ),
    inference(demod,[status(thm)],['0','36'])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.12/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.12/0.13  % Command    : run_portfolio.sh /export/starexec/sandbox/benchmark/theBenchmark.p /export/starexec/sandbox/tmp/tmp.m7cfFYvOfd
% 0.14/0.34  % Computer   : n002.cluster.edu
% 0.14/0.34  % Model      : x86_64 x86_64
% 0.14/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.14/0.34  % Memory     : 8042.1875MB
% 0.14/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.14/0.34  % CPULimit   : 60
% 0.14/0.34  % DateTime   : Tue Dec  1 13:50:07 EST 2020
% 0.14/0.34  % CPUTime    : 
% 0.14/0.34  % Running portfolio for 600 s
% 0.14/0.34  % File         : /export/starexec/sandbox/benchmark/theBenchmark.p
% 0.14/0.35  % Number of cores: 8
% 0.14/0.35  % Python version: Python 3.6.8
% 0.14/0.35  % Running in FO mode
% 0.84/1.06  % Running /export/starexec/sandbox/solver/bin/fo/fo7.sh for 78
% 0.84/1.06  % Solved by: fo/fo7.sh
% 0.84/1.06  To remain in the chosen logic fragment, unification with booleans has been disabled.
% 0.84/1.06  % done 1304 iterations in 0.603s
% 0.84/1.06  % SZS status Theorem for '/export/starexec/sandbox/benchmark/theBenchmark.p'
% 0.84/1.06  % SZS output start Refutation
% 0.84/1.06  thf(k4_xboole_0_type, type, k4_xboole_0: $i > $i > $i).
% 0.84/1.06  thf(sk_A_type, type, sk_A: $i).
% 0.84/1.06  thf(k1_xboole_0_type, type, k1_xboole_0: $i).
% 0.84/1.06  thf(r1_tarski_type, type, r1_tarski: $i > $i > $o).
% 0.84/1.06  thf(sk_C_type, type, sk_C: $i).
% 0.84/1.06  thf(r1_xboole_0_type, type, r1_xboole_0: $i > $i > $o).
% 0.84/1.06  thf(sk_B_type, type, sk_B: $i).
% 0.84/1.06  thf(t86_xboole_1, conjecture,
% 0.84/1.06    (![A:$i,B:$i,C:$i]:
% 0.84/1.06     ( ( ( r1_tarski @ A @ B ) & ( r1_xboole_0 @ A @ C ) ) =>
% 0.84/1.06       ( r1_tarski @ A @ ( k4_xboole_0 @ B @ C ) ) ))).
% 0.84/1.06  thf(zf_stmt_0, negated_conjecture,
% 0.84/1.06    (~( ![A:$i,B:$i,C:$i]:
% 0.84/1.06        ( ( ( r1_tarski @ A @ B ) & ( r1_xboole_0 @ A @ C ) ) =>
% 0.84/1.06          ( r1_tarski @ A @ ( k4_xboole_0 @ B @ C ) ) ) )),
% 0.84/1.06    inference('cnf.neg', [status(esa)], [t86_xboole_1])).
% 0.84/1.06  thf('0', plain, (~ (r1_tarski @ sk_A @ (k4_xboole_0 @ sk_B @ sk_C))),
% 0.84/1.06      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.84/1.06  thf('1', plain, ((r1_xboole_0 @ sk_A @ sk_C)),
% 0.84/1.06      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.84/1.06  thf(t36_xboole_1, axiom,
% 0.84/1.06    (![A:$i,B:$i]: ( r1_tarski @ ( k4_xboole_0 @ A @ B ) @ A ))).
% 0.84/1.06  thf('2', plain,
% 0.84/1.06      (![X5 : $i, X6 : $i]: (r1_tarski @ (k4_xboole_0 @ X5 @ X6) @ X5)),
% 0.84/1.06      inference('cnf', [status(esa)], [t36_xboole_1])).
% 0.84/1.06  thf(t63_xboole_1, axiom,
% 0.84/1.06    (![A:$i,B:$i,C:$i]:
% 0.84/1.06     ( ( ( r1_tarski @ A @ B ) & ( r1_xboole_0 @ B @ C ) ) =>
% 0.84/1.06       ( r1_xboole_0 @ A @ C ) ))).
% 0.84/1.06  thf('3', plain,
% 0.84/1.06      (![X11 : $i, X12 : $i, X13 : $i]:
% 0.84/1.06         (~ (r1_tarski @ X11 @ X12)
% 0.84/1.06          | ~ (r1_xboole_0 @ X12 @ X13)
% 0.84/1.06          | (r1_xboole_0 @ X11 @ X13))),
% 0.84/1.06      inference('cnf', [status(esa)], [t63_xboole_1])).
% 0.84/1.06  thf('4', plain,
% 0.84/1.06      (![X0 : $i, X1 : $i, X2 : $i]:
% 0.84/1.06         ((r1_xboole_0 @ (k4_xboole_0 @ X0 @ X1) @ X2)
% 0.84/1.06          | ~ (r1_xboole_0 @ X0 @ X2))),
% 0.84/1.06      inference('sup-', [status(thm)], ['2', '3'])).
% 0.84/1.06  thf('5', plain,
% 0.84/1.06      (![X0 : $i]: (r1_xboole_0 @ (k4_xboole_0 @ sk_A @ X0) @ sk_C)),
% 0.84/1.06      inference('sup-', [status(thm)], ['1', '4'])).
% 0.84/1.06  thf(t83_xboole_1, axiom,
% 0.84/1.06    (![A:$i,B:$i]:
% 0.84/1.06     ( ( r1_xboole_0 @ A @ B ) <=> ( ( k4_xboole_0 @ A @ B ) = ( A ) ) ))).
% 0.84/1.06  thf('6', plain,
% 0.84/1.06      (![X18 : $i, X19 : $i]:
% 0.84/1.06         (((k4_xboole_0 @ X18 @ X19) = (X18)) | ~ (r1_xboole_0 @ X18 @ X19))),
% 0.84/1.06      inference('cnf', [status(esa)], [t83_xboole_1])).
% 0.84/1.06  thf('7', plain,
% 0.84/1.06      (![X0 : $i]:
% 0.84/1.06         ((k4_xboole_0 @ (k4_xboole_0 @ sk_A @ X0) @ sk_C)
% 0.84/1.06           = (k4_xboole_0 @ sk_A @ X0))),
% 0.84/1.06      inference('sup-', [status(thm)], ['5', '6'])).
% 0.84/1.06  thf(t3_boole, axiom,
% 0.84/1.06    (![A:$i]: ( ( k4_xboole_0 @ A @ k1_xboole_0 ) = ( A ) ))).
% 0.84/1.06  thf('8', plain, (![X7 : $i]: ((k4_xboole_0 @ X7 @ k1_xboole_0) = (X7))),
% 0.84/1.06      inference('cnf', [status(esa)], [t3_boole])).
% 0.84/1.06  thf('9', plain,
% 0.84/1.06      (![X5 : $i, X6 : $i]: (r1_tarski @ (k4_xboole_0 @ X5 @ X6) @ X5)),
% 0.84/1.06      inference('cnf', [status(esa)], [t36_xboole_1])).
% 0.84/1.06  thf('10', plain, (![X0 : $i]: (r1_tarski @ X0 @ X0)),
% 0.84/1.06      inference('sup+', [status(thm)], ['8', '9'])).
% 0.84/1.06  thf(l32_xboole_1, axiom,
% 0.84/1.06    (![A:$i,B:$i]:
% 0.84/1.06     ( ( ( k4_xboole_0 @ A @ B ) = ( k1_xboole_0 ) ) <=> ( r1_tarski @ A @ B ) ))).
% 0.84/1.06  thf('11', plain,
% 0.84/1.06      (![X2 : $i, X4 : $i]:
% 0.84/1.06         (((k4_xboole_0 @ X2 @ X4) = (k1_xboole_0)) | ~ (r1_tarski @ X2 @ X4))),
% 0.84/1.06      inference('cnf', [status(esa)], [l32_xboole_1])).
% 0.84/1.06  thf('12', plain, (![X0 : $i]: ((k4_xboole_0 @ X0 @ X0) = (k1_xboole_0))),
% 0.84/1.06      inference('sup-', [status(thm)], ['10', '11'])).
% 0.84/1.06  thf(t81_xboole_1, axiom,
% 0.84/1.06    (![A:$i,B:$i,C:$i]:
% 0.84/1.06     ( ( r1_xboole_0 @ A @ ( k4_xboole_0 @ B @ C ) ) =>
% 0.84/1.06       ( r1_xboole_0 @ B @ ( k4_xboole_0 @ A @ C ) ) ))).
% 0.84/1.06  thf('13', plain,
% 0.84/1.06      (![X15 : $i, X16 : $i, X17 : $i]:
% 0.84/1.06         ((r1_xboole_0 @ X15 @ (k4_xboole_0 @ X16 @ X17))
% 0.84/1.06          | ~ (r1_xboole_0 @ X16 @ (k4_xboole_0 @ X15 @ X17)))),
% 0.84/1.06      inference('cnf', [status(esa)], [t81_xboole_1])).
% 0.84/1.06  thf('14', plain,
% 0.84/1.06      (![X0 : $i, X1 : $i]:
% 0.84/1.06         (~ (r1_xboole_0 @ X1 @ k1_xboole_0)
% 0.84/1.06          | (r1_xboole_0 @ X0 @ (k4_xboole_0 @ X1 @ X0)))),
% 0.84/1.06      inference('sup-', [status(thm)], ['12', '13'])).
% 0.84/1.06  thf(t65_xboole_1, axiom, (![A:$i]: ( r1_xboole_0 @ A @ k1_xboole_0 ))).
% 0.84/1.06  thf('15', plain, (![X14 : $i]: (r1_xboole_0 @ X14 @ k1_xboole_0)),
% 0.84/1.06      inference('cnf', [status(esa)], [t65_xboole_1])).
% 0.84/1.06  thf('16', plain,
% 0.84/1.06      (![X0 : $i, X1 : $i]: (r1_xboole_0 @ X0 @ (k4_xboole_0 @ X1 @ X0))),
% 0.84/1.06      inference('demod', [status(thm)], ['14', '15'])).
% 0.84/1.06  thf(symmetry_r1_xboole_0, axiom,
% 0.84/1.06    (![A:$i,B:$i]: ( ( r1_xboole_0 @ A @ B ) => ( r1_xboole_0 @ B @ A ) ))).
% 0.84/1.06  thf('17', plain,
% 0.84/1.06      (![X0 : $i, X1 : $i]:
% 0.84/1.06         ((r1_xboole_0 @ X0 @ X1) | ~ (r1_xboole_0 @ X1 @ X0))),
% 0.84/1.06      inference('cnf', [status(esa)], [symmetry_r1_xboole_0])).
% 0.84/1.06  thf('18', plain,
% 0.84/1.06      (![X0 : $i, X1 : $i]: (r1_xboole_0 @ (k4_xboole_0 @ X1 @ X0) @ X0)),
% 0.84/1.06      inference('sup-', [status(thm)], ['16', '17'])).
% 0.84/1.06  thf('19', plain,
% 0.84/1.06      (![X15 : $i, X16 : $i, X17 : $i]:
% 0.84/1.06         ((r1_xboole_0 @ X15 @ (k4_xboole_0 @ X16 @ X17))
% 0.84/1.06          | ~ (r1_xboole_0 @ X16 @ (k4_xboole_0 @ X15 @ X17)))),
% 0.84/1.06      inference('cnf', [status(esa)], [t81_xboole_1])).
% 0.84/1.06  thf('20', plain,
% 0.84/1.06      (![X0 : $i, X1 : $i, X2 : $i]:
% 0.84/1.06         (r1_xboole_0 @ X1 @ 
% 0.84/1.06          (k4_xboole_0 @ (k4_xboole_0 @ X2 @ (k4_xboole_0 @ X1 @ X0)) @ X0))),
% 0.84/1.06      inference('sup-', [status(thm)], ['18', '19'])).
% 0.84/1.06  thf('21', plain,
% 0.84/1.06      (![X0 : $i]:
% 0.84/1.06         (r1_xboole_0 @ X0 @ (k4_xboole_0 @ sk_A @ (k4_xboole_0 @ X0 @ sk_C)))),
% 0.84/1.06      inference('sup+', [status(thm)], ['7', '20'])).
% 0.84/1.06  thf('22', plain, ((r1_tarski @ sk_A @ sk_B)),
% 0.84/1.06      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.84/1.06  thf('23', plain,
% 0.84/1.06      (![X11 : $i, X12 : $i, X13 : $i]:
% 0.84/1.06         (~ (r1_tarski @ X11 @ X12)
% 0.84/1.06          | ~ (r1_xboole_0 @ X12 @ X13)
% 0.84/1.06          | (r1_xboole_0 @ X11 @ X13))),
% 0.84/1.06      inference('cnf', [status(esa)], [t63_xboole_1])).
% 0.84/1.06  thf('24', plain,
% 0.84/1.06      (![X0 : $i]: ((r1_xboole_0 @ sk_A @ X0) | ~ (r1_xboole_0 @ sk_B @ X0))),
% 0.84/1.06      inference('sup-', [status(thm)], ['22', '23'])).
% 0.84/1.06  thf('25', plain,
% 0.84/1.06      ((r1_xboole_0 @ sk_A @ (k4_xboole_0 @ sk_A @ (k4_xboole_0 @ sk_B @ sk_C)))),
% 0.84/1.06      inference('sup-', [status(thm)], ['21', '24'])).
% 0.84/1.06  thf('26', plain,
% 0.84/1.06      (![X0 : $i, X1 : $i]:
% 0.84/1.06         ((r1_xboole_0 @ X0 @ X1) | ~ (r1_xboole_0 @ X1 @ X0))),
% 0.84/1.06      inference('cnf', [status(esa)], [symmetry_r1_xboole_0])).
% 0.84/1.06  thf('27', plain,
% 0.84/1.06      ((r1_xboole_0 @ (k4_xboole_0 @ sk_A @ (k4_xboole_0 @ sk_B @ sk_C)) @ sk_A)),
% 0.84/1.06      inference('sup-', [status(thm)], ['25', '26'])).
% 0.84/1.06  thf('28', plain,
% 0.84/1.06      (![X18 : $i, X19 : $i]:
% 0.84/1.06         (((k4_xboole_0 @ X18 @ X19) = (X18)) | ~ (r1_xboole_0 @ X18 @ X19))),
% 0.84/1.06      inference('cnf', [status(esa)], [t83_xboole_1])).
% 0.84/1.06  thf('29', plain,
% 0.84/1.06      (((k4_xboole_0 @ (k4_xboole_0 @ sk_A @ (k4_xboole_0 @ sk_B @ sk_C)) @ 
% 0.84/1.06         sk_A) = (k4_xboole_0 @ sk_A @ (k4_xboole_0 @ sk_B @ sk_C)))),
% 0.84/1.06      inference('sup-', [status(thm)], ['27', '28'])).
% 0.84/1.06  thf('30', plain,
% 0.84/1.06      (![X5 : $i, X6 : $i]: (r1_tarski @ (k4_xboole_0 @ X5 @ X6) @ X5)),
% 0.84/1.06      inference('cnf', [status(esa)], [t36_xboole_1])).
% 0.84/1.06  thf('31', plain,
% 0.84/1.06      (![X2 : $i, X4 : $i]:
% 0.84/1.06         (((k4_xboole_0 @ X2 @ X4) = (k1_xboole_0)) | ~ (r1_tarski @ X2 @ X4))),
% 0.84/1.06      inference('cnf', [status(esa)], [l32_xboole_1])).
% 0.84/1.06  thf('32', plain,
% 0.84/1.06      (![X0 : $i, X1 : $i]:
% 0.84/1.06         ((k4_xboole_0 @ (k4_xboole_0 @ X0 @ X1) @ X0) = (k1_xboole_0))),
% 0.84/1.06      inference('sup-', [status(thm)], ['30', '31'])).
% 0.84/1.06  thf('33', plain,
% 0.84/1.06      (((k1_xboole_0) = (k4_xboole_0 @ sk_A @ (k4_xboole_0 @ sk_B @ sk_C)))),
% 0.84/1.06      inference('demod', [status(thm)], ['29', '32'])).
% 0.84/1.06  thf('34', plain,
% 0.84/1.06      (![X2 : $i, X3 : $i]:
% 0.84/1.06         ((r1_tarski @ X2 @ X3) | ((k4_xboole_0 @ X2 @ X3) != (k1_xboole_0)))),
% 0.84/1.06      inference('cnf', [status(esa)], [l32_xboole_1])).
% 0.84/1.06  thf('35', plain,
% 0.84/1.06      ((((k1_xboole_0) != (k1_xboole_0))
% 0.84/1.06        | (r1_tarski @ sk_A @ (k4_xboole_0 @ sk_B @ sk_C)))),
% 0.84/1.06      inference('sup-', [status(thm)], ['33', '34'])).
% 0.84/1.06  thf('36', plain, ((r1_tarski @ sk_A @ (k4_xboole_0 @ sk_B @ sk_C))),
% 0.84/1.06      inference('simplify', [status(thm)], ['35'])).
% 0.84/1.06  thf('37', plain, ($false), inference('demod', [status(thm)], ['0', '36'])).
% 0.84/1.06  
% 0.84/1.06  % SZS output end Refutation
% 0.84/1.06  
% 0.84/1.07  % Zipperpin 1.5 exiting
%------------------------------------------------------------------------------
