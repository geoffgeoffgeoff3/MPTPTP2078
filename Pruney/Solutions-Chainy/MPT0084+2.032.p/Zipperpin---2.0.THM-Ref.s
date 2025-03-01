%------------------------------------------------------------------------------
% File       : Zipperpin---2.0
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_portfolio.sh /export/starexec/sandbox2/benchmark/theBenchmark.p /export/starexec/sandbox2/tmp/tmp.xy3C1HVbch

% Computer   : n022.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 13:25:23 EST 2020

% Result     : Theorem 0.76s
% Output     : Refutation 0.76s
% Verified   : 
% Statistics : Number of formulae       :   76 ( 132 expanded)
%              Number of leaves         :   20 (  51 expanded)
%              Depth                    :   15
%              Number of atoms          :  525 (1013 expanded)
%              Number of equality atoms :   45 (  90 expanded)
%              Maximal formula depth    :   11 (   6 average)

% Comments   : 
%------------------------------------------------------------------------------
thf(r1_xboole_0_type,type,(
    r1_xboole_0: $i > $i > $o )).

thf(sk_C_type,type,(
    sk_C: $i > $i > $i )).

thf(r2_hidden_type,type,(
    r2_hidden: $i > $i > $o )).

thf(sk_B_type,type,(
    sk_B: $i )).

thf(k3_xboole_0_type,type,(
    k3_xboole_0: $i > $i > $i )).

thf(k2_xboole_0_type,type,(
    k2_xboole_0: $i > $i > $i )).

thf(sk_C_1_type,type,(
    sk_C_1: $i )).

thf(sk_A_type,type,(
    sk_A: $i )).

thf(k1_xboole_0_type,type,(
    k1_xboole_0: $i )).

thf(r1_tarski_type,type,(
    r1_tarski: $i > $i > $o )).

thf(k4_xboole_0_type,type,(
    k4_xboole_0: $i > $i > $i )).

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

thf(commutativity_k3_xboole_0,axiom,(
    ! [A: $i,B: $i] :
      ( ( k3_xboole_0 @ A @ B )
      = ( k3_xboole_0 @ B @ A ) ) )).

thf('1',plain,(
    ! [X0: $i,X1: $i] :
      ( ( k3_xboole_0 @ X1 @ X0 )
      = ( k3_xboole_0 @ X0 @ X1 ) ) ),
    inference(cnf,[status(esa)],[commutativity_k3_xboole_0])).

thf(t4_xboole_0,axiom,(
    ! [A: $i,B: $i] :
      ( ~ ( ? [C: $i] :
              ( r2_hidden @ C @ ( k3_xboole_0 @ A @ B ) )
          & ( r1_xboole_0 @ A @ B ) )
      & ~ ( ~ ( r1_xboole_0 @ A @ B )
          & ! [C: $i] :
              ~ ( r2_hidden @ C @ ( k3_xboole_0 @ A @ B ) ) ) ) )).

thf('2',plain,(
    ! [X2: $i,X3: $i] :
      ( ( r1_xboole_0 @ X2 @ X3 )
      | ( r2_hidden @ ( sk_C @ X3 @ X2 ) @ ( k3_xboole_0 @ X2 @ X3 ) ) ) ),
    inference(cnf,[status(esa)],[t4_xboole_0])).

thf('3',plain,(
    ! [X0: $i,X1: $i] :
      ( ( r2_hidden @ ( sk_C @ X1 @ X0 ) @ ( k3_xboole_0 @ X1 @ X0 ) )
      | ( r1_xboole_0 @ X0 @ X1 ) ) ),
    inference('sup+',[status(thm)],['1','2'])).

thf('4',plain,(
    r1_xboole_0 @ sk_A @ ( k3_xboole_0 @ sk_B @ sk_C_1 ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('5',plain,(
    ! [X2: $i,X3: $i] :
      ( ( r1_xboole_0 @ X2 @ X3 )
      | ( r2_hidden @ ( sk_C @ X3 @ X2 ) @ ( k3_xboole_0 @ X2 @ X3 ) ) ) ),
    inference(cnf,[status(esa)],[t4_xboole_0])).

thf('6',plain,(
    ! [X0: $i,X1: $i] :
      ( ( k3_xboole_0 @ X1 @ X0 )
      = ( k3_xboole_0 @ X0 @ X1 ) ) ),
    inference(cnf,[status(esa)],[commutativity_k3_xboole_0])).

thf('7',plain,(
    ! [X2: $i,X4: $i,X5: $i] :
      ( ~ ( r2_hidden @ X4 @ ( k3_xboole_0 @ X2 @ X5 ) )
      | ~ ( r1_xboole_0 @ X2 @ X5 ) ) ),
    inference(cnf,[status(esa)],[t4_xboole_0])).

thf('8',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( ~ ( r2_hidden @ X2 @ ( k3_xboole_0 @ X1 @ X0 ) )
      | ~ ( r1_xboole_0 @ X0 @ X1 ) ) ),
    inference('sup-',[status(thm)],['6','7'])).

thf('9',plain,(
    ! [X0: $i,X1: $i] :
      ( ( r1_xboole_0 @ X1 @ X0 )
      | ~ ( r1_xboole_0 @ X0 @ X1 ) ) ),
    inference('sup-',[status(thm)],['5','8'])).

thf('10',plain,(
    r1_xboole_0 @ ( k3_xboole_0 @ sk_B @ sk_C_1 ) @ sk_A ),
    inference('sup-',[status(thm)],['4','9'])).

thf('11',plain,(
    ! [X0: $i,X1: $i] :
      ( ( k3_xboole_0 @ X1 @ X0 )
      = ( k3_xboole_0 @ X0 @ X1 ) ) ),
    inference(cnf,[status(esa)],[commutativity_k3_xboole_0])).

thf(t3_boole,axiom,(
    ! [A: $i] :
      ( ( k4_xboole_0 @ A @ k1_xboole_0 )
      = A ) )).

thf('12',plain,(
    ! [X7: $i] :
      ( ( k4_xboole_0 @ X7 @ k1_xboole_0 )
      = X7 ) ),
    inference(cnf,[status(esa)],[t3_boole])).

thf(t48_xboole_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( k4_xboole_0 @ A @ ( k4_xboole_0 @ A @ B ) )
      = ( k3_xboole_0 @ A @ B ) ) )).

