%------------------------------------------------------------------------------
% File       : Zipperpin---2.0
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_portfolio.sh /export/starexec/sandbox/benchmark/theBenchmark.p /export/starexec/sandbox/tmp/tmp.y7XT1oT4gY

% Computer   : n013.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 13:33:11 EST 2020

% Result     : Theorem 0.36s
% Output     : Refutation 0.36s
% Verified   : 
% Statistics : Number of formulae       :   60 (  92 expanded)
%              Number of leaves         :   25 (  39 expanded)
%              Depth                    :   12
%              Number of atoms          :  302 ( 522 expanded)
%              Number of equality atoms :   33 (  48 expanded)
%              Maximal formula depth    :   11 (   6 average)

% Comments   : 
%------------------------------------------------------------------------------
thf(k2_xboole_0_type,type,(
    k2_xboole_0: $i > $i > $i )).

thf(k2_tarski_type,type,(
    k2_tarski: $i > $i > $i )).

thf(r2_hidden_type,type,(
    r2_hidden: $i > $i > $o )).

thf(sk_C_type,type,(
    sk_C: $i > $i > $i )).

thf(r1_xboole_0_type,type,(
    r1_xboole_0: $i > $i > $o )).

thf(v1_xboole_0_type,type,(
    v1_xboole_0: $i > $o )).

thf(sk_A_type,type,(
    sk_A: $i )).

thf(k4_xboole_0_type,type,(
    k4_xboole_0: $i > $i > $i )).

thf(sk_B_1_type,type,(
    sk_B_1: $i )).

thf(k1_enumset1_type,type,(
    k1_enumset1: $i > $i > $i > $i )).

thf(sk_C_1_type,type,(
    sk_C_1: $i )).

thf(k1_xboole_0_type,type,(
    k1_xboole_0: $i )).

thf(r1_tarski_type,type,(
    r1_tarski: $i > $i > $o )).

thf(k1_tarski_type,type,(
    k1_tarski: $i > $i )).

thf(t50_zfmisc_1,conjecture,(
    ! [A: $i,B: $i,C: $i] :
      ( ( k2_xboole_0 @ ( k2_tarski @ A @ B ) @ C )
     != k1_xboole_0 ) )).

thf(zf_stmt_0,negated_conjecture,(
    ~ ! [A: $i,B: $i,C: $i] :
        ( ( k2_xboole_0 @ ( k2_tarski @ A @ B ) @ C )
       != k1_xboole_0 ) ),
    inference('cnf.neg',[status(esa)],[t50_zfmisc_1])).

thf('0',plain,
    ( ( k2_xboole_0 @ ( k2_tarski @ sk_A @ sk_B_1 ) @ sk_C_1 )
    = k1_xboole_0 ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('1',plain,
    ( ( k2_xboole_0 @ ( k2_tarski @ sk_A @ sk_B_1 ) @ sk_C_1 )
    = k1_xboole_0 ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(t7_xboole_1,axiom,(
    ! [A: $i,B: $i] :
      ( r1_tarski @ A @ ( k2_xboole_0 @ A @ B ) ) )).

thf('2',plain,(
    ! [X12: $i,X13: $i] :
      ( r1_tarski @ X12 @ ( k2_xboole_0 @ X12 @ X13 ) ) ),
    inference(cnf,[status(esa)],[t7_xboole_1])).

thf('3',plain,(
    r1_tarski @ ( k2_tarski @ sk_A @ sk_B_1 ) @ k1_xboole_0 ),
    inference('sup+',[status(thm)],['1','2'])).

thf(l32_xboole_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( ( k4_xboole_0 @ A @ B )
        = k1_xboole_0 )
    <=> ( r1_tarski @ A @ B ) ) )).

thf('4',plain,(
    ! [X7: $i,X9: $i] :
      ( ( ( k4_xboole_0 @ X7 @ X9 )
        = k1_xboole_0 )
      | ~ ( r1_tarski @ X7 @ X9 ) ) ),
    inference(cnf,[status(esa)],[l32_xboole_1])).

thf('5',plain,
    ( ( k4_xboole_0 @ ( k2_tarski @ sk_A @ sk_B_1 ) @ k1_xboole_0 )
    = k1_xboole_0 ),
    inference('sup-',[status(thm)],['3','4'])).

thf(t3_xboole_0,axiom,(
    ! [A: $i,B: $i] :
      ( ~ ( ? [C: $i] :
              ( ( r2_hidden @ C @ B )
              & ( r2_hidden @ C @ A ) )
          & ( r1_xboole_0 @ A @ B ) )
      & ~ ( ~ ( r1_xboole_0 @ A @ B )
          & ! [C: $i] :
              ~ ( ( r2_hidden @ C @ A )
                & ( r2_hidden @ C @ B ) ) ) ) )).

thf('6',plain,(
    ! [X3: $i,X4: $i] :
      ( ( r1_xboole_0 @ X3 @ X4 )
      | ( r2_hidden @ ( sk_C @ X4 @ X3 ) @ X4 ) ) ),
    inference(cnf,[status(esa)],[t3_xboole_0])).

thf(d1_xboole_0,axiom,(
    ! [A: $i] :
      ( ( v1_xboole_0 @ A )
    <=> ! [B: $i] :
          ~ ( r2_hidden @ B @ A ) ) )).

thf('7',plain,(
    ! [X0: $i,X1: $i] :
      ( ~ ( r2_hidden @ X0 @ X1 )
      | ~ ( v1_xboole_0 @ X1 ) ) ),
    inference(cnf,[status(esa)],[d1_xboole_0])).

thf('8',plain,(
    ! [X0: $i,X1: $i] :
      ( ( r1_xboole_0 @ X1 @ X0 )
      | ~ ( v1_xboole_0 @ X0 ) ) ),
    inference('sup-',[status(thm)],['6','7'])).

thf(t83_xboole_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( r1_xboole_0 @ A @ B )
    <=> ( ( k4_xboole_0 @ A @ B )
        = A ) ) )).

