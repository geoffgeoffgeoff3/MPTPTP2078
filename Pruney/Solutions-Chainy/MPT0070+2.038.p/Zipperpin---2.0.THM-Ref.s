%------------------------------------------------------------------------------
% File       : Zipperpin---2.0
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_portfolio.sh /export/starexec/sandbox2/benchmark/theBenchmark.p /export/starexec/sandbox2/tmp/tmp.fzm7IO2Rk7

% Computer   : n002.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 13:24:37 EST 2020

% Result     : Theorem 0.23s
% Output     : Refutation 0.23s
% Verified   : 
% Statistics : Number of formulae       :   55 (  81 expanded)
%              Number of leaves         :   16 (  31 expanded)
%              Depth                    :   14
%              Number of atoms          :  307 ( 515 expanded)
%              Number of equality atoms :   32 (  51 expanded)
%              Maximal formula depth    :    9 (   5 average)

% Comments   : 
%------------------------------------------------------------------------------
thf(r1_tarski_type,type,(
    r1_tarski: $i > $i > $o )).

thf(k1_xboole_0_type,type,(
    k1_xboole_0: $i )).

thf(k3_xboole_0_type,type,(
    k3_xboole_0: $i > $i > $i )).

thf(k4_xboole_0_type,type,(
    k4_xboole_0: $i > $i > $i )).

thf(sk_A_type,type,(
    sk_A: $i )).

thf(sk_C_type,type,(
    sk_C: $i )).

thf(r1_xboole_0_type,type,(
    r1_xboole_0: $i > $i > $o )).

thf(sk_B_type,type,(
    sk_B: $i )).

thf(t63_xboole_1,conjecture,(
    ! [A: $i,B: $i,C: $i] :
      ( ( ( r1_tarski @ A @ B )
        & ( r1_xboole_0 @ B @ C ) )
     => ( r1_xboole_0 @ A @ C ) ) )).

thf(zf_stmt_0,negated_conjecture,(
    ~ ! [A: $i,B: $i,C: $i] :
        ( ( ( r1_tarski @ A @ B )
          & ( r1_xboole_0 @ B @ C ) )
       => ( r1_xboole_0 @ A @ C ) ) ),
    inference('cnf.neg',[status(esa)],[t63_xboole_1])).