thf('13',plain,(
    ! [X12: $i,X13: $i] :
      ( ( k4_xboole_0 @ X12 @ ( k4_xboole_0 @ X12 @ X13 ) )
      = ( k3_xboole_0 @ X12 @ X13 ) ) ),
    inference(cnf,[status(esa)],[t48_xboole_1])).

thf('14',plain,(
    ! [X0: $i] :
      ( ( k4_xboole_0 @ X0 @ X0 )
      = ( k3_xboole_0 @ X0 @ k1_xboole_0 ) ) ),
    inference('sup+',[status(thm)],['12','13'])).

thf(t2_boole,axiom,(
    ! [A: $i] :
      ( ( k3_xboole_0 @ A @ k1_xboole_0 )
      = k1_xboole_0 ) )).

thf('15',plain,(
    ! [X6: $i] :
      ( ( k3_xboole_0 @ X6 @ k1_xboole_0 )
      = k1_xboole_0 ) ),
    inference(cnf,[status(esa)],[t2_boole])).

thf('16',plain,(
    ! [X0: $i] :
      ( ( k4_xboole_0 @ X0 @ X0 )
      = k1_xboole_0 ) ),
    inference(demod,[status(thm)],['14','15'])).

thf(t52_xboole_1,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( k4_xboole_0 @ A @ ( k4_xboole_0 @ B @ C ) )
      = ( k2_xboole_0 @ ( k4_xboole_0 @ A @ B ) @ ( k3_xboole_0 @ A @ C ) ) ) )).

thf('17',plain,(
    ! [X14: $i,X15: $i,X16: $i] :
      ( ( k4_xboole_0 @ X14 @ ( k4_xboole_0 @ X15 @ X16 ) )
      = ( k2_xboole_0 @ ( k4_xboole_0 @ X14 @ X15 ) @ ( k3_xboole_0 @ X14 @ X16 ) ) ) ),
    inference(cnf,[status(esa)],[t52_xboole_1])).

thf(t46_xboole_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( k4_xboole_0 @ A @ ( k2_xboole_0 @ A @ B ) )
      = k1_xboole_0 ) )).

thf('18',plain,(
    ! [X10: $i,X11: $i] :
      ( ( k4_xboole_0 @ X10 @ ( k2_xboole_0 @ X10 @ X11 ) )
      = k1_xboole_0 ) ),
    inference(cnf,[status(esa)],[t46_xboole_1])).

thf('19',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( ( k4_xboole_0 @ ( k4_xboole_0 @ X2 @ X1 ) @ ( k4_xboole_0 @ X2 @ ( k4_xboole_0 @ X1 @ X0 ) ) )
      = k1_xboole_0 ) ),
    inference('sup+',[status(thm)],['17','18'])).

thf('20',plain,(
    ! [X0: $i,X1: $i] :
      ( ( k4_xboole_0 @ ( k4_xboole_0 @ ( k4_xboole_0 @ X1 @ X0 ) @ X1 ) @ k1_xboole_0 )
      = k1_xboole_0 ) ),
    inference('sup+',[status(thm)],['16','19'])).

thf('21',plain,(
    ! [X7: $i] :
      ( ( k4_xboole_0 @ X7 @ k1_xboole_0 )
      = X7 ) ),
    inference(cnf,[status(esa)],[t3_boole])).

thf('22',plain,(
    ! [X0: $i,X1: $i] :
      ( ( k4_xboole_0 @ ( k4_xboole_0 @ X1 @ X0 ) @ X1 )
      = k1_xboole_0 ) ),
    inference(demod,[status(thm)],['20','21'])).

thf('23',plain,(
    ! [X12: $i,X13: $i] :
      ( ( k4_xboole_0 @ X12 @ ( k4_xboole_0 @ X12 @ X13 ) )
      = ( k3_xboole_0 @ X12 @ X13 ) ) ),
    inference(cnf,[status(esa)],[t48_xboole_1])).

thf('24',plain,(
    ! [X0: $i,X1: $i] :
      ( ( k4_xboole_0 @ ( k4_xboole_0 @ X0 @ X1 ) @ k1_xboole_0 )
      = ( k3_xboole_0 @ ( k4_xboole_0 @ X0 @ X1 ) @ X0 ) ) ),
    inference('sup+',[status(thm)],['22','23'])).

thf('25',plain,(
    ! [X7: $i] :
      ( ( k4_xboole_0 @ X7 @ k1_xboole_0 )
      = X7 ) ),
    inference(cnf,[status(esa)],[t3_boole])).

thf('26',plain,(
    ! [X0: $i,X1: $i] :
      ( ( k3_xboole_0 @ X1 @ X0 )
      = ( k3_xboole_0 @ X0 @ X1 ) ) ),
    inference(cnf,[status(esa)],[commutativity_k3_xboole_0])).

thf('27',plain,(
    ! [X0: $i,X1: $i] :
      ( ( k4_xboole_0 @ X0 @ X1 )
      = ( k3_xboole_0 @ X0 @ ( k4_xboole_0 @ X0 @ X1 ) ) ) ),
    inference(demod,[status(thm)],['24','25','26'])).