thf('9',plain,(
    ! [X14: $i,X15: $i] :
      ( ( ( k4_xboole_0 @ X14 @ X15 )
        = X14 )
      | ~ ( r1_xboole_0 @ X14 @ X15 ) ) ),
    inference(cnf,[status(esa)],[t83_xboole_1])).

thf('10',plain,(
    ! [X0: $i,X1: $i] :
      ( ~ ( v1_xboole_0 @ X0 )
      | ( ( k4_xboole_0 @ X1 @ X0 )
        = X1 ) ) ),
    inference('sup-',[status(thm)],['8','9'])).

thf('11',plain,
    ( ( k1_xboole_0
      = ( k2_tarski @ sk_A @ sk_B_1 ) )
    | ~ ( v1_xboole_0 @ k1_xboole_0 ) ),
    inference('sup+',[status(thm)],['5','10'])).

thf(fc1_xboole_0,axiom,(
    v1_xboole_0 @ k1_xboole_0 )).

thf('12',plain,(
    v1_xboole_0 @ k1_xboole_0 ),
    inference(cnf,[status(esa)],[fc1_xboole_0])).

thf('13',plain,
    ( k1_xboole_0
    = ( k2_tarski @ sk_A @ sk_B_1 ) ),
    inference(demod,[status(thm)],['11','12'])).

thf('14',plain,
    ( ( k2_xboole_0 @ k1_xboole_0 @ sk_C_1 )
    = k1_xboole_0 ),
    inference(demod,[status(thm)],['0','13'])).

thf('15',plain,
    ( k1_xboole_0
    = ( k2_tarski @ sk_A @ sk_B_1 ) ),
    inference(demod,[status(thm)],['11','12'])).

thf(t70_enumset1,axiom,(
    ! [A: $i,B: $i] :
      ( ( k1_enumset1 @ A @ A @ B )
      = ( k2_tarski @ A @ B ) ) )).

thf('16',plain,(
    ! [X23: $i,X24: $i] :
      ( ( k1_enumset1 @ X23 @ X23 @ X24 )
      = ( k2_tarski @ X23 @ X24 ) ) ),
    inference(cnf,[status(esa)],[t70_enumset1])).

thf(t137_enumset1,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( k2_xboole_0 @ ( k2_tarski @ B @ A ) @ ( k2_tarski @ C @ A ) )
      = ( k1_enumset1 @ A @ B @ C ) ) )).

thf('17',plain,(
    ! [X19: $i,X20: $i,X21: $i] :
      ( ( k2_xboole_0 @ ( k2_tarski @ X20 @ X19 ) @ ( k2_tarski @ X21 @ X19 ) )
      = ( k1_enumset1 @ X19 @ X20 @ X21 ) ) ),
    inference(cnf,[status(esa)],[t137_enumset1])).