thf('0',plain,(
    ~ ( r1_xboole_0 @ sk_A @ sk_C ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('1',plain,(
    r1_tarski @ sk_A @ sk_B ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(l32_xboole_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( ( k4_xboole_0 @ A @ B )
        = k1_xboole_0 )
    <=> ( r1_tarski @ A @ B ) ) )).

thf('2',plain,(
    ! [X3: $i,X5: $i] :
      ( ( ( k4_xboole_0 @ X3 @ X5 )
        = k1_xboole_0 )
      | ~ ( r1_tarski @ X3 @ X5 ) ) ),
    inference(cnf,[status(esa)],[l32_xboole_1])).

thf('3',plain,
    ( ( k4_xboole_0 @ sk_A @ sk_B )
    = k1_xboole_0 ),
    inference('sup-',[status(thm)],['1','2'])).

thf(t48_xboole_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( k4_xboole_0 @ A @ ( k4_xboole_0 @ A @ B ) )
      = ( k3_xboole_0 @ A @ B ) ) )).

thf('4',plain,(
    ! [X11: $i,X12: $i] :
      ( ( k4_xboole_0 @ X11 @ ( k4_xboole_0 @ X11 @ X12 ) )
      = ( k3_xboole_0 @ X11 @ X12 ) ) ),
    inference(cnf,[status(esa)],[t48_xboole_1])).

thf('5',plain,
    ( ( k4_xboole_0 @ sk_A @ k1_xboole_0 )
    = ( k3_xboole_0 @ sk_A @ sk_B ) ),
    inference('sup+',[status(thm)],['3','4'])).

thf(t3_boole,axiom,(
    ! [A: $i] :
      ( ( k4_xboole_0 @ A @ k1_xboole_0 )
      = A ) )).

thf('6',plain,(
    ! [X8: $i] :
      ( ( k4_xboole_0 @ X8 @ k1_xboole_0 )
      = X8 ) ),
    inference(cnf,[status(esa)],[t3_boole])).

thf('7',plain,
    ( sk_A
    = ( k3_xboole_0 @ sk_A @ sk_B ) ),
    inference(demod,[status(thm)],['5','6'])).

thf('8',plain,(
    r1_xboole_0 @ sk_B @ sk_C ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(d7_xboole_0,axiom,(
    ! [A: $i,B: $i] :
      ( ( r1_xboole_0 @ A @ B )
    <=> ( ( k3_xboole_0 @ A @ B )
        = k1_xboole_0 ) ) )).

thf('9',plain,(
    ! [X0: $i,X1: $i] :
      ( ( ( k3_xboole_0 @ X0 @ X1 )
        = k1_xboole_0 )
      | ~ ( r1_xboole_0 @ X0 @ X1 ) ) ),
    inference(cnf,[status(esa)],[d7_xboole_0])).

thf('10',plain,
    ( ( k3_xboole_0 @ sk_B @ sk_C )
    = k1_xboole_0 ),
    inference('sup-',[status(thm)],['8','9'])).

thf(t47_xboole_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( k4_xboole_0 @ A @ ( k3_xboole_0 @ A @ B ) )
      = ( k4_xboole_0 @ A @ B ) ) )).

thf('11',plain,(
    ! [X9: $i,X10: $i] :
      ( ( k4_xboole_0 @ X9 @ ( k3_xboole_0 @ X9 @ X10 ) )
      = ( k4_xboole_0 @ X9 @ X10 ) ) ),
    inference(cnf,[status(esa)],[t47_xboole_1])).

thf('12',plain,
    ( ( k4_xboole_0 @ sk_B @ k1_xboole_0 )
    = ( k4_xboole_0 @ sk_B @ sk_C ) ),
    inference('sup+',[status(thm)],['10','11'])).

thf('13',plain,(
    ! [X8: $i] :
      ( ( k4_xboole_0 @ X8 @ k1_xboole_0 )
      = X8 ) ),
    inference(cnf,[status(esa)],[t3_boole])).

thf('14',plain,
    ( sk_B
    = ( k4_xboole_0 @ sk_B @ sk_C ) ),
    inference(demod,[status(thm)],['12','13'])).

thf(t49_xboole_1,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( k3_xboole_0 @ A @ ( k4_xboole_0 @ B @ C ) )
      = ( k4_xboole_0 @ ( k3_xboole_0 @ A @ B ) @ C ) ) )).

thf('15',plain,(
    ! [X13: $i,X14: $i,X15: $i] :
      ( ( k3_xboole_0 @ X13 @ ( k4_xboole_0 @ X14 @ X15 ) )
      = ( k4_xboole_0 @ ( k3_xboole_0 @ X13 @ X14 ) @ X15 ) ) ),
    inference(cnf,[status(esa)],[t49_xboole_1])).

thf('16',plain,(
    ! [X11: $i,X12: $i] :
      ( ( k4_xboole_0 @ X11 @ ( k4_xboole_0 @ X11 @ X12 ) )
      = ( k3_xboole_0 @ X11 @ X12 ) ) ),
    inference(cnf,[status(esa)],[t48_xboole_1])).

thf(t36_xboole_1,axiom,(
    ! [A: $i,B: $i] :
      ( r1_tarski @ ( k4_xboole_0 @ A @ B ) @ A ) )).

thf('17',plain,(
    ! [X6: $i,X7: $i] :
      ( r1_tarski @ ( k4_xboole_0 @ X6 @ X7 ) @ X6 ) ),
    inference(cnf,[status(esa)],[t36_xboole_1])).

thf('18',plain,(
    ! [X0: $i,X1: $i] :
      ( r1_tarski @ ( k3_xboole_0 @ X1 @ X0 ) @ X1 ) ),
    inference('sup+',[status(thm)],['16','17'])).

thf('19',plain,(
    ! [X3: $i,X5: $i] :
      ( ( ( k4_xboole_0 @ X3 @ X5 )
        = k1_xboole_0 )
      | ~ ( r1_tarski @ X3 @ X5 ) ) ),
    inference(cnf,[status(esa)],[l32_xboole_1])).