thf('28',plain,(
    ! [X12: $i,X13: $i] :
      ( ( k4_xboole_0 @ X12 @ ( k4_xboole_0 @ X12 @ X13 ) )
      = ( k3_xboole_0 @ X12 @ X13 ) ) ),
    inference(cnf,[status(esa)],[t48_xboole_1])).

thf('29',plain,(
    r1_tarski @ sk_A @ sk_C_1 ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(t45_xboole_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( r1_tarski @ A @ B )
     => ( B
        = ( k2_xboole_0 @ A @ ( k4_xboole_0 @ B @ A ) ) ) ) )).

thf('30',plain,(
    ! [X8: $i,X9: $i] :
      ( ( X9
        = ( k2_xboole_0 @ X8 @ ( k4_xboole_0 @ X9 @ X8 ) ) )
      | ~ ( r1_tarski @ X8 @ X9 ) ) ),
    inference(cnf,[status(esa)],[t45_xboole_1])).

thf('31',plain,
    ( sk_C_1
    = ( k2_xboole_0 @ sk_A @ ( k4_xboole_0 @ sk_C_1 @ sk_A ) ) ),
    inference('sup-',[status(thm)],['29','30'])).

thf('32',plain,(
    ! [X10: $i,X11: $i] :
      ( ( k4_xboole_0 @ X10 @ ( k2_xboole_0 @ X10 @ X11 ) )
      = k1_xboole_0 ) ),
    inference(cnf,[status(esa)],[t46_xboole_1])).

thf('33',plain,
    ( ( k4_xboole_0 @ sk_A @ sk_C_1 )
    = k1_xboole_0 ),
    inference('sup+',[status(thm)],['31','32'])).

thf('34',plain,(
    ! [X14: $i,X15: $i,X16: $i] :
      ( ( k4_xboole_0 @ X14 @ ( k4_xboole_0 @ X15 @ X16 ) )
      = ( k2_xboole_0 @ ( k4_xboole_0 @ X14 @ X15 ) @ ( k3_xboole_0 @ X14 @ X16 ) ) ) ),
    inference(cnf,[status(esa)],[t52_xboole_1])).

thf('35',plain,(
    ! [X0: $i] :
      ( ( k4_xboole_0 @ sk_A @ ( k4_xboole_0 @ sk_C_1 @ X0 ) )
      = ( k2_xboole_0 @ k1_xboole_0 @ ( k3_xboole_0 @ sk_A @ X0 ) ) ) ),
    inference('sup+',[status(thm)],['33','34'])).

thf('36',plain,(
    ! [X0: $i] :
      ( ( k4_xboole_0 @ X0 @ X0 )
      = k1_xboole_0 ) ),
    inference(demod,[status(thm)],['14','15'])).

thf('37',plain,(
    ! [X14: $i,X15: $i,X16: $i] :
      ( ( k4_xboole_0 @ X14 @ ( k4_xboole_0 @ X15 @ X16 ) )
      = ( k2_xboole_0 @ ( k4_xboole_0 @ X14 @ X15 ) @ ( k3_xboole_0 @ X14 @ X16 ) ) ) ),
    inference(cnf,[status(esa)],[t52_xboole_1])).

thf('38',plain,(
    ! [X0: $i,X1: $i] :
      ( ( k4_xboole_0 @ X1 @ ( k4_xboole_0 @ X1 @ X0 ) )
      = ( k2_xboole_0 @ k1_xboole_0 @ ( k3_xboole_0 @ X1 @ X0 ) ) ) ),
    inference('sup+',[status(thm)],['36','37'])).

thf('39',plain,(
    ! [X12: $i,X13: $i] :
      ( ( k4_xboole_0 @ X12 @ ( k4_xboole_0 @ X12 @ X13 ) )
      = ( k3_xboole_0 @ X12 @ X13 ) ) ),
    inference(cnf,[status(esa)],[t48_xboole_1])).

thf('40',plain,(
    ! [X0: $i,X1: $i] :
      ( ( k3_xboole_0 @ X1 @ X0 )
      = ( k2_xboole_0 @ k1_xboole_0 @ ( k3_xboole_0 @ X1 @ X0 ) ) ) ),
    inference(demod,[status(thm)],['38','39'])).

thf('41',plain,(
    ! [X0: $i] :
      ( ( k4_xboole_0 @ sk_A @ ( k4_xboole_0 @ sk_C_1 @ X0 ) )
      = ( k3_xboole_0 @ sk_A @ X0 ) ) ),
    inference(demod,[status(thm)],['35','40'])).

thf('42',plain,(
    ! [X0: $i] :
      ( ( k4_xboole_0 @ sk_A @ ( k3_xboole_0 @ sk_C_1 @ X0 ) )
      = ( k3_xboole_0 @ sk_A @ ( k4_xboole_0 @ sk_C_1 @ X0 ) ) ) ),
    inference('sup+',[status(thm)],['28','41'])).

thf('43',plain,(
    ! [X0: $i] :
      ( ( k4_xboole_0 @ sk_A @ ( k4_xboole_0 @ sk_C_1 @ X0 ) )
      = ( k3_xboole_0 @ sk_A @ ( k4_xboole_0 @ sk_C_1 @ ( k4_xboole_0 @ sk_C_1 @ X0 ) ) ) ) ),
    inference('sup+',[status(thm)],['27','42'])).

thf('44',plain,(
    ! [X0: $i] :
      ( ( k4_xboole_0 @ sk_A @ ( k4_xboole_0 @ sk_C_1 @ X0 ) )
      = ( k3_xboole_0 @ sk_A @ X0 ) ) ),
    inference(demod,[status(thm)],['35','40'])).

thf('45',plain,(
    ! [X12: $i,X13: $i] :
      ( ( k4_xboole_0 @ X12 @ ( k4_xboole_0 @ X12 @ X13 ) )
      = ( k3_xboole_0 @ X12 @ X13 ) ) ),
    inference(cnf,[status(esa)],[t48_xboole_1])).