thf('18',plain,(
    ! [X0: $i,X1: $i] :
      ( ~ ( v1_xboole_0 @ X0 )
      | ( ( k4_xboole_0 @ X1 @ X0 )
        = X1 ) ) ),
    inference('sup-',[status(thm)],['8','9'])).

thf('19',plain,(
    ! [X12: $i,X13: $i] :
      ( r1_tarski @ X12 @ ( k2_xboole_0 @ X12 @ X13 ) ) ),
    inference(cnf,[status(esa)],[t7_xboole_1])).

thf('20',plain,(
    ! [X7: $i,X9: $i] :
      ( ( ( k4_xboole_0 @ X7 @ X9 )
        = k1_xboole_0 )
      | ~ ( r1_tarski @ X7 @ X9 ) ) ),
    inference(cnf,[status(esa)],[l32_xboole_1])).

thf('21',plain,(
    ! [X0: $i,X1: $i] :
      ( ( k4_xboole_0 @ X1 @ ( k2_xboole_0 @ X1 @ X0 ) )
      = k1_xboole_0 ) ),
    inference('sup-',[status(thm)],['19','20'])).

thf('22',plain,(
    ! [X0: $i,X1: $i] :
      ( ( X0 = k1_xboole_0 )
      | ~ ( v1_xboole_0 @ ( k2_xboole_0 @ X0 @ X1 ) ) ) ),
    inference('sup+',[status(thm)],['18','21'])).

thf('23',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( ~ ( v1_xboole_0 @ ( k1_enumset1 @ X2 @ X1 @ X0 ) )
      | ( ( k2_tarski @ X1 @ X2 )
        = k1_xboole_0 ) ) ),
    inference('sup-',[status(thm)],['17','22'])).

thf('24',plain,(
    ! [X0: $i,X1: $i] :
      ( ~ ( v1_xboole_0 @ ( k2_tarski @ X1 @ X0 ) )
      | ( ( k2_tarski @ X1 @ X1 )
        = k1_xboole_0 ) ) ),
    inference('sup-',[status(thm)],['16','23'])).

thf(t69_enumset1,axiom,(
    ! [A: $i] :
      ( ( k2_tarski @ A @ A )
      = ( k1_tarski @ A ) ) )).

thf('25',plain,(
    ! [X22: $i] :
      ( ( k2_tarski @ X22 @ X22 )
      = ( k1_tarski @ X22 ) ) ),
    inference(cnf,[status(esa)],[t69_enumset1])).

thf('26',plain,(
    ! [X0: $i,X1: $i] :
      ( ~ ( v1_xboole_0 @ ( k2_tarski @ X1 @ X0 ) )
      | ( ( k1_tarski @ X1 )
        = k1_xboole_0 ) ) ),
    inference(demod,[status(thm)],['24','25'])).

thf('27',plain,
    ( ~ ( v1_xboole_0 @ k1_xboole_0 )
    | ( ( k1_tarski @ sk_A )
      = k1_xboole_0 ) ),
    inference('sup-',[status(thm)],['15','26'])).

thf('28',plain,(
    v1_xboole_0 @ k1_xboole_0 ),
    inference(cnf,[status(esa)],[fc1_xboole_0])).

thf('29',plain,
    ( ( k1_tarski @ sk_A )
    = k1_xboole_0 ),
    inference(demod,[status(thm)],['27','28'])).

thf(t49_zfmisc_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( k2_xboole_0 @ ( k1_tarski @ A ) @ B )
     != k1_xboole_0 ) )).

thf('30',plain,(
    ! [X39: $i,X40: $i] :
      ( ( k2_xboole_0 @ ( k1_tarski @ X39 ) @ X40 )
     != k1_xboole_0 ) ),
    inference(cnf,[status(esa)],[t49_zfmisc_1])).

thf('31',plain,(
    ! [X0: $i] :
      ( ( k2_xboole_0 @ k1_xboole_0 @ X0 )
     != k1_xboole_0 ) ),
    inference('sup-',[status(thm)],['29','30'])).

thf('32',plain,(
    k1_xboole_0 != k1_xboole_0 ),
    inference('sup-',[status(thm)],['14','31'])).