thf('20',plain,(
    ! [X0: $i,X1: $i] :
      ( ( k4_xboole_0 @ ( k3_xboole_0 @ X0 @ X1 ) @ X0 )
      = k1_xboole_0 ) ),
    inference('sup-',[status(thm)],['18','19'])).

thf('21',plain,(
    ! [X13: $i,X14: $i,X15: $i] :
      ( ( k3_xboole_0 @ X13 @ ( k4_xboole_0 @ X14 @ X15 ) )
      = ( k4_xboole_0 @ ( k3_xboole_0 @ X13 @ X14 ) @ X15 ) ) ),
    inference(cnf,[status(esa)],[t49_xboole_1])).

thf('22',plain,(
    ! [X0: $i,X1: $i] :
      ( ( k3_xboole_0 @ X0 @ ( k4_xboole_0 @ X1 @ X0 ) )
      = k1_xboole_0 ) ),
    inference(demod,[status(thm)],['20','21'])).

thf('23',plain,(
    ! [X0: $i,X2: $i] :
      ( ( r1_xboole_0 @ X0 @ X2 )
      | ( ( k3_xboole_0 @ X0 @ X2 )
       != k1_xboole_0 ) ) ),
    inference(cnf,[status(esa)],[d7_xboole_0])).

thf('24',plain,(
    ! [X0: $i,X1: $i] :
      ( ( k1_xboole_0 != k1_xboole_0 )
      | ( r1_xboole_0 @ X0 @ ( k4_xboole_0 @ X1 @ X0 ) ) ) ),
    inference('sup-',[status(thm)],['22','23'])).

thf('25',plain,(
    ! [X0: $i,X1: $i] :
      ( r1_xboole_0 @ X0 @ ( k4_xboole_0 @ X1 @ X0 ) ) ),
    inference(simplify,[status(thm)],['24'])).

thf('26',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( r1_xboole_0 @ X0 @ ( k3_xboole_0 @ X2 @ ( k4_xboole_0 @ X1 @ X0 ) ) ) ),
    inference('sup+',[status(thm)],['15','25'])).

thf('27',plain,(
    ! [X0: $i] :
      ( r1_xboole_0 @ sk_C @ ( k3_xboole_0 @ X0 @ sk_B ) ) ),
    inference('sup+',[status(thm)],['14','26'])).

thf('28',plain,(
    r1_xboole_0 @ sk_C @ sk_A ),
    inference('sup+',[status(thm)],['7','27'])).

thf('29',plain,(
    ! [X0: $i,X1: $i] :
      ( ( ( k3_xboole_0 @ X0 @ X1 )
        = k1_xboole_0 )
      | ~ ( r1_xboole_0 @ X0 @ X1 ) ) ),
    inference(cnf,[status(esa)],[d7_xboole_0])).

thf('30',plain,
    ( ( k3_xboole_0 @ sk_C @ sk_A )
    = k1_xboole_0 ),
    inference('sup-',[status(thm)],['28','29'])).

thf('31',plain,(
    ! [X9: $i,X10: $i] :
      ( ( k4_xboole_0 @ X9 @ ( k3_xboole_0 @ X9 @ X10 ) )
      = ( k4_xboole_0 @ X9 @ X10 ) ) ),
    inference(cnf,[status(esa)],[t47_xboole_1])).

thf('32',plain,
    ( ( k4_xboole_0 @ sk_C @ k1_xboole_0 )
    = ( k4_xboole_0 @ sk_C @ sk_A ) ),
    inference('sup+',[status(thm)],['30','31'])).

thf('33',plain,(
    ! [X8: $i] :
      ( ( k4_xboole_0 @ X8 @ k1_xboole_0 )
      = X8 ) ),
    inference(cnf,[status(esa)],[t3_boole])).

thf('34',plain,
    ( sk_C
    = ( k4_xboole_0 @ sk_C @ sk_A ) ),
    inference(demod,[status(thm)],['32','33'])).

thf('35',plain,(
    ! [X0: $i,X1: $i] :
      ( r1_xboole_0 @ X0 @ ( k4_xboole_0 @ X1 @ X0 ) ) ),
    inference(simplify,[status(thm)],['24'])).

thf('36',plain,(
    r1_xboole_0 @ sk_A @ sk_C ),
    inference('sup+',[status(thm)],['34','35'])).