thf('46',plain,(
    ! [X0: $i] :
      ( ( k3_xboole_0 @ sk_A @ X0 )
      = ( k3_xboole_0 @ sk_A @ ( k3_xboole_0 @ sk_C_1 @ X0 ) ) ) ),
    inference(demod,[status(thm)],['43','44','45'])).

thf('47',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( ~ ( r2_hidden @ X2 @ ( k3_xboole_0 @ X1 @ X0 ) )
      | ~ ( r1_xboole_0 @ X0 @ X1 ) ) ),
    inference('sup-',[status(thm)],['6','7'])).

thf('48',plain,(
    ! [X0: $i,X1: $i] :
      ( ~ ( r2_hidden @ X1 @ ( k3_xboole_0 @ sk_A @ X0 ) )
      | ~ ( r1_xboole_0 @ ( k3_xboole_0 @ sk_C_1 @ X0 ) @ sk_A ) ) ),
    inference('sup-',[status(thm)],['46','47'])).

thf('49',plain,(
    ! [X0: $i,X1: $i] :
      ( ~ ( r1_xboole_0 @ ( k3_xboole_0 @ X0 @ sk_C_1 ) @ sk_A )
      | ~ ( r2_hidden @ X1 @ ( k3_xboole_0 @ sk_A @ X0 ) ) ) ),
    inference('sup-',[status(thm)],['11','48'])).

thf('50',plain,(
    ! [X0: $i] :
      ~ ( r2_hidden @ X0 @ ( k3_xboole_0 @ sk_A @ sk_B ) ) ),
    inference('sup-',[status(thm)],['10','49'])).

thf('51',plain,(
    ! [X0: $i,X1: $i] :
      ( ( k3_xboole_0 @ X1 @ X0 )
      = ( k3_xboole_0 @ X0 @ X1 ) ) ),
    inference(cnf,[status(esa)],[commutativity_k3_xboole_0])).

thf('52',plain,(
    ! [X0: $i] :
      ~ ( r2_hidden @ X0 @ ( k3_xboole_0 @ sk_B @ sk_A ) ) ),
    inference(demod,[status(thm)],['50','51'])).

thf('53',plain,(
    r1_xboole_0 @ sk_A @ sk_B ),
    inference('sup-',[status(thm)],['3','52'])).