thf('33',plain,(
    $false ),
    inference(simplify,[status(thm)],['32'])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.06/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.06/0.13  % Command    : run_portfolio.sh /export/starexec/sandbox/benchmark/theBenchmark.p /export/starexec/sandbox/tmp/tmp.y7XT1oT4gY
% 0.12/0.34  % Computer   : n013.cluster.edu
% 0.12/0.34  % Model      : x86_64 x86_64
% 0.12/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.12/0.34  % Memory     : 8042.1875MB
% 0.12/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.12/0.34  % CPULimit   : 60
% 0.12/0.34  % DateTime   : Tue Dec  1 12:27:55 EST 2020
% 0.12/0.34  % CPUTime    : 
% 0.12/0.34  % Running portfolio for 600 s
% 0.12/0.34  % File         : /export/starexec/sandbox/benchmark/theBenchmark.p
% 0.12/0.34  % Number of cores: 8
% 0.12/0.34  % Python version: Python 3.6.8
% 0.12/0.35  % Running in FO mode
% 0.36/0.55  % Running /export/starexec/sandbox/solver/bin/fo/fo7.sh for 78
% 0.36/0.55  % Solved by: fo/fo7.sh
% 0.36/0.55  To remain in the chosen logic fragment, unification with booleans has been disabled.
% 0.36/0.55  % done 153 iterations in 0.103s
% 0.36/0.55  % SZS status Theorem for '/export/starexec/sandbox/benchmark/theBenchmark.p'
% 0.36/0.55  % SZS output start Refutation
% 0.36/0.55  thf(k2_xboole_0_type, type, k2_xboole_0: $i > $i > $i).
% 0.36/0.55  thf(k2_tarski_type, type, k2_tarski: $i > $i > $i).
% 0.36/0.55  thf(r2_hidden_type, type, r2_hidden: $i > $i > $o).
% 0.36/0.55  thf(sk_C_type, type, sk_C: $i > $i > $i).
% 0.36/0.55  thf(r1_xboole_0_type, type, r1_xboole_0: $i > $i > $o).
% 0.36/0.55  thf(v1_xboole_0_type, type, v1_xboole_0: $i > $o).
% 0.36/0.55  thf(sk_A_type, type, sk_A: $i).
% 0.36/0.55  thf(k4_xboole_0_type, type, k4_xboole_0: $i > $i > $i).
% 0.36/0.55  thf(sk_B_1_type, type, sk_B_1: $i).
% 0.36/0.55  thf(k1_enumset1_type, type, k1_enumset1: $i > $i > $i > $i).
% 0.36/0.55  thf(sk_C_1_type, type, sk_C_1: $i).
% 0.36/0.55  thf(k1_xboole_0_type, type, k1_xboole_0: $i).
% 0.36/0.55  thf(r1_tarski_type, type, r1_tarski: $i > $i > $o).
% 0.36/0.55  thf(k1_tarski_type, type, k1_tarski: $i > $i).
% 0.36/0.55  thf(t50_zfmisc_1, conjecture,
% 0.36/0.55    (![A:$i,B:$i,C:$i]:
% 0.36/0.55     ( ( k2_xboole_0 @ ( k2_tarski @ A @ B ) @ C ) != ( k1_xboole_0 ) ))).
% 0.36/0.55  thf(zf_stmt_0, negated_conjecture,
% 0.36/0.55    (~( ![A:$i,B:$i,C:$i]:
% 0.36/0.55        ( ( k2_xboole_0 @ ( k2_tarski @ A @ B ) @ C ) != ( k1_xboole_0 ) ) )),
% 0.36/0.55    inference('cnf.neg', [status(esa)], [t50_zfmisc_1])).
% 0.36/0.55  thf('0', plain,
% 0.36/0.55      (((k2_xboole_0 @ (k2_tarski @ sk_A @ sk_B_1) @ sk_C_1) = (k1_xboole_0))),
% 0.36/0.55      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.36/0.55  thf('1', plain,
% 0.36/0.55      (((k2_xboole_0 @ (k2_tarski @ sk_A @ sk_B_1) @ sk_C_1) = (k1_xboole_0))),
% 0.36/0.55      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.36/0.55  thf(t7_xboole_1, axiom,
% 0.36/0.55    (![A:$i,B:$i]: ( r1_tarski @ A @ ( k2_xboole_0 @ A @ B ) ))).
% 0.36/0.55  thf('2', plain,
% 0.36/0.55      (![X12 : $i, X13 : $i]: (r1_tarski @ X12 @ (k2_xboole_0 @ X12 @ X13))),
% 0.36/0.55      inference('cnf', [status(esa)], [t7_xboole_1])).
% 0.36/0.55  thf('3', plain, ((r1_tarski @ (k2_tarski @ sk_A @ sk_B_1) @ k1_xboole_0)),
% 0.36/0.55      inference('sup+', [status(thm)], ['1', '2'])).
% 0.36/0.55  thf(l32_xboole_1, axiom,
% 0.36/0.55    (![A:$i,B:$i]:
% 0.36/0.55     ( ( ( k4_xboole_0 @ A @ B ) = ( k1_xboole_0 ) ) <=> ( r1_tarski @ A @ B ) ))).
% 0.36/0.55  thf('4', plain,
% 0.36/0.55      (![X7 : $i, X9 : $i]:
% 0.36/0.55         (((k4_xboole_0 @ X7 @ X9) = (k1_xboole_0)) | ~ (r1_tarski @ X7 @ X9))),
% 0.36/0.55      inference('cnf', [status(esa)], [l32_xboole_1])).
% 0.36/0.55  thf('5', plain,
% 0.36/0.55      (((k4_xboole_0 @ (k2_tarski @ sk_A @ sk_B_1) @ k1_xboole_0)
% 0.36/0.55         = (k1_xboole_0))),
% 0.36/0.55      inference('sup-', [status(thm)], ['3', '4'])).
% 0.36/0.55  thf(t3_xboole_0, axiom,
% 0.36/0.55    (![A:$i,B:$i]:
% 0.36/0.55     ( ( ~( ( ?[C:$i]: ( ( r2_hidden @ C @ B ) & ( r2_hidden @ C @ A ) ) ) & 
% 0.36/0.55            ( r1_xboole_0 @ A @ B ) ) ) & 
% 0.36/0.55       ( ~( ( ~( r1_xboole_0 @ A @ B ) ) & 
% 0.36/0.55            ( ![C:$i]: ( ~( ( r2_hidden @ C @ A ) & ( r2_hidden @ C @ B ) ) ) ) ) ) ))).
% 0.36/0.55  thf('6', plain,
% 0.36/0.55      (![X3 : $i, X4 : $i]:
% 0.36/0.55         ((r1_xboole_0 @ X3 @ X4) | (r2_hidden @ (sk_C @ X4 @ X3) @ X4))),
% 0.36/0.55      inference('cnf', [status(esa)], [t3_xboole_0])).
% 0.36/0.55  thf(d1_xboole_0, axiom,
% 0.36/0.55    (![A:$i]:
% 0.36/0.55     ( ( v1_xboole_0 @ A ) <=> ( ![B:$i]: ( ~( r2_hidden @ B @ A ) ) ) ))).
% 0.36/0.55  thf('7', plain,
% 0.36/0.55      (![X0 : $i, X1 : $i]: (~ (r2_hidden @ X0 @ X1) | ~ (v1_xboole_0 @ X1))),
% 0.36/0.55      inference('cnf', [status(esa)], [d1_xboole_0])).
% 0.36/0.55  thf('8', plain,
% 0.36/0.55      (![X0 : $i, X1 : $i]: ((r1_xboole_0 @ X1 @ X0) | ~ (v1_xboole_0 @ X0))),
% 0.36/0.55      inference('sup-', [status(thm)], ['6', '7'])).
% 0.36/0.55  thf(t83_xboole_1, axiom,
% 0.36/0.55    (![A:$i,B:$i]:
% 0.36/0.55     ( ( r1_xboole_0 @ A @ B ) <=> ( ( k4_xboole_0 @ A @ B ) = ( A ) ) ))).
% 0.36/0.55  thf('9', plain,
% 0.36/0.55      (![X14 : $i, X15 : $i]:
% 0.36/0.55         (((k4_xboole_0 @ X14 @ X15) = (X14)) | ~ (r1_xboole_0 @ X14 @ X15))),
% 0.36/0.55      inference('cnf', [status(esa)], [t83_xboole_1])).
% 0.36/0.55  thf('10', plain,
% 0.36/0.55      (![X0 : $i, X1 : $i]:
% 0.36/0.55         (~ (v1_xboole_0 @ X0) | ((k4_xboole_0 @ X1 @ X0) = (X1)))),
% 0.36/0.55      inference('sup-', [status(thm)], ['8', '9'])).
% 0.36/0.55  thf('11', plain,
% 0.36/0.55      ((((k1_xboole_0) = (k2_tarski @ sk_A @ sk_B_1))
% 0.36/0.55        | ~ (v1_xboole_0 @ k1_xboole_0))),
% 0.36/0.55      inference('sup+', [status(thm)], ['5', '10'])).
% 0.36/0.55  thf(fc1_xboole_0, axiom, (v1_xboole_0 @ k1_xboole_0)).
% 0.36/0.55  thf('12', plain, ((v1_xboole_0 @ k1_xboole_0)),
% 0.36/0.55      inference('cnf', [status(esa)], [fc1_xboole_0])).
% 0.36/0.55  thf('13', plain, (((k1_xboole_0) = (k2_tarski @ sk_A @ sk_B_1))),
% 0.36/0.55      inference('demod', [status(thm)], ['11', '12'])).
% 0.36/0.55  thf('14', plain, (((k2_xboole_0 @ k1_xboole_0 @ sk_C_1) = (k1_xboole_0))),
% 0.36/0.55      inference('demod', [status(thm)], ['0', '13'])).
% 0.36/0.55  thf('15', plain, (((k1_xboole_0) = (k2_tarski @ sk_A @ sk_B_1))),
% 0.36/0.55      inference('demod', [status(thm)], ['11', '12'])).
% 0.36/0.55  thf(t70_enumset1, axiom,
% 0.36/0.55    (![A:$i,B:$i]: ( ( k1_enumset1 @ A @ A @ B ) = ( k2_tarski @ A @ B ) ))).
% 0.36/0.55  thf('16', plain,
% 0.36/0.55      (![X23 : $i, X24 : $i]:
% 0.36/0.55         ((k1_enumset1 @ X23 @ X23 @ X24) = (k2_tarski @ X23 @ X24))),
% 0.36/0.55      inference('cnf', [status(esa)], [t70_enumset1])).
% 0.36/0.55  thf(t137_enumset1, axiom,
% 0.36/0.55    (![A:$i,B:$i,C:$i]:
% 0.36/0.55     ( ( k2_xboole_0 @ ( k2_tarski @ B @ A ) @ ( k2_tarski @ C @ A ) ) =
% 0.36/0.55       ( k1_enumset1 @ A @ B @ C ) ))).
% 0.36/0.55  thf('17', plain,
% 0.36/0.55      (![X19 : $i, X20 : $i, X21 : $i]:
% 0.36/0.55         ((k2_xboole_0 @ (k2_tarski @ X20 @ X19) @ (k2_tarski @ X21 @ X19))
% 0.36/0.55           = (k1_enumset1 @ X19 @ X20 @ X21))),
% 0.36/0.55      inference('cnf', [status(esa)], [t137_enumset1])).
% 0.36/0.55  thf('18', plain,
% 0.36/0.55      (![X0 : $i, X1 : $i]:
% 0.36/0.55         (~ (v1_xboole_0 @ X0) | ((k4_xboole_0 @ X1 @ X0) = (X1)))),
% 0.36/0.55      inference('sup-', [status(thm)], ['8', '9'])).
% 0.36/0.55  thf('19', plain,
% 0.36/0.55      (![X12 : $i, X13 : $i]: (r1_tarski @ X12 @ (k2_xboole_0 @ X12 @ X13))),
% 0.36/0.55      inference('cnf', [status(esa)], [t7_xboole_1])).
% 0.36/0.55  thf('20', plain,
% 0.36/0.55      (![X7 : $i, X9 : $i]:
% 0.36/0.55         (((k4_xboole_0 @ X7 @ X9) = (k1_xboole_0)) | ~ (r1_tarski @ X7 @ X9))),
% 0.36/0.55      inference('cnf', [status(esa)], [l32_xboole_1])).
% 0.36/0.55  thf('21', plain,
% 0.36/0.55      (![X0 : $i, X1 : $i]:
% 0.36/0.55         ((k4_xboole_0 @ X1 @ (k2_xboole_0 @ X1 @ X0)) = (k1_xboole_0))),
% 0.36/0.55      inference('sup-', [status(thm)], ['19', '20'])).
% 0.36/0.55  thf('22', plain,
% 0.36/0.55      (![X0 : $i, X1 : $i]:
% 0.36/0.55         (((X0) = (k1_xboole_0)) | ~ (v1_xboole_0 @ (k2_xboole_0 @ X0 @ X1)))),
% 0.36/0.55      inference('sup+', [status(thm)], ['18', '21'])).
% 0.36/0.55  thf('23', plain,
% 0.36/0.55      (![X0 : $i, X1 : $i, X2 : $i]:
% 0.36/0.55         (~ (v1_xboole_0 @ (k1_enumset1 @ X2 @ X1 @ X0))
% 0.36/0.55          | ((k2_tarski @ X1 @ X2) = (k1_xboole_0)))),
% 0.36/0.55      inference('sup-', [status(thm)], ['17', '22'])).
% 0.36/0.55  thf('24', plain,
% 0.36/0.55      (![X0 : $i, X1 : $i]:
% 0.36/0.55         (~ (v1_xboole_0 @ (k2_tarski @ X1 @ X0))
% 0.36/0.55          | ((k2_tarski @ X1 @ X1) = (k1_xboole_0)))),
% 0.36/0.55      inference('sup-', [status(thm)], ['16', '23'])).
% 0.36/0.55  thf(t69_enumset1, axiom,
% 0.36/0.55    (![A:$i]: ( ( k2_tarski @ A @ A ) = ( k1_tarski @ A ) ))).
% 0.36/0.55  thf('25', plain,
% 0.36/0.55      (![X22 : $i]: ((k2_tarski @ X22 @ X22) = (k1_tarski @ X22))),
% 0.36/0.55      inference('cnf', [status(esa)], [t69_enumset1])).
% 0.36/0.55  thf('26', plain,
% 0.36/0.55      (![X0 : $i, X1 : $i]:
% 0.36/0.55         (~ (v1_xboole_0 @ (k2_tarski @ X1 @ X0))
% 0.36/0.55          | ((k1_tarski @ X1) = (k1_xboole_0)))),
% 0.36/0.55      inference('demod', [status(thm)], ['24', '25'])).
% 0.36/0.55  thf('27', plain,
% 0.36/0.55      ((~ (v1_xboole_0 @ k1_xboole_0) | ((k1_tarski @ sk_A) = (k1_xboole_0)))),
% 0.36/0.55      inference('sup-', [status(thm)], ['15', '26'])).
% 0.36/0.55  thf('28', plain, ((v1_xboole_0 @ k1_xboole_0)),
% 0.36/0.55      inference('cnf', [status(esa)], [fc1_xboole_0])).
% 0.36/0.55  thf('29', plain, (((k1_tarski @ sk_A) = (k1_xboole_0))),
% 0.36/0.55      inference('demod', [status(thm)], ['27', '28'])).
% 0.36/0.55  thf(t49_zfmisc_1, axiom,
% 0.36/0.55    (![A:$i,B:$i]:
% 0.36/0.55     ( ( k2_xboole_0 @ ( k1_tarski @ A ) @ B ) != ( k1_xboole_0 ) ))).
% 0.36/0.55  thf('30', plain,
% 0.36/0.55      (![X39 : $i, X40 : $i]:
% 0.36/0.55         ((k2_xboole_0 @ (k1_tarski @ X39) @ X40) != (k1_xboole_0))),
% 0.36/0.55      inference('cnf', [status(esa)], [t49_zfmisc_1])).
% 0.36/0.55  thf('31', plain,
% 0.36/0.55      (![X0 : $i]: ((k2_xboole_0 @ k1_xboole_0 @ X0) != (k1_xboole_0))),
% 0.36/0.55      inference('sup-', [status(thm)], ['29', '30'])).
% 0.36/0.55  thf('32', plain, (((k1_xboole_0) != (k1_xboole_0))),
% 0.36/0.55      inference('sup-', [status(thm)], ['14', '31'])).
% 0.36/0.55  thf('33', plain, ($false), inference('simplify', [status(thm)], ['32'])).
% 0.36/0.55  
% 0.36/0.55  % SZS output end Refutation
% 0.36/0.55  
% 0.36/0.56  % Zipperpin 1.5 exiting
%------------------------------------------------------------------------------