thf('37',plain,(
    $false ),
    inference(demod,[status(thm)],['0','36'])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.10/0.13  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.10/0.14  % Command    : run_portfolio.sh /export/starexec/sandbox2/benchmark/theBenchmark.p /export/starexec/sandbox2/tmp/tmp.fzm7IO2Rk7
% 0.14/0.37  % Computer   : n002.cluster.edu
% 0.14/0.37  % Model      : x86_64 x86_64
% 0.14/0.37  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.14/0.37  % Memory     : 8042.1875MB
% 0.14/0.37  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.14/0.37  % CPULimit   : 60
% 0.14/0.37  % DateTime   : Tue Dec  1 15:55:07 EST 2020
% 0.14/0.38  % CPUTime    : 
% 0.14/0.38  % Running portfolio for 600 s
% 0.14/0.38  % File         : /export/starexec/sandbox2/benchmark/theBenchmark.p
% 0.14/0.38  % Number of cores: 8
% 0.14/0.38  % Python version: Python 3.6.8
% 0.14/0.38  % Running in FO mode
% 0.23/0.60  % Running /export/starexec/sandbox2/solver/bin/fo/fo7.sh for 78
% 0.23/0.60  % Solved by: fo/fo7.sh
% 0.23/0.60  To remain in the chosen logic fragment, unification with booleans has been disabled.
% 0.23/0.60  % done 316 iterations in 0.115s
% 0.23/0.60  % SZS status Theorem for '/export/starexec/sandbox2/benchmark/theBenchmark.p'
% 0.23/0.60  % SZS output start Refutation
% 0.23/0.60  thf(r1_tarski_type, type, r1_tarski: $i > $i > $o).
% 0.23/0.60  thf(k1_xboole_0_type, type, k1_xboole_0: $i).
% 0.23/0.60  thf(k3_xboole_0_type, type, k3_xboole_0: $i > $i > $i).
% 0.23/0.60  thf(k4_xboole_0_type, type, k4_xboole_0: $i > $i > $i).
% 0.23/0.60  thf(sk_A_type, type, sk_A: $i).
% 0.23/0.60  thf(sk_C_type, type, sk_C: $i).
% 0.23/0.60  thf(r1_xboole_0_type, type, r1_xboole_0: $i > $i > $o).
% 0.23/0.60  thf(sk_B_type, type, sk_B: $i).
% 0.23/0.60  thf(t63_xboole_1, conjecture,
% 0.23/0.60    (![A:$i,B:$i,C:$i]:
% 0.23/0.60     ( ( ( r1_tarski @ A @ B ) & ( r1_xboole_0 @ B @ C ) ) =>
% 0.23/0.60       ( r1_xboole_0 @ A @ C ) ))).
% 0.23/0.60  thf(zf_stmt_0, negated_conjecture,
% 0.23/0.60    (~( ![A:$i,B:$i,C:$i]:
% 0.23/0.60        ( ( ( r1_tarski @ A @ B ) & ( r1_xboole_0 @ B @ C ) ) =>
% 0.23/0.60          ( r1_xboole_0 @ A @ C ) ) )),
% 0.23/0.60    inference('cnf.neg', [status(esa)], [t63_xboole_1])).
% 0.23/0.60  thf('0', plain, (~ (r1_xboole_0 @ sk_A @ sk_C)),
% 0.23/0.60      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.23/0.60  thf('1', plain, ((r1_tarski @ sk_A @ sk_B)),
% 0.23/0.60      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.23/0.60  thf(l32_xboole_1, axiom,
% 0.23/0.60    (![A:$i,B:$i]:
% 0.23/0.60     ( ( ( k4_xboole_0 @ A @ B ) = ( k1_xboole_0 ) ) <=> ( r1_tarski @ A @ B ) ))).
% 0.23/0.60  thf('2', plain,
% 0.23/0.60      (![X3 : $i, X5 : $i]:
% 0.23/0.60         (((k4_xboole_0 @ X3 @ X5) = (k1_xboole_0)) | ~ (r1_tarski @ X3 @ X5))),
% 0.23/0.60      inference('cnf', [status(esa)], [l32_xboole_1])).
% 0.23/0.60  thf('3', plain, (((k4_xboole_0 @ sk_A @ sk_B) = (k1_xboole_0))),
% 0.23/0.60      inference('sup-', [status(thm)], ['1', '2'])).
% 0.23/0.60  thf(t48_xboole_1, axiom,
% 0.23/0.60    (![A:$i,B:$i]:
% 0.23/0.60     ( ( k4_xboole_0 @ A @ ( k4_xboole_0 @ A @ B ) ) = ( k3_xboole_0 @ A @ B ) ))).
% 0.23/0.60  thf('4', plain,
% 0.23/0.60      (![X11 : $i, X12 : $i]:
% 0.23/0.60         ((k4_xboole_0 @ X11 @ (k4_xboole_0 @ X11 @ X12))
% 0.23/0.60           = (k3_xboole_0 @ X11 @ X12))),
% 0.23/0.60      inference('cnf', [status(esa)], [t48_xboole_1])).
% 0.23/0.60  thf('5', plain,
% 0.23/0.60      (((k4_xboole_0 @ sk_A @ k1_xboole_0) = (k3_xboole_0 @ sk_A @ sk_B))),
% 0.23/0.60      inference('sup+', [status(thm)], ['3', '4'])).
% 0.23/0.60  thf(t3_boole, axiom,
% 0.23/0.60    (![A:$i]: ( ( k4_xboole_0 @ A @ k1_xboole_0 ) = ( A ) ))).
% 0.23/0.60  thf('6', plain, (![X8 : $i]: ((k4_xboole_0 @ X8 @ k1_xboole_0) = (X8))),
% 0.23/0.60      inference('cnf', [status(esa)], [t3_boole])).
% 0.23/0.60  thf('7', plain, (((sk_A) = (k3_xboole_0 @ sk_A @ sk_B))),
% 0.23/0.60      inference('demod', [status(thm)], ['5', '6'])).
% 0.23/0.60  thf('8', plain, ((r1_xboole_0 @ sk_B @ sk_C)),
% 0.23/0.60      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.23/0.60  thf(d7_xboole_0, axiom,
% 0.23/0.60    (![A:$i,B:$i]:
% 0.23/0.60     ( ( r1_xboole_0 @ A @ B ) <=>
% 0.23/0.60       ( ( k3_xboole_0 @ A @ B ) = ( k1_xboole_0 ) ) ))).
% 0.23/0.60  thf('9', plain,
% 0.23/0.60      (![X0 : $i, X1 : $i]:
% 0.23/0.60         (((k3_xboole_0 @ X0 @ X1) = (k1_xboole_0)) | ~ (r1_xboole_0 @ X0 @ X1))),
% 0.23/0.60      inference('cnf', [status(esa)], [d7_xboole_0])).
% 0.23/0.60  thf('10', plain, (((k3_xboole_0 @ sk_B @ sk_C) = (k1_xboole_0))),
% 0.23/0.60      inference('sup-', [status(thm)], ['8', '9'])).
% 0.23/0.60  thf(t47_xboole_1, axiom,
% 0.23/0.60    (![A:$i,B:$i]:
% 0.23/0.60     ( ( k4_xboole_0 @ A @ ( k3_xboole_0 @ A @ B ) ) = ( k4_xboole_0 @ A @ B ) ))).
% 0.23/0.60  thf('11', plain,
% 0.23/0.60      (![X9 : $i, X10 : $i]:
% 0.23/0.60         ((k4_xboole_0 @ X9 @ (k3_xboole_0 @ X9 @ X10))
% 0.23/0.60           = (k4_xboole_0 @ X9 @ X10))),
% 0.23/0.60      inference('cnf', [status(esa)], [t47_xboole_1])).
% 0.23/0.60  thf('12', plain,
% 0.23/0.60      (((k4_xboole_0 @ sk_B @ k1_xboole_0) = (k4_xboole_0 @ sk_B @ sk_C))),
% 0.23/0.60      inference('sup+', [status(thm)], ['10', '11'])).
% 0.23/0.60  thf('13', plain, (![X8 : $i]: ((k4_xboole_0 @ X8 @ k1_xboole_0) = (X8))),
% 0.23/0.60      inference('cnf', [status(esa)], [t3_boole])).
% 0.23/0.60  thf('14', plain, (((sk_B) = (k4_xboole_0 @ sk_B @ sk_C))),
% 0.23/0.60      inference('demod', [status(thm)], ['12', '13'])).
% 0.23/0.60  thf(t49_xboole_1, axiom,
% 0.23/0.60    (![A:$i,B:$i,C:$i]:
% 0.23/0.60     ( ( k3_xboole_0 @ A @ ( k4_xboole_0 @ B @ C ) ) =
% 0.23/0.60       ( k4_xboole_0 @ ( k3_xboole_0 @ A @ B ) @ C ) ))).
% 0.23/0.60  thf('15', plain,
% 0.23/0.60      (![X13 : $i, X14 : $i, X15 : $i]:
% 0.23/0.60         ((k3_xboole_0 @ X13 @ (k4_xboole_0 @ X14 @ X15))
% 0.23/0.60           = (k4_xboole_0 @ (k3_xboole_0 @ X13 @ X14) @ X15))),
% 0.23/0.60      inference('cnf', [status(esa)], [t49_xboole_1])).
% 0.23/0.60  thf('16', plain,
% 0.23/0.60      (![X11 : $i, X12 : $i]:
% 0.23/0.60         ((k4_xboole_0 @ X11 @ (k4_xboole_0 @ X11 @ X12))
% 0.23/0.60           = (k3_xboole_0 @ X11 @ X12))),
% 0.23/0.60      inference('cnf', [status(esa)], [t48_xboole_1])).
% 0.23/0.60  thf(t36_xboole_1, axiom,
% 0.23/0.60    (![A:$i,B:$i]: ( r1_tarski @ ( k4_xboole_0 @ A @ B ) @ A ))).
% 0.23/0.60  thf('17', plain,
% 0.23/0.60      (![X6 : $i, X7 : $i]: (r1_tarski @ (k4_xboole_0 @ X6 @ X7) @ X6)),
% 0.23/0.60      inference('cnf', [status(esa)], [t36_xboole_1])).
% 0.23/0.60  thf('18', plain,
% 0.23/0.60      (![X0 : $i, X1 : $i]: (r1_tarski @ (k3_xboole_0 @ X1 @ X0) @ X1)),
% 0.23/0.60      inference('sup+', [status(thm)], ['16', '17'])).
% 0.23/0.60  thf('19', plain,
% 0.23/0.60      (![X3 : $i, X5 : $i]:
% 0.23/0.60         (((k4_xboole_0 @ X3 @ X5) = (k1_xboole_0)) | ~ (r1_tarski @ X3 @ X5))),
% 0.23/0.60      inference('cnf', [status(esa)], [l32_xboole_1])).
% 0.23/0.60  thf('20', plain,
% 0.23/0.60      (![X0 : $i, X1 : $i]:
% 0.23/0.60         ((k4_xboole_0 @ (k3_xboole_0 @ X0 @ X1) @ X0) = (k1_xboole_0))),
% 0.23/0.60      inference('sup-', [status(thm)], ['18', '19'])).
% 0.23/0.60  thf('21', plain,
% 0.23/0.60      (![X13 : $i, X14 : $i, X15 : $i]:
% 0.23/0.60         ((k3_xboole_0 @ X13 @ (k4_xboole_0 @ X14 @ X15))
% 0.23/0.60           = (k4_xboole_0 @ (k3_xboole_0 @ X13 @ X14) @ X15))),
% 0.23/0.60      inference('cnf', [status(esa)], [t49_xboole_1])).
% 0.23/0.60  thf('22', plain,
% 0.23/0.60      (![X0 : $i, X1 : $i]:
% 0.23/0.60         ((k3_xboole_0 @ X0 @ (k4_xboole_0 @ X1 @ X0)) = (k1_xboole_0))),
% 0.23/0.60      inference('demod', [status(thm)], ['20', '21'])).
% 0.23/0.60  thf('23', plain,
% 0.23/0.60      (![X0 : $i, X2 : $i]:
% 0.23/0.60         ((r1_xboole_0 @ X0 @ X2) | ((k3_xboole_0 @ X0 @ X2) != (k1_xboole_0)))),
% 0.23/0.60      inference('cnf', [status(esa)], [d7_xboole_0])).
% 0.23/0.60  thf('24', plain,
% 0.23/0.60      (![X0 : $i, X1 : $i]:
% 0.23/0.60         (((k1_xboole_0) != (k1_xboole_0))
% 0.23/0.60          | (r1_xboole_0 @ X0 @ (k4_xboole_0 @ X1 @ X0)))),
% 0.23/0.60      inference('sup-', [status(thm)], ['22', '23'])).
% 0.23/0.60  thf('25', plain,
% 0.23/0.60      (![X0 : $i, X1 : $i]: (r1_xboole_0 @ X0 @ (k4_xboole_0 @ X1 @ X0))),
% 0.23/0.60      inference('simplify', [status(thm)], ['24'])).
% 0.23/0.60  thf('26', plain,
% 0.23/0.60      (![X0 : $i, X1 : $i, X2 : $i]:
% 0.23/0.60         (r1_xboole_0 @ X0 @ (k3_xboole_0 @ X2 @ (k4_xboole_0 @ X1 @ X0)))),
% 0.23/0.60      inference('sup+', [status(thm)], ['15', '25'])).
% 0.23/0.60  thf('27', plain,
% 0.23/0.60      (![X0 : $i]: (r1_xboole_0 @ sk_C @ (k3_xboole_0 @ X0 @ sk_B))),
% 0.23/0.60      inference('sup+', [status(thm)], ['14', '26'])).
% 0.23/0.60  thf('28', plain, ((r1_xboole_0 @ sk_C @ sk_A)),
% 0.23/0.60      inference('sup+', [status(thm)], ['7', '27'])).
% 0.23/0.60  thf('29', plain,
% 0.23/0.60      (![X0 : $i, X1 : $i]:
% 0.23/0.60         (((k3_xboole_0 @ X0 @ X1) = (k1_xboole_0)) | ~ (r1_xboole_0 @ X0 @ X1))),
% 0.23/0.60      inference('cnf', [status(esa)], [d7_xboole_0])).
% 0.23/0.60  thf('30', plain, (((k3_xboole_0 @ sk_C @ sk_A) = (k1_xboole_0))),
% 0.23/0.60      inference('sup-', [status(thm)], ['28', '29'])).
% 0.23/0.60  thf('31', plain,
% 0.23/0.60      (![X9 : $i, X10 : $i]:
% 0.23/0.60         ((k4_xboole_0 @ X9 @ (k3_xboole_0 @ X9 @ X10))
% 0.23/0.60           = (k4_xboole_0 @ X9 @ X10))),
% 0.23/0.60      inference('cnf', [status(esa)], [t47_xboole_1])).
% 0.23/0.60  thf('32', plain,
% 0.23/0.60      (((k4_xboole_0 @ sk_C @ k1_xboole_0) = (k4_xboole_0 @ sk_C @ sk_A))),
% 0.23/0.60      inference('sup+', [status(thm)], ['30', '31'])).
% 0.23/0.60  thf('33', plain, (![X8 : $i]: ((k4_xboole_0 @ X8 @ k1_xboole_0) = (X8))),
% 0.23/0.60      inference('cnf', [status(esa)], [t3_boole])).
% 0.23/0.60  thf('34', plain, (((sk_C) = (k4_xboole_0 @ sk_C @ sk_A))),
% 0.23/0.60      inference('demod', [status(thm)], ['32', '33'])).
% 0.23/0.60  thf('35', plain,
% 0.23/0.60      (![X0 : $i, X1 : $i]: (r1_xboole_0 @ X0 @ (k4_xboole_0 @ X1 @ X0))),
% 0.23/0.60      inference('simplify', [status(thm)], ['24'])).
% 0.23/0.60  thf('36', plain, ((r1_xboole_0 @ sk_A @ sk_C)),
% 0.23/0.60      inference('sup+', [status(thm)], ['34', '35'])).
% 0.23/0.60  thf('37', plain, ($false), inference('demod', [status(thm)], ['0', '36'])).
% 0.23/0.60  
% 0.23/0.60  % SZS output end Refutation
% 0.23/0.60  
% 0.41/0.61  % Zipperpin 1.5 exiting
%------------------------------------------------------------------------------