thf('54',plain,(
    $false ),
    inference(demod,[status(thm)],['0','53'])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.11/0.13  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.11/0.14  % Command    : run_portfolio.sh /export/starexec/sandbox2/benchmark/theBenchmark.p /export/starexec/sandbox2/tmp/tmp.xy3C1HVbch
% 0.13/0.35  % Computer   : n022.cluster.edu
% 0.13/0.35  % Model      : x86_64 x86_64
% 0.13/0.35  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.35  % Memory     : 8042.1875MB
% 0.13/0.35  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.35  % CPULimit   : 60
% 0.13/0.35  % DateTime   : Tue Dec  1 14:03:11 EST 2020
% 0.13/0.35  % CPUTime    : 
% 0.13/0.35  % Running portfolio for 600 s
% 0.13/0.35  % File         : /export/starexec/sandbox2/benchmark/theBenchmark.p
% 0.13/0.35  % Number of cores: 8
% 0.13/0.36  % Python version: Python 3.6.8
% 0.13/0.36  % Running in FO mode
% 0.76/0.95  % Running /export/starexec/sandbox2/solver/bin/fo/fo7.sh for 78
% 0.76/0.95  % Solved by: fo/fo7.sh
% 0.76/0.95  To remain in the chosen logic fragment, unification with booleans has been disabled.
% 0.76/0.95  % done 1312 iterations in 0.483s
% 0.76/0.95  % SZS status Theorem for '/export/starexec/sandbox2/benchmark/theBenchmark.p'
% 0.76/0.95  % SZS output start Refutation
% 0.76/0.95  thf(r1_xboole_0_type, type, r1_xboole_0: $i > $i > $o).
% 0.76/0.95  thf(sk_C_type, type, sk_C: $i > $i > $i).
% 0.76/0.95  thf(r2_hidden_type, type, r2_hidden: $i > $i > $o).
% 0.76/0.95  thf(sk_B_type, type, sk_B: $i).
% 0.76/0.95  thf(k3_xboole_0_type, type, k3_xboole_0: $i > $i > $i).
% 0.76/0.95  thf(k2_xboole_0_type, type, k2_xboole_0: $i > $i > $i).
% 0.76/0.95  thf(sk_C_1_type, type, sk_C_1: $i).
% 0.76/0.95  thf(sk_A_type, type, sk_A: $i).
% 0.76/0.95  thf(k1_xboole_0_type, type, k1_xboole_0: $i).
% 0.76/0.95  thf(r1_tarski_type, type, r1_tarski: $i > $i > $o).
% 0.76/0.95  thf(k4_xboole_0_type, type, k4_xboole_0: $i > $i > $i).
% 0.76/0.95  thf(t77_xboole_1, conjecture,
% 0.76/0.95    (![A:$i,B:$i,C:$i]:
% 0.76/0.95     ( ~( ( ~( r1_xboole_0 @ A @ B ) ) & ( r1_tarski @ A @ C ) & 
% 0.76/0.95          ( r1_xboole_0 @ A @ ( k3_xboole_0 @ B @ C ) ) ) ))).
% 0.76/0.95  thf(zf_stmt_0, negated_conjecture,
% 0.76/0.95    (~( ![A:$i,B:$i,C:$i]:
% 0.76/0.95        ( ~( ( ~( r1_xboole_0 @ A @ B ) ) & ( r1_tarski @ A @ C ) & 
% 0.76/0.95             ( r1_xboole_0 @ A @ ( k3_xboole_0 @ B @ C ) ) ) ) )),
% 0.76/0.95    inference('cnf.neg', [status(esa)], [t77_xboole_1])).
% 0.76/0.95  thf('0', plain, (~ (r1_xboole_0 @ sk_A @ sk_B)),
% 0.76/0.95      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.76/0.95  thf(commutativity_k3_xboole_0, axiom,
% 0.76/0.95    (![A:$i,B:$i]: ( ( k3_xboole_0 @ A @ B ) = ( k3_xboole_0 @ B @ A ) ))).
% 0.76/0.95  thf('1', plain,
% 0.76/0.95      (![X0 : $i, X1 : $i]: ((k3_xboole_0 @ X1 @ X0) = (k3_xboole_0 @ X0 @ X1))),
% 0.76/0.95      inference('cnf', [status(esa)], [commutativity_k3_xboole_0])).
% 0.76/0.95  thf(t4_xboole_0, axiom,
% 0.76/0.95    (![A:$i,B:$i]:
% 0.76/0.95     ( ( ~( ( ?[C:$i]: ( r2_hidden @ C @ ( k3_xboole_0 @ A @ B ) ) ) & 
% 0.76/0.95            ( r1_xboole_0 @ A @ B ) ) ) & 
% 0.76/0.95       ( ~( ( ~( r1_xboole_0 @ A @ B ) ) & 
% 0.76/0.95            ( ![C:$i]: ( ~( r2_hidden @ C @ ( k3_xboole_0 @ A @ B ) ) ) ) ) ) ))).
% 0.76/0.95  thf('2', plain,
% 0.76/0.95      (![X2 : $i, X3 : $i]:
% 0.76/0.95         ((r1_xboole_0 @ X2 @ X3)
% 0.76/0.95          | (r2_hidden @ (sk_C @ X3 @ X2) @ (k3_xboole_0 @ X2 @ X3)))),
% 0.76/0.95      inference('cnf', [status(esa)], [t4_xboole_0])).
% 0.76/0.95  thf('3', plain,
% 0.76/0.95      (![X0 : $i, X1 : $i]:
% 0.76/0.95         ((r2_hidden @ (sk_C @ X1 @ X0) @ (k3_xboole_0 @ X1 @ X0))
% 0.76/0.95          | (r1_xboole_0 @ X0 @ X1))),
% 0.76/0.95      inference('sup+', [status(thm)], ['1', '2'])).
% 0.76/0.95  thf('4', plain, ((r1_xboole_0 @ sk_A @ (k3_xboole_0 @ sk_B @ sk_C_1))),
% 0.76/0.95      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.76/0.95  thf('5', plain,
% 0.76/0.95      (![X2 : $i, X3 : $i]:
% 0.76/0.95         ((r1_xboole_0 @ X2 @ X3)
% 0.76/0.95          | (r2_hidden @ (sk_C @ X3 @ X2) @ (k3_xboole_0 @ X2 @ X3)))),
% 0.76/0.95      inference('cnf', [status(esa)], [t4_xboole_0])).
% 0.76/0.95  thf('6', plain,
% 0.76/0.95      (![X0 : $i, X1 : $i]: ((k3_xboole_0 @ X1 @ X0) = (k3_xboole_0 @ X0 @ X1))),
% 0.76/0.95      inference('cnf', [status(esa)], [commutativity_k3_xboole_0])).
% 0.76/0.95  thf('7', plain,
% 0.76/0.95      (![X2 : $i, X4 : $i, X5 : $i]:
% 0.76/0.95         (~ (r2_hidden @ X4 @ (k3_xboole_0 @ X2 @ X5))
% 0.76/0.95          | ~ (r1_xboole_0 @ X2 @ X5))),
% 0.76/0.95      inference('cnf', [status(esa)], [t4_xboole_0])).
% 0.76/0.95  thf('8', plain,
% 0.76/0.95      (![X0 : $i, X1 : $i, X2 : $i]:
% 0.76/0.95         (~ (r2_hidden @ X2 @ (k3_xboole_0 @ X1 @ X0))
% 0.76/0.95          | ~ (r1_xboole_0 @ X0 @ X1))),
% 0.76/0.95      inference('sup-', [status(thm)], ['6', '7'])).
% 0.76/0.95  thf('9', plain,
% 0.76/0.95      (![X0 : $i, X1 : $i]:
% 0.76/0.95         ((r1_xboole_0 @ X1 @ X0) | ~ (r1_xboole_0 @ X0 @ X1))),
% 0.76/0.95      inference('sup-', [status(thm)], ['5', '8'])).
% 0.76/0.95  thf('10', plain, ((r1_xboole_0 @ (k3_xboole_0 @ sk_B @ sk_C_1) @ sk_A)),
% 0.76/0.95      inference('sup-', [status(thm)], ['4', '9'])).
% 0.76/0.95  thf('11', plain,
% 0.76/0.95      (![X0 : $i, X1 : $i]: ((k3_xboole_0 @ X1 @ X0) = (k3_xboole_0 @ X0 @ X1))),
% 0.76/0.95      inference('cnf', [status(esa)], [commutativity_k3_xboole_0])).
% 0.76/0.95  thf(t3_boole, axiom,
% 0.76/0.95    (![A:$i]: ( ( k4_xboole_0 @ A @ k1_xboole_0 ) = ( A ) ))).
% 0.76/0.95  thf('12', plain, (![X7 : $i]: ((k4_xboole_0 @ X7 @ k1_xboole_0) = (X7))),
% 0.76/0.95      inference('cnf', [status(esa)], [t3_boole])).
% 0.76/0.95  thf(t48_xboole_1, axiom,
% 0.76/0.95    (![A:$i,B:$i]:
% 0.76/0.95     ( ( k4_xboole_0 @ A @ ( k4_xboole_0 @ A @ B ) ) = ( k3_xboole_0 @ A @ B ) ))).
% 0.76/0.95  thf('13', plain,
% 0.76/0.95      (![X12 : $i, X13 : $i]:
% 0.76/0.95         ((k4_xboole_0 @ X12 @ (k4_xboole_0 @ X12 @ X13))
% 0.76/0.95           = (k3_xboole_0 @ X12 @ X13))),
% 0.76/0.95      inference('cnf', [status(esa)], [t48_xboole_1])).
% 0.76/0.95  thf('14', plain,
% 0.76/0.95      (![X0 : $i]: ((k4_xboole_0 @ X0 @ X0) = (k3_xboole_0 @ X0 @ k1_xboole_0))),
% 0.76/0.95      inference('sup+', [status(thm)], ['12', '13'])).
% 0.76/0.95  thf(t2_boole, axiom,
% 0.76/0.95    (![A:$i]: ( ( k3_xboole_0 @ A @ k1_xboole_0 ) = ( k1_xboole_0 ) ))).
% 0.76/0.95  thf('15', plain,
% 0.76/0.95      (![X6 : $i]: ((k3_xboole_0 @ X6 @ k1_xboole_0) = (k1_xboole_0))),
% 0.76/0.95      inference('cnf', [status(esa)], [t2_boole])).
% 0.76/0.95  thf('16', plain, (![X0 : $i]: ((k4_xboole_0 @ X0 @ X0) = (k1_xboole_0))),
% 0.76/0.95      inference('demod', [status(thm)], ['14', '15'])).
% 0.76/0.95  thf(t52_xboole_1, axiom,
% 0.76/0.95    (![A:$i,B:$i,C:$i]:
% 0.76/0.95     ( ( k4_xboole_0 @ A @ ( k4_xboole_0 @ B @ C ) ) =
% 0.76/0.95       ( k2_xboole_0 @ ( k4_xboole_0 @ A @ B ) @ ( k3_xboole_0 @ A @ C ) ) ))).
% 0.76/0.95  thf('17', plain,
% 0.76/0.95      (![X14 : $i, X15 : $i, X16 : $i]:
% 0.76/0.95         ((k4_xboole_0 @ X14 @ (k4_xboole_0 @ X15 @ X16))
% 0.76/0.95           = (k2_xboole_0 @ (k4_xboole_0 @ X14 @ X15) @ 
% 0.76/0.95              (k3_xboole_0 @ X14 @ X16)))),
% 0.76/0.95      inference('cnf', [status(esa)], [t52_xboole_1])).
% 0.76/0.95  thf(t46_xboole_1, axiom,
% 0.76/0.95    (![A:$i,B:$i]:
% 0.76/0.95     ( ( k4_xboole_0 @ A @ ( k2_xboole_0 @ A @ B ) ) = ( k1_xboole_0 ) ))).
% 0.76/0.95  thf('18', plain,
% 0.76/0.95      (![X10 : $i, X11 : $i]:
% 0.76/0.95         ((k4_xboole_0 @ X10 @ (k2_xboole_0 @ X10 @ X11)) = (k1_xboole_0))),
% 0.76/0.95      inference('cnf', [status(esa)], [t46_xboole_1])).
% 0.76/0.95  thf('19', plain,
% 0.76/0.95      (![X0 : $i, X1 : $i, X2 : $i]:
% 0.76/0.95         ((k4_xboole_0 @ (k4_xboole_0 @ X2 @ X1) @ 
% 0.76/0.95           (k4_xboole_0 @ X2 @ (k4_xboole_0 @ X1 @ X0))) = (k1_xboole_0))),
% 0.76/0.95      inference('sup+', [status(thm)], ['17', '18'])).
% 0.76/0.95  thf('20', plain,
% 0.76/0.95      (![X0 : $i, X1 : $i]:
% 0.76/0.95         ((k4_xboole_0 @ (k4_xboole_0 @ (k4_xboole_0 @ X1 @ X0) @ X1) @ 
% 0.76/0.95           k1_xboole_0) = (k1_xboole_0))),
% 0.76/0.95      inference('sup+', [status(thm)], ['16', '19'])).
% 0.76/0.95  thf('21', plain, (![X7 : $i]: ((k4_xboole_0 @ X7 @ k1_xboole_0) = (X7))),
% 0.76/0.95      inference('cnf', [status(esa)], [t3_boole])).
% 0.76/0.95  thf('22', plain,
% 0.76/0.95      (![X0 : $i, X1 : $i]:
% 0.76/0.95         ((k4_xboole_0 @ (k4_xboole_0 @ X1 @ X0) @ X1) = (k1_xboole_0))),
% 0.76/0.95      inference('demod', [status(thm)], ['20', '21'])).
% 0.76/0.95  thf('23', plain,
% 0.76/0.95      (![X12 : $i, X13 : $i]:
% 0.76/0.95         ((k4_xboole_0 @ X12 @ (k4_xboole_0 @ X12 @ X13))
% 0.76/0.95           = (k3_xboole_0 @ X12 @ X13))),
% 0.76/0.95      inference('cnf', [status(esa)], [t48_xboole_1])).
% 0.76/0.95  thf('24', plain,
% 0.76/0.95      (![X0 : $i, X1 : $i]:
% 0.76/0.95         ((k4_xboole_0 @ (k4_xboole_0 @ X0 @ X1) @ k1_xboole_0)
% 0.76/0.95           = (k3_xboole_0 @ (k4_xboole_0 @ X0 @ X1) @ X0))),
% 0.76/0.95      inference('sup+', [status(thm)], ['22', '23'])).
% 0.76/0.95  thf('25', plain, (![X7 : $i]: ((k4_xboole_0 @ X7 @ k1_xboole_0) = (X7))),
% 0.76/0.95      inference('cnf', [status(esa)], [t3_boole])).
% 0.76/0.95  thf('26', plain,
% 0.76/0.95      (![X0 : $i, X1 : $i]: ((k3_xboole_0 @ X1 @ X0) = (k3_xboole_0 @ X0 @ X1))),
% 0.76/0.95      inference('cnf', [status(esa)], [commutativity_k3_xboole_0])).
% 0.76/0.95  thf('27', plain,
% 0.76/0.95      (![X0 : $i, X1 : $i]:
% 0.76/0.95         ((k4_xboole_0 @ X0 @ X1)
% 0.76/0.95           = (k3_xboole_0 @ X0 @ (k4_xboole_0 @ X0 @ X1)))),
% 0.76/0.95      inference('demod', [status(thm)], ['24', '25', '26'])).
% 0.76/0.95  thf('28', plain,
% 0.76/0.95      (![X12 : $i, X13 : $i]:
% 0.76/0.95         ((k4_xboole_0 @ X12 @ (k4_xboole_0 @ X12 @ X13))
% 0.76/0.95           = (k3_xboole_0 @ X12 @ X13))),
% 0.76/0.95      inference('cnf', [status(esa)], [t48_xboole_1])).
% 0.76/0.95  thf('29', plain, ((r1_tarski @ sk_A @ sk_C_1)),
% 0.76/0.95      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.76/0.95  thf(t45_xboole_1, axiom,
% 0.76/0.95    (![A:$i,B:$i]:
% 0.76/0.95     ( ( r1_tarski @ A @ B ) =>
% 0.76/0.95       ( ( B ) = ( k2_xboole_0 @ A @ ( k4_xboole_0 @ B @ A ) ) ) ))).
% 0.76/0.95  thf('30', plain,
% 0.76/0.95      (![X8 : $i, X9 : $i]:
% 0.76/0.95         (((X9) = (k2_xboole_0 @ X8 @ (k4_xboole_0 @ X9 @ X8)))
% 0.76/0.95          | ~ (r1_tarski @ X8 @ X9))),
% 0.76/0.95      inference('cnf', [status(esa)], [t45_xboole_1])).
% 0.76/0.95  thf('31', plain,
% 0.76/0.95      (((sk_C_1) = (k2_xboole_0 @ sk_A @ (k4_xboole_0 @ sk_C_1 @ sk_A)))),
% 0.76/0.95      inference('sup-', [status(thm)], ['29', '30'])).
% 0.76/0.95  thf('32', plain,
% 0.76/0.95      (![X10 : $i, X11 : $i]:
% 0.76/0.95         ((k4_xboole_0 @ X10 @ (k2_xboole_0 @ X10 @ X11)) = (k1_xboole_0))),
% 0.76/0.95      inference('cnf', [status(esa)], [t46_xboole_1])).
% 0.76/0.95  thf('33', plain, (((k4_xboole_0 @ sk_A @ sk_C_1) = (k1_xboole_0))),
% 0.76/0.95      inference('sup+', [status(thm)], ['31', '32'])).
% 0.76/0.95  thf('34', plain,
% 0.76/0.95      (![X14 : $i, X15 : $i, X16 : $i]:
% 0.76/0.95         ((k4_xboole_0 @ X14 @ (k4_xboole_0 @ X15 @ X16))
% 0.76/0.95           = (k2_xboole_0 @ (k4_xboole_0 @ X14 @ X15) @ 
% 0.76/0.95              (k3_xboole_0 @ X14 @ X16)))),
% 0.76/0.95      inference('cnf', [status(esa)], [t52_xboole_1])).
% 0.76/0.95  thf('35', plain,
% 0.76/0.95      (![X0 : $i]:
% 0.76/0.95         ((k4_xboole_0 @ sk_A @ (k4_xboole_0 @ sk_C_1 @ X0))
% 0.76/0.95           = (k2_xboole_0 @ k1_xboole_0 @ (k3_xboole_0 @ sk_A @ X0)))),
% 0.76/0.95      inference('sup+', [status(thm)], ['33', '34'])).
% 0.76/0.95  thf('36', plain, (![X0 : $i]: ((k4_xboole_0 @ X0 @ X0) = (k1_xboole_0))),
% 0.76/0.95      inference('demod', [status(thm)], ['14', '15'])).
% 0.76/0.95  thf('37', plain,
% 0.76/0.95      (![X14 : $i, X15 : $i, X16 : $i]:
% 0.76/0.95         ((k4_xboole_0 @ X14 @ (k4_xboole_0 @ X15 @ X16))
% 0.76/0.95           = (k2_xboole_0 @ (k4_xboole_0 @ X14 @ X15) @ 
% 0.76/0.95              (k3_xboole_0 @ X14 @ X16)))),
% 0.76/0.95      inference('cnf', [status(esa)], [t52_xboole_1])).
% 0.76/0.95  thf('38', plain,
% 0.76/0.95      (![X0 : $i, X1 : $i]:
% 0.76/0.95         ((k4_xboole_0 @ X1 @ (k4_xboole_0 @ X1 @ X0))
% 0.76/0.95           = (k2_xboole_0 @ k1_xboole_0 @ (k3_xboole_0 @ X1 @ X0)))),
% 0.76/0.95      inference('sup+', [status(thm)], ['36', '37'])).
% 0.76/0.95  thf('39', plain,
% 0.76/0.95      (![X12 : $i, X13 : $i]:
% 0.76/0.95         ((k4_xboole_0 @ X12 @ (k4_xboole_0 @ X12 @ X13))
% 0.76/0.95           = (k3_xboole_0 @ X12 @ X13))),
% 0.76/0.95      inference('cnf', [status(esa)], [t48_xboole_1])).
% 0.76/0.95  thf('40', plain,
% 0.76/0.95      (![X0 : $i, X1 : $i]:
% 0.76/0.95         ((k3_xboole_0 @ X1 @ X0)
% 0.76/0.95           = (k2_xboole_0 @ k1_xboole_0 @ (k3_xboole_0 @ X1 @ X0)))),
% 0.76/0.95      inference('demod', [status(thm)], ['38', '39'])).
% 0.76/0.95  thf('41', plain,
% 0.76/0.95      (![X0 : $i]:
% 0.76/0.95         ((k4_xboole_0 @ sk_A @ (k4_xboole_0 @ sk_C_1 @ X0))
% 0.76/0.95           = (k3_xboole_0 @ sk_A @ X0))),
% 0.76/0.95      inference('demod', [status(thm)], ['35', '40'])).
% 0.76/0.95  thf('42', plain,
% 0.76/0.95      (![X0 : $i]:
% 0.76/0.95         ((k4_xboole_0 @ sk_A @ (k3_xboole_0 @ sk_C_1 @ X0))
% 0.76/0.95           = (k3_xboole_0 @ sk_A @ (k4_xboole_0 @ sk_C_1 @ X0)))),
% 0.76/0.95      inference('sup+', [status(thm)], ['28', '41'])).
% 0.76/0.95  thf('43', plain,
% 0.76/0.95      (![X0 : $i]:
% 0.76/0.95         ((k4_xboole_0 @ sk_A @ (k4_xboole_0 @ sk_C_1 @ X0))
% 0.76/0.95           = (k3_xboole_0 @ sk_A @ 
% 0.76/0.95              (k4_xboole_0 @ sk_C_1 @ (k4_xboole_0 @ sk_C_1 @ X0))))),
% 0.76/0.95      inference('sup+', [status(thm)], ['27', '42'])).
% 0.76/0.95  thf('44', plain,
% 0.76/0.95      (![X0 : $i]:
% 0.76/0.95         ((k4_xboole_0 @ sk_A @ (k4_xboole_0 @ sk_C_1 @ X0))
% 0.76/0.95           = (k3_xboole_0 @ sk_A @ X0))),
% 0.76/0.95      inference('demod', [status(thm)], ['35', '40'])).
% 0.76/0.95  thf('45', plain,
% 0.76/0.95      (![X12 : $i, X13 : $i]:
% 0.76/0.95         ((k4_xboole_0 @ X12 @ (k4_xboole_0 @ X12 @ X13))
% 0.76/0.95           = (k3_xboole_0 @ X12 @ X13))),
% 0.76/0.95      inference('cnf', [status(esa)], [t48_xboole_1])).
% 0.76/0.95  thf('46', plain,
% 0.76/0.95      (![X0 : $i]:
% 0.76/0.95         ((k3_xboole_0 @ sk_A @ X0)
% 0.76/0.95           = (k3_xboole_0 @ sk_A @ (k3_xboole_0 @ sk_C_1 @ X0)))),
% 0.76/0.95      inference('demod', [status(thm)], ['43', '44', '45'])).
% 0.76/0.95  thf('47', plain,
% 0.76/0.95      (![X0 : $i, X1 : $i, X2 : $i]:
% 0.76/0.95         (~ (r2_hidden @ X2 @ (k3_xboole_0 @ X1 @ X0))
% 0.76/0.95          | ~ (r1_xboole_0 @ X0 @ X1))),
% 0.76/0.95      inference('sup-', [status(thm)], ['6', '7'])).
% 0.76/0.95  thf('48', plain,
% 0.76/0.95      (![X0 : $i, X1 : $i]:
% 0.76/0.95         (~ (r2_hidden @ X1 @ (k3_xboole_0 @ sk_A @ X0))
% 0.76/0.95          | ~ (r1_xboole_0 @ (k3_xboole_0 @ sk_C_1 @ X0) @ sk_A))),
% 0.76/0.95      inference('sup-', [status(thm)], ['46', '47'])).
% 0.76/0.95  thf('49', plain,
% 0.76/0.95      (![X0 : $i, X1 : $i]:
% 0.76/0.95         (~ (r1_xboole_0 @ (k3_xboole_0 @ X0 @ sk_C_1) @ sk_A)
% 0.76/0.95          | ~ (r2_hidden @ X1 @ (k3_xboole_0 @ sk_A @ X0)))),
% 0.76/0.95      inference('sup-', [status(thm)], ['11', '48'])).
% 0.76/0.95  thf('50', plain,
% 0.76/0.95      (![X0 : $i]: ~ (r2_hidden @ X0 @ (k3_xboole_0 @ sk_A @ sk_B))),
% 0.76/0.95      inference('sup-', [status(thm)], ['10', '49'])).
% 0.76/0.95  thf('51', plain,
% 0.76/0.95      (![X0 : $i, X1 : $i]: ((k3_xboole_0 @ X1 @ X0) = (k3_xboole_0 @ X0 @ X1))),
% 0.76/0.95      inference('cnf', [status(esa)], [commutativity_k3_xboole_0])).
% 0.76/0.95  thf('52', plain,
% 0.76/0.95      (![X0 : $i]: ~ (r2_hidden @ X0 @ (k3_xboole_0 @ sk_B @ sk_A))),
% 0.76/0.95      inference('demod', [status(thm)], ['50', '51'])).
% 0.76/0.95  thf('53', plain, ((r1_xboole_0 @ sk_A @ sk_B)),
% 0.76/0.95      inference('sup-', [status(thm)], ['3', '52'])).
% 0.76/0.95  thf('54', plain, ($false), inference('demod', [status(thm)], ['0', '53'])).
% 0.76/0.95  
% 0.76/0.95  % SZS output end Refutation
% 0.76/0.95  
% 0.76/0.96  % Zipperpin 1.5 exiting
%------------------------------------------------------------------------------
