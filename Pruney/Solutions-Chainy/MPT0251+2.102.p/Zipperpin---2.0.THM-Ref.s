%------------------------------------------------------------------------------
% File       : Zipperpin---2.0
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_portfolio.sh /export/starexec/sandbox/benchmark/theBenchmark.p /export/starexec/sandbox/tmp/tmp.UnhO0XYXL0

% Computer   : n020.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 13:32:15 EST 2020

% Result     : Theorem 0.36s
% Output     : Refutation 0.36s
% Verified   : 
% Statistics : Number of formulae       :   75 ( 121 expanded)
%              Number of leaves         :   25 (  48 expanded)
%              Depth                    :   15
%              Number of atoms          :  480 ( 836 expanded)
%              Number of equality atoms :   54 (  96 expanded)
%              Maximal formula depth    :   11 (   6 average)

% Comments   : 
%------------------------------------------------------------------------------
thf(r1_xboole_0_type,type,(
    r1_xboole_0: $i > $i > $o )).

thf(sk_B_1_type,type,(
    sk_B_1: $i )).

thf(r1_tarski_type,type,(
    r1_tarski: $i > $i > $o )).

thf(sk_A_type,type,(
    sk_A: $i )).

thf(k2_xboole_0_type,type,(
    k2_xboole_0: $i > $i > $i )).

thf(r2_hidden_type,type,(
    r2_hidden: $i > $i > $o )).

thf(k3_xboole_0_type,type,(
    k3_xboole_0: $i > $i > $i )).

thf(sk_B_type,type,(
    sk_B: $i > $i )).

thf(k1_tarski_type,type,(
    k1_tarski: $i > $i )).

thf(k1_xboole_0_type,type,(
    k1_xboole_0: $i )).

thf(k4_xboole_0_type,type,(
    k4_xboole_0: $i > $i > $i )).

thf(k5_xboole_0_type,type,(
    k5_xboole_0: $i > $i > $i )).

thf(t21_xboole_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( k3_xboole_0 @ A @ ( k2_xboole_0 @ A @ B ) )
      = A ) )).

thf('0',plain,(
    ! [X9: $i,X10: $i] :
      ( ( k3_xboole_0 @ X9 @ ( k2_xboole_0 @ X9 @ X10 ) )
      = X9 ) ),
    inference(cnf,[status(esa)],[t21_xboole_1])).

thf(t100_xboole_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( k4_xboole_0 @ A @ B )
      = ( k5_xboole_0 @ A @ ( k3_xboole_0 @ A @ B ) ) ) )).

thf('1',plain,(
    ! [X7: $i,X8: $i] :
      ( ( k4_xboole_0 @ X7 @ X8 )
      = ( k5_xboole_0 @ X7 @ ( k3_xboole_0 @ X7 @ X8 ) ) ) ),
    inference(cnf,[status(esa)],[t100_xboole_1])).

thf('2',plain,(
    ! [X0: $i,X1: $i] :
      ( ( k4_xboole_0 @ X0 @ ( k2_xboole_0 @ X0 @ X1 ) )
      = ( k5_xboole_0 @ X0 @ X0 ) ) ),
    inference('sup+',[status(thm)],['0','1'])).

thf(t46_xboole_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( k4_xboole_0 @ A @ ( k2_xboole_0 @ A @ B ) )
      = k1_xboole_0 ) )).

thf('3',plain,(
    ! [X14: $i,X15: $i] :
      ( ( k4_xboole_0 @ X14 @ ( k2_xboole_0 @ X14 @ X15 ) )
      = k1_xboole_0 ) ),
    inference(cnf,[status(esa)],[t46_xboole_1])).

thf('4',plain,(
    ! [X0: $i] :
      ( ( k5_xboole_0 @ X0 @ X0 )
      = k1_xboole_0 ) ),
    inference('sup+',[status(thm)],['2','3'])).

thf('5',plain,(
    ! [X0: $i] :
      ( ( k5_xboole_0 @ X0 @ X0 )
      = k1_xboole_0 ) ),
    inference('sup+',[status(thm)],['2','3'])).

thf(t98_xboole_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( k2_xboole_0 @ A @ B )
      = ( k5_xboole_0 @ A @ ( k4_xboole_0 @ B @ A ) ) ) )).

thf('6',plain,(
    ! [X20: $i,X21: $i] :
      ( ( k2_xboole_0 @ X20 @ X21 )
      = ( k5_xboole_0 @ X20 @ ( k4_xboole_0 @ X21 @ X20 ) ) ) ),
    inference(cnf,[status(esa)],[t98_xboole_1])).

thf(t46_zfmisc_1,conjecture,(
    ! [A: $i,B: $i] :
      ( ( r2_hidden @ A @ B )
     => ( ( k2_xboole_0 @ ( k1_tarski @ A ) @ B )
        = B ) ) )).

thf(zf_stmt_0,negated_conjecture,(
    ~ ! [A: $i,B: $i] :
        ( ( r2_hidden @ A @ B )
       => ( ( k2_xboole_0 @ ( k1_tarski @ A ) @ B )
          = B ) ) ),
    inference('cnf.neg',[status(esa)],[t46_zfmisc_1])).

thf('7',plain,(
    r2_hidden @ sk_A @ sk_B_1 ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(l1_zfmisc_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( r1_tarski @ ( k1_tarski @ A ) @ B )
    <=> ( r2_hidden @ A @ B ) ) )).

thf('8',plain,(
    ! [X50: $i,X52: $i] :
      ( ( r1_tarski @ ( k1_tarski @ X50 ) @ X52 )
      | ~ ( r2_hidden @ X50 @ X52 ) ) ),
    inference(cnf,[status(esa)],[l1_zfmisc_1])).

thf('9',plain,(
    r1_tarski @ ( k1_tarski @ sk_A ) @ sk_B_1 ),
    inference('sup-',[status(thm)],['7','8'])).

thf(t28_xboole_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( r1_tarski @ A @ B )
     => ( ( k3_xboole_0 @ A @ B )
        = A ) ) )).

thf('10',plain,(
    ! [X11: $i,X12: $i] :
      ( ( ( k3_xboole_0 @ X11 @ X12 )
        = X11 )
      | ~ ( r1_tarski @ X11 @ X12 ) ) ),
    inference(cnf,[status(esa)],[t28_xboole_1])).

thf('11',plain,
    ( ( k3_xboole_0 @ ( k1_tarski @ sk_A ) @ sk_B_1 )
    = ( k1_tarski @ sk_A ) ),
    inference('sup-',[status(thm)],['9','10'])).

thf(commutativity_k3_xboole_0,axiom,(
    ! [A: $i,B: $i] :
      ( ( k3_xboole_0 @ A @ B )
      = ( k3_xboole_0 @ B @ A ) ) )).

thf('12',plain,(
    ! [X0: $i,X1: $i] :
      ( ( k3_xboole_0 @ X1 @ X0 )
      = ( k3_xboole_0 @ X0 @ X1 ) ) ),
    inference(cnf,[status(esa)],[commutativity_k3_xboole_0])).

thf('13',plain,
    ( ( k3_xboole_0 @ sk_B_1 @ ( k1_tarski @ sk_A ) )
    = ( k1_tarski @ sk_A ) ),
    inference(demod,[status(thm)],['11','12'])).

thf('14',plain,(
    ! [X7: $i,X8: $i] :
      ( ( k4_xboole_0 @ X7 @ X8 )
      = ( k5_xboole_0 @ X7 @ ( k3_xboole_0 @ X7 @ X8 ) ) ) ),
    inference(cnf,[status(esa)],[t100_xboole_1])).

thf('15',plain,
    ( ( k4_xboole_0 @ sk_B_1 @ ( k1_tarski @ sk_A ) )
    = ( k5_xboole_0 @ sk_B_1 @ ( k1_tarski @ sk_A ) ) ),
    inference('sup+',[status(thm)],['13','14'])).

thf(t91_xboole_1,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( k5_xboole_0 @ ( k5_xboole_0 @ A @ B ) @ C )
      = ( k5_xboole_0 @ A @ ( k5_xboole_0 @ B @ C ) ) ) )).

thf('16',plain,(
    ! [X17: $i,X18: $i,X19: $i] :
      ( ( k5_xboole_0 @ ( k5_xboole_0 @ X17 @ X18 ) @ X19 )
      = ( k5_xboole_0 @ X17 @ ( k5_xboole_0 @ X18 @ X19 ) ) ) ),
    inference(cnf,[status(esa)],[t91_xboole_1])).

thf('17',plain,(
    ! [X0: $i] :
      ( ( k5_xboole_0 @ ( k4_xboole_0 @ sk_B_1 @ ( k1_tarski @ sk_A ) ) @ X0 )
      = ( k5_xboole_0 @ sk_B_1 @ ( k5_xboole_0 @ ( k1_tarski @ sk_A ) @ X0 ) ) ) ),
    inference('sup+',[status(thm)],['15','16'])).

thf('18',plain,(
    ! [X0: $i] :
      ( ( k5_xboole_0 @ ( k4_xboole_0 @ sk_B_1 @ ( k1_tarski @ sk_A ) ) @ ( k4_xboole_0 @ X0 @ ( k1_tarski @ sk_A ) ) )
      = ( k5_xboole_0 @ sk_B_1 @ ( k2_xboole_0 @ ( k1_tarski @ sk_A ) @ X0 ) ) ) ),
    inference('sup+',[status(thm)],['6','17'])).

thf('19',plain,
    ( k1_xboole_0
    = ( k5_xboole_0 @ sk_B_1 @ ( k2_xboole_0 @ ( k1_tarski @ sk_A ) @ sk_B_1 ) ) ),
    inference('sup+',[status(thm)],['5','18'])).

thf('20',plain,(
    ! [X17: $i,X18: $i,X19: $i] :
      ( ( k5_xboole_0 @ ( k5_xboole_0 @ X17 @ X18 ) @ X19 )
      = ( k5_xboole_0 @ X17 @ ( k5_xboole_0 @ X18 @ X19 ) ) ) ),
    inference(cnf,[status(esa)],[t91_xboole_1])).

thf('21',plain,(
    ! [X0: $i] :
      ( ( k5_xboole_0 @ k1_xboole_0 @ X0 )
      = ( k5_xboole_0 @ sk_B_1 @ ( k5_xboole_0 @ ( k2_xboole_0 @ ( k1_tarski @ sk_A ) @ sk_B_1 ) @ X0 ) ) ) ),
    inference('sup+',[status(thm)],['19','20'])).

thf(t3_boole,axiom,(
    ! [A: $i] :
      ( ( k4_xboole_0 @ A @ k1_xboole_0 )
      = A ) )).

thf('22',plain,(
    ! [X13: $i] :
      ( ( k4_xboole_0 @ X13 @ k1_xboole_0 )
      = X13 ) ),
    inference(cnf,[status(esa)],[t3_boole])).

thf('23',plain,(
    ! [X20: $i,X21: $i] :
      ( ( k2_xboole_0 @ X20 @ X21 )
      = ( k5_xboole_0 @ X20 @ ( k4_xboole_0 @ X21 @ X20 ) ) ) ),
    inference(cnf,[status(esa)],[t98_xboole_1])).

thf('24',plain,(
    ! [X0: $i] :
      ( ( k2_xboole_0 @ k1_xboole_0 @ X0 )
      = ( k5_xboole_0 @ k1_xboole_0 @ X0 ) ) ),
    inference('sup+',[status(thm)],['22','23'])).

thf('25',plain,(
    ! [X0: $i] :
      ( ( k2_xboole_0 @ k1_xboole_0 @ X0 )
      = ( k5_xboole_0 @ sk_B_1 @ ( k5_xboole_0 @ ( k2_xboole_0 @ ( k1_tarski @ sk_A ) @ sk_B_1 ) @ X0 ) ) ) ),
    inference(demod,[status(thm)],['21','24'])).

thf('26',plain,
    ( ( k2_xboole_0 @ k1_xboole_0 @ ( k2_xboole_0 @ ( k1_tarski @ sk_A ) @ sk_B_1 ) )
    = ( k5_xboole_0 @ sk_B_1 @ k1_xboole_0 ) ),
    inference('sup+',[status(thm)],['4','25'])).

thf(t65_xboole_1,axiom,(
    ! [A: $i] :
      ( r1_xboole_0 @ A @ k1_xboole_0 ) )).

thf('27',plain,(
    ! [X16: $i] :
      ( r1_xboole_0 @ X16 @ k1_xboole_0 ) ),
    inference(cnf,[status(esa)],[t65_xboole_1])).

thf(t7_xboole_0,axiom,(
    ! [A: $i] :
      ~ ( ( A != k1_xboole_0 )
        & ! [B: $i] :
            ~ ( r2_hidden @ B @ A ) ) )).

thf('28',plain,(
    ! [X6: $i] :
      ( ( X6 = k1_xboole_0 )
      | ( r2_hidden @ ( sk_B @ X6 ) @ X6 ) ) ),
    inference(cnf,[status(esa)],[t7_xboole_0])).

thf(t4_xboole_0,axiom,(
    ! [A: $i,B: $i] :
      ( ~ ( ? [C: $i] :
              ( r2_hidden @ C @ ( k3_xboole_0 @ A @ B ) )
          & ( r1_xboole_0 @ A @ B ) )
      & ~ ( ~ ( r1_xboole_0 @ A @ B )
          & ! [C: $i] :
              ~ ( r2_hidden @ C @ ( k3_xboole_0 @ A @ B ) ) ) ) )).

thf('29',plain,(
    ! [X2: $i,X4: $i,X5: $i] :
      ( ~ ( r2_hidden @ X4 @ ( k3_xboole_0 @ X2 @ X5 ) )
      | ~ ( r1_xboole_0 @ X2 @ X5 ) ) ),
    inference(cnf,[status(esa)],[t4_xboole_0])).

thf('30',plain,(
    ! [X0: $i,X1: $i] :
      ( ( ( k3_xboole_0 @ X1 @ X0 )
        = k1_xboole_0 )
      | ~ ( r1_xboole_0 @ X1 @ X0 ) ) ),
    inference('sup-',[status(thm)],['28','29'])).

thf('31',plain,(
    ! [X0: $i] :
      ( ( k3_xboole_0 @ X0 @ k1_xboole_0 )
      = k1_xboole_0 ) ),
    inference('sup-',[status(thm)],['27','30'])).

thf('32',plain,(
    ! [X7: $i,X8: $i] :
      ( ( k4_xboole_0 @ X7 @ X8 )
      = ( k5_xboole_0 @ X7 @ ( k3_xboole_0 @ X7 @ X8 ) ) ) ),
    inference(cnf,[status(esa)],[t100_xboole_1])).

thf('33',plain,(
    ! [X0: $i] :
      ( ( k4_xboole_0 @ X0 @ k1_xboole_0 )
      = ( k5_xboole_0 @ X0 @ k1_xboole_0 ) ) ),
    inference('sup+',[status(thm)],['31','32'])).

thf('34',plain,(
    ! [X13: $i] :
      ( ( k4_xboole_0 @ X13 @ k1_xboole_0 )
      = X13 ) ),
    inference(cnf,[status(esa)],[t3_boole])).

thf('35',plain,(
    ! [X0: $i] :
      ( X0
      = ( k5_xboole_0 @ X0 @ k1_xboole_0 ) ) ),
    inference(demod,[status(thm)],['33','34'])).

thf('36',plain,
    ( ( k2_xboole_0 @ k1_xboole_0 @ ( k2_xboole_0 @ ( k1_tarski @ sk_A ) @ sk_B_1 ) )
    = sk_B_1 ),
    inference(demod,[status(thm)],['26','35'])).

thf('37',plain,(
    ! [X0: $i] :
      ( ( k5_xboole_0 @ X0 @ X0 )
      = k1_xboole_0 ) ),
    inference('sup+',[status(thm)],['2','3'])).

thf('38',plain,(
    ! [X0: $i] :
      ( ( k5_xboole_0 @ X0 @ X0 )
      = k1_xboole_0 ) ),
    inference('sup+',[status(thm)],['2','3'])).

thf('39',plain,(
    ! [X17: $i,X18: $i,X19: $i] :
      ( ( k5_xboole_0 @ ( k5_xboole_0 @ X17 @ X18 ) @ X19 )
      = ( k5_xboole_0 @ X17 @ ( k5_xboole_0 @ X18 @ X19 ) ) ) ),
    inference(cnf,[status(esa)],[t91_xboole_1])).

thf('40',plain,(
    ! [X0: $i,X1: $i] :
      ( ( k5_xboole_0 @ k1_xboole_0 @ X0 )
      = ( k5_xboole_0 @ X1 @ ( k5_xboole_0 @ X1 @ X0 ) ) ) ),
    inference('sup+',[status(thm)],['38','39'])).

thf('41',plain,(
    ! [X0: $i] :
      ( ( k2_xboole_0 @ k1_xboole_0 @ X0 )
      = ( k5_xboole_0 @ k1_xboole_0 @ X0 ) ) ),
    inference('sup+',[status(thm)],['22','23'])).

thf('42',plain,(
    ! [X0: $i,X1: $i] :
      ( ( k2_xboole_0 @ k1_xboole_0 @ X0 )
      = ( k5_xboole_0 @ X1 @ ( k5_xboole_0 @ X1 @ X0 ) ) ) ),
    inference(demod,[status(thm)],['40','41'])).

thf('43',plain,(
    ! [X0: $i] :
      ( ( k2_xboole_0 @ k1_xboole_0 @ X0 )
      = ( k5_xboole_0 @ X0 @ k1_xboole_0 ) ) ),
    inference('sup+',[status(thm)],['37','42'])).

thf('44',plain,(
    ! [X0: $i] :
      ( X0
      = ( k5_xboole_0 @ X0 @ k1_xboole_0 ) ) ),
    inference(demod,[status(thm)],['33','34'])).

thf('45',plain,(
    ! [X0: $i] :
      ( X0
      = ( k2_xboole_0 @ k1_xboole_0 @ X0 ) ) ),
    inference('sup+',[status(thm)],['43','44'])).

thf('46',plain,
    ( ( k2_xboole_0 @ ( k1_tarski @ sk_A ) @ sk_B_1 )
    = sk_B_1 ),
    inference(demod,[status(thm)],['36','45'])).

thf('47',plain,(
    ( k2_xboole_0 @ ( k1_tarski @ sk_A ) @ sk_B_1 )
 != sk_B_1 ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('48',plain,(
    $false ),
    inference('simplify_reflect-',[status(thm)],['46','47'])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.07/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.07/0.13  % Command    : run_portfolio.sh /export/starexec/sandbox/benchmark/theBenchmark.p /export/starexec/sandbox/tmp/tmp.UnhO0XYXL0
% 0.13/0.34  % Computer   : n020.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % DateTime   : Tue Dec  1 15:20:37 EST 2020
% 0.13/0.34  % CPUTime    : 
% 0.13/0.34  % Running portfolio for 600 s
% 0.13/0.34  % File         : /export/starexec/sandbox/benchmark/theBenchmark.p
% 0.13/0.34  % Number of cores: 8
% 0.13/0.35  % Python version: Python 3.6.8
% 0.13/0.35  % Running in FO mode
% 0.36/0.62  % Running /export/starexec/sandbox/solver/bin/fo/fo7.sh for 78
% 0.36/0.62  % Solved by: fo/fo7.sh
% 0.36/0.62  To remain in the chosen logic fragment, unification with booleans has been disabled.
% 0.36/0.62  % done 350 iterations in 0.163s
% 0.36/0.62  % SZS status Theorem for '/export/starexec/sandbox/benchmark/theBenchmark.p'
% 0.36/0.62  % SZS output start Refutation
% 0.36/0.62  thf(r1_xboole_0_type, type, r1_xboole_0: $i > $i > $o).
% 0.36/0.62  thf(sk_B_1_type, type, sk_B_1: $i).
% 0.36/0.62  thf(r1_tarski_type, type, r1_tarski: $i > $i > $o).
% 0.36/0.62  thf(sk_A_type, type, sk_A: $i).
% 0.36/0.62  thf(k2_xboole_0_type, type, k2_xboole_0: $i > $i > $i).
% 0.36/0.62  thf(r2_hidden_type, type, r2_hidden: $i > $i > $o).
% 0.36/0.62  thf(k3_xboole_0_type, type, k3_xboole_0: $i > $i > $i).
% 0.36/0.62  thf(sk_B_type, type, sk_B: $i > $i).
% 0.36/0.62  thf(k1_tarski_type, type, k1_tarski: $i > $i).
% 0.36/0.62  thf(k1_xboole_0_type, type, k1_xboole_0: $i).
% 0.36/0.62  thf(k4_xboole_0_type, type, k4_xboole_0: $i > $i > $i).
% 0.36/0.62  thf(k5_xboole_0_type, type, k5_xboole_0: $i > $i > $i).
% 0.36/0.62  thf(t21_xboole_1, axiom,
% 0.36/0.62    (![A:$i,B:$i]: ( ( k3_xboole_0 @ A @ ( k2_xboole_0 @ A @ B ) ) = ( A ) ))).
% 0.36/0.62  thf('0', plain,
% 0.36/0.62      (![X9 : $i, X10 : $i]:
% 0.36/0.62         ((k3_xboole_0 @ X9 @ (k2_xboole_0 @ X9 @ X10)) = (X9))),
% 0.36/0.62      inference('cnf', [status(esa)], [t21_xboole_1])).
% 0.36/0.62  thf(t100_xboole_1, axiom,
% 0.36/0.62    (![A:$i,B:$i]:
% 0.36/0.62     ( ( k4_xboole_0 @ A @ B ) = ( k5_xboole_0 @ A @ ( k3_xboole_0 @ A @ B ) ) ))).
% 0.36/0.62  thf('1', plain,
% 0.36/0.62      (![X7 : $i, X8 : $i]:
% 0.36/0.62         ((k4_xboole_0 @ X7 @ X8)
% 0.36/0.62           = (k5_xboole_0 @ X7 @ (k3_xboole_0 @ X7 @ X8)))),
% 0.36/0.62      inference('cnf', [status(esa)], [t100_xboole_1])).
% 0.36/0.62  thf('2', plain,
% 0.36/0.62      (![X0 : $i, X1 : $i]:
% 0.36/0.62         ((k4_xboole_0 @ X0 @ (k2_xboole_0 @ X0 @ X1))
% 0.36/0.62           = (k5_xboole_0 @ X0 @ X0))),
% 0.36/0.62      inference('sup+', [status(thm)], ['0', '1'])).
% 0.36/0.62  thf(t46_xboole_1, axiom,
% 0.36/0.62    (![A:$i,B:$i]:
% 0.36/0.62     ( ( k4_xboole_0 @ A @ ( k2_xboole_0 @ A @ B ) ) = ( k1_xboole_0 ) ))).
% 0.36/0.62  thf('3', plain,
% 0.36/0.62      (![X14 : $i, X15 : $i]:
% 0.36/0.62         ((k4_xboole_0 @ X14 @ (k2_xboole_0 @ X14 @ X15)) = (k1_xboole_0))),
% 0.36/0.62      inference('cnf', [status(esa)], [t46_xboole_1])).
% 0.36/0.62  thf('4', plain, (![X0 : $i]: ((k5_xboole_0 @ X0 @ X0) = (k1_xboole_0))),
% 0.36/0.62      inference('sup+', [status(thm)], ['2', '3'])).
% 0.36/0.62  thf('5', plain, (![X0 : $i]: ((k5_xboole_0 @ X0 @ X0) = (k1_xboole_0))),
% 0.36/0.62      inference('sup+', [status(thm)], ['2', '3'])).
% 0.36/0.62  thf(t98_xboole_1, axiom,
% 0.36/0.62    (![A:$i,B:$i]:
% 0.36/0.62     ( ( k2_xboole_0 @ A @ B ) = ( k5_xboole_0 @ A @ ( k4_xboole_0 @ B @ A ) ) ))).
% 0.36/0.62  thf('6', plain,
% 0.36/0.62      (![X20 : $i, X21 : $i]:
% 0.36/0.62         ((k2_xboole_0 @ X20 @ X21)
% 0.36/0.62           = (k5_xboole_0 @ X20 @ (k4_xboole_0 @ X21 @ X20)))),
% 0.36/0.62      inference('cnf', [status(esa)], [t98_xboole_1])).
% 0.36/0.62  thf(t46_zfmisc_1, conjecture,
% 0.36/0.62    (![A:$i,B:$i]:
% 0.36/0.62     ( ( r2_hidden @ A @ B ) =>
% 0.36/0.62       ( ( k2_xboole_0 @ ( k1_tarski @ A ) @ B ) = ( B ) ) ))).
% 0.36/0.62  thf(zf_stmt_0, negated_conjecture,
% 0.36/0.62    (~( ![A:$i,B:$i]:
% 0.36/0.62        ( ( r2_hidden @ A @ B ) =>
% 0.36/0.62          ( ( k2_xboole_0 @ ( k1_tarski @ A ) @ B ) = ( B ) ) ) )),
% 0.36/0.62    inference('cnf.neg', [status(esa)], [t46_zfmisc_1])).
% 0.36/0.62  thf('7', plain, ((r2_hidden @ sk_A @ sk_B_1)),
% 0.36/0.62      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.36/0.62  thf(l1_zfmisc_1, axiom,
% 0.36/0.62    (![A:$i,B:$i]:
% 0.36/0.62     ( ( r1_tarski @ ( k1_tarski @ A ) @ B ) <=> ( r2_hidden @ A @ B ) ))).
% 0.36/0.62  thf('8', plain,
% 0.36/0.62      (![X50 : $i, X52 : $i]:
% 0.36/0.62         ((r1_tarski @ (k1_tarski @ X50) @ X52) | ~ (r2_hidden @ X50 @ X52))),
% 0.36/0.62      inference('cnf', [status(esa)], [l1_zfmisc_1])).
% 0.36/0.62  thf('9', plain, ((r1_tarski @ (k1_tarski @ sk_A) @ sk_B_1)),
% 0.36/0.62      inference('sup-', [status(thm)], ['7', '8'])).
% 0.36/0.62  thf(t28_xboole_1, axiom,
% 0.36/0.62    (![A:$i,B:$i]:
% 0.36/0.62     ( ( r1_tarski @ A @ B ) => ( ( k3_xboole_0 @ A @ B ) = ( A ) ) ))).
% 0.36/0.62  thf('10', plain,
% 0.36/0.62      (![X11 : $i, X12 : $i]:
% 0.36/0.62         (((k3_xboole_0 @ X11 @ X12) = (X11)) | ~ (r1_tarski @ X11 @ X12))),
% 0.36/0.62      inference('cnf', [status(esa)], [t28_xboole_1])).
% 0.36/0.62  thf('11', plain,
% 0.36/0.62      (((k3_xboole_0 @ (k1_tarski @ sk_A) @ sk_B_1) = (k1_tarski @ sk_A))),
% 0.36/0.62      inference('sup-', [status(thm)], ['9', '10'])).
% 0.36/0.62  thf(commutativity_k3_xboole_0, axiom,
% 0.36/0.62    (![A:$i,B:$i]: ( ( k3_xboole_0 @ A @ B ) = ( k3_xboole_0 @ B @ A ) ))).
% 0.36/0.62  thf('12', plain,
% 0.36/0.62      (![X0 : $i, X1 : $i]: ((k3_xboole_0 @ X1 @ X0) = (k3_xboole_0 @ X0 @ X1))),
% 0.36/0.62      inference('cnf', [status(esa)], [commutativity_k3_xboole_0])).
% 0.36/0.62  thf('13', plain,
% 0.36/0.62      (((k3_xboole_0 @ sk_B_1 @ (k1_tarski @ sk_A)) = (k1_tarski @ sk_A))),
% 0.36/0.62      inference('demod', [status(thm)], ['11', '12'])).
% 0.36/0.62  thf('14', plain,
% 0.36/0.62      (![X7 : $i, X8 : $i]:
% 0.36/0.62         ((k4_xboole_0 @ X7 @ X8)
% 0.36/0.62           = (k5_xboole_0 @ X7 @ (k3_xboole_0 @ X7 @ X8)))),
% 0.36/0.62      inference('cnf', [status(esa)], [t100_xboole_1])).
% 0.36/0.62  thf('15', plain,
% 0.36/0.62      (((k4_xboole_0 @ sk_B_1 @ (k1_tarski @ sk_A))
% 0.36/0.62         = (k5_xboole_0 @ sk_B_1 @ (k1_tarski @ sk_A)))),
% 0.36/0.62      inference('sup+', [status(thm)], ['13', '14'])).
% 0.36/0.62  thf(t91_xboole_1, axiom,
% 0.36/0.62    (![A:$i,B:$i,C:$i]:
% 0.36/0.62     ( ( k5_xboole_0 @ ( k5_xboole_0 @ A @ B ) @ C ) =
% 0.36/0.62       ( k5_xboole_0 @ A @ ( k5_xboole_0 @ B @ C ) ) ))).
% 0.36/0.62  thf('16', plain,
% 0.36/0.62      (![X17 : $i, X18 : $i, X19 : $i]:
% 0.36/0.62         ((k5_xboole_0 @ (k5_xboole_0 @ X17 @ X18) @ X19)
% 0.36/0.62           = (k5_xboole_0 @ X17 @ (k5_xboole_0 @ X18 @ X19)))),
% 0.36/0.62      inference('cnf', [status(esa)], [t91_xboole_1])).
% 0.36/0.62  thf('17', plain,
% 0.36/0.62      (![X0 : $i]:
% 0.36/0.62         ((k5_xboole_0 @ (k4_xboole_0 @ sk_B_1 @ (k1_tarski @ sk_A)) @ X0)
% 0.36/0.62           = (k5_xboole_0 @ sk_B_1 @ (k5_xboole_0 @ (k1_tarski @ sk_A) @ X0)))),
% 0.36/0.62      inference('sup+', [status(thm)], ['15', '16'])).
% 0.36/0.62  thf('18', plain,
% 0.36/0.62      (![X0 : $i]:
% 0.36/0.62         ((k5_xboole_0 @ (k4_xboole_0 @ sk_B_1 @ (k1_tarski @ sk_A)) @ 
% 0.36/0.62           (k4_xboole_0 @ X0 @ (k1_tarski @ sk_A)))
% 0.36/0.62           = (k5_xboole_0 @ sk_B_1 @ (k2_xboole_0 @ (k1_tarski @ sk_A) @ X0)))),
% 0.36/0.62      inference('sup+', [status(thm)], ['6', '17'])).
% 0.36/0.62  thf('19', plain,
% 0.36/0.62      (((k1_xboole_0)
% 0.36/0.62         = (k5_xboole_0 @ sk_B_1 @ (k2_xboole_0 @ (k1_tarski @ sk_A) @ sk_B_1)))),
% 0.36/0.62      inference('sup+', [status(thm)], ['5', '18'])).
% 0.36/0.62  thf('20', plain,
% 0.36/0.62      (![X17 : $i, X18 : $i, X19 : $i]:
% 0.36/0.62         ((k5_xboole_0 @ (k5_xboole_0 @ X17 @ X18) @ X19)
% 0.36/0.62           = (k5_xboole_0 @ X17 @ (k5_xboole_0 @ X18 @ X19)))),
% 0.36/0.62      inference('cnf', [status(esa)], [t91_xboole_1])).
% 0.36/0.62  thf('21', plain,
% 0.36/0.62      (![X0 : $i]:
% 0.36/0.62         ((k5_xboole_0 @ k1_xboole_0 @ X0)
% 0.36/0.62           = (k5_xboole_0 @ sk_B_1 @ 
% 0.36/0.62              (k5_xboole_0 @ (k2_xboole_0 @ (k1_tarski @ sk_A) @ sk_B_1) @ X0)))),
% 0.36/0.62      inference('sup+', [status(thm)], ['19', '20'])).
% 0.36/0.62  thf(t3_boole, axiom,
% 0.36/0.62    (![A:$i]: ( ( k4_xboole_0 @ A @ k1_xboole_0 ) = ( A ) ))).
% 0.36/0.62  thf('22', plain, (![X13 : $i]: ((k4_xboole_0 @ X13 @ k1_xboole_0) = (X13))),
% 0.36/0.62      inference('cnf', [status(esa)], [t3_boole])).
% 0.36/0.62  thf('23', plain,
% 0.36/0.62      (![X20 : $i, X21 : $i]:
% 0.36/0.62         ((k2_xboole_0 @ X20 @ X21)
% 0.36/0.62           = (k5_xboole_0 @ X20 @ (k4_xboole_0 @ X21 @ X20)))),
% 0.36/0.62      inference('cnf', [status(esa)], [t98_xboole_1])).
% 0.36/0.62  thf('24', plain,
% 0.36/0.62      (![X0 : $i]:
% 0.36/0.62         ((k2_xboole_0 @ k1_xboole_0 @ X0) = (k5_xboole_0 @ k1_xboole_0 @ X0))),
% 0.36/0.62      inference('sup+', [status(thm)], ['22', '23'])).
% 0.36/0.62  thf('25', plain,
% 0.36/0.62      (![X0 : $i]:
% 0.36/0.62         ((k2_xboole_0 @ k1_xboole_0 @ X0)
% 0.36/0.62           = (k5_xboole_0 @ sk_B_1 @ 
% 0.36/0.62              (k5_xboole_0 @ (k2_xboole_0 @ (k1_tarski @ sk_A) @ sk_B_1) @ X0)))),
% 0.36/0.62      inference('demod', [status(thm)], ['21', '24'])).
% 0.36/0.62  thf('26', plain,
% 0.36/0.62      (((k2_xboole_0 @ k1_xboole_0 @ 
% 0.36/0.62         (k2_xboole_0 @ (k1_tarski @ sk_A) @ sk_B_1))
% 0.36/0.62         = (k5_xboole_0 @ sk_B_1 @ k1_xboole_0))),
% 0.36/0.62      inference('sup+', [status(thm)], ['4', '25'])).
% 0.36/0.62  thf(t65_xboole_1, axiom, (![A:$i]: ( r1_xboole_0 @ A @ k1_xboole_0 ))).
% 0.36/0.62  thf('27', plain, (![X16 : $i]: (r1_xboole_0 @ X16 @ k1_xboole_0)),
% 0.36/0.62      inference('cnf', [status(esa)], [t65_xboole_1])).
% 0.36/0.62  thf(t7_xboole_0, axiom,
% 0.36/0.62    (![A:$i]:
% 0.36/0.62     ( ~( ( ( A ) != ( k1_xboole_0 ) ) & 
% 0.36/0.62          ( ![B:$i]: ( ~( r2_hidden @ B @ A ) ) ) ) ))).
% 0.36/0.62  thf('28', plain,
% 0.36/0.62      (![X6 : $i]: (((X6) = (k1_xboole_0)) | (r2_hidden @ (sk_B @ X6) @ X6))),
% 0.36/0.62      inference('cnf', [status(esa)], [t7_xboole_0])).
% 0.36/0.62  thf(t4_xboole_0, axiom,
% 0.36/0.62    (![A:$i,B:$i]:
% 0.36/0.62     ( ( ~( ( ?[C:$i]: ( r2_hidden @ C @ ( k3_xboole_0 @ A @ B ) ) ) & 
% 0.36/0.62            ( r1_xboole_0 @ A @ B ) ) ) & 
% 0.36/0.62       ( ~( ( ~( r1_xboole_0 @ A @ B ) ) & 
% 0.36/0.62            ( ![C:$i]: ( ~( r2_hidden @ C @ ( k3_xboole_0 @ A @ B ) ) ) ) ) ) ))).
% 0.36/0.62  thf('29', plain,
% 0.36/0.62      (![X2 : $i, X4 : $i, X5 : $i]:
% 0.36/0.62         (~ (r2_hidden @ X4 @ (k3_xboole_0 @ X2 @ X5))
% 0.36/0.62          | ~ (r1_xboole_0 @ X2 @ X5))),
% 0.36/0.62      inference('cnf', [status(esa)], [t4_xboole_0])).
% 0.36/0.62  thf('30', plain,
% 0.36/0.62      (![X0 : $i, X1 : $i]:
% 0.36/0.62         (((k3_xboole_0 @ X1 @ X0) = (k1_xboole_0)) | ~ (r1_xboole_0 @ X1 @ X0))),
% 0.36/0.62      inference('sup-', [status(thm)], ['28', '29'])).
% 0.36/0.62  thf('31', plain,
% 0.36/0.62      (![X0 : $i]: ((k3_xboole_0 @ X0 @ k1_xboole_0) = (k1_xboole_0))),
% 0.36/0.62      inference('sup-', [status(thm)], ['27', '30'])).
% 0.36/0.62  thf('32', plain,
% 0.36/0.62      (![X7 : $i, X8 : $i]:
% 0.36/0.62         ((k4_xboole_0 @ X7 @ X8)
% 0.36/0.62           = (k5_xboole_0 @ X7 @ (k3_xboole_0 @ X7 @ X8)))),
% 0.36/0.62      inference('cnf', [status(esa)], [t100_xboole_1])).
% 0.36/0.62  thf('33', plain,
% 0.36/0.62      (![X0 : $i]:
% 0.36/0.62         ((k4_xboole_0 @ X0 @ k1_xboole_0) = (k5_xboole_0 @ X0 @ k1_xboole_0))),
% 0.36/0.62      inference('sup+', [status(thm)], ['31', '32'])).
% 0.36/0.62  thf('34', plain, (![X13 : $i]: ((k4_xboole_0 @ X13 @ k1_xboole_0) = (X13))),
% 0.36/0.62      inference('cnf', [status(esa)], [t3_boole])).
% 0.36/0.62  thf('35', plain, (![X0 : $i]: ((X0) = (k5_xboole_0 @ X0 @ k1_xboole_0))),
% 0.36/0.62      inference('demod', [status(thm)], ['33', '34'])).
% 0.36/0.62  thf('36', plain,
% 0.36/0.62      (((k2_xboole_0 @ k1_xboole_0 @ 
% 0.36/0.62         (k2_xboole_0 @ (k1_tarski @ sk_A) @ sk_B_1)) = (sk_B_1))),
% 0.36/0.62      inference('demod', [status(thm)], ['26', '35'])).
% 0.36/0.62  thf('37', plain, (![X0 : $i]: ((k5_xboole_0 @ X0 @ X0) = (k1_xboole_0))),
% 0.36/0.62      inference('sup+', [status(thm)], ['2', '3'])).
% 0.36/0.62  thf('38', plain, (![X0 : $i]: ((k5_xboole_0 @ X0 @ X0) = (k1_xboole_0))),
% 0.36/0.62      inference('sup+', [status(thm)], ['2', '3'])).
% 0.36/0.62  thf('39', plain,
% 0.36/0.62      (![X17 : $i, X18 : $i, X19 : $i]:
% 0.36/0.62         ((k5_xboole_0 @ (k5_xboole_0 @ X17 @ X18) @ X19)
% 0.36/0.62           = (k5_xboole_0 @ X17 @ (k5_xboole_0 @ X18 @ X19)))),
% 0.36/0.62      inference('cnf', [status(esa)], [t91_xboole_1])).
% 0.36/0.62  thf('40', plain,
% 0.36/0.62      (![X0 : $i, X1 : $i]:
% 0.36/0.62         ((k5_xboole_0 @ k1_xboole_0 @ X0)
% 0.36/0.62           = (k5_xboole_0 @ X1 @ (k5_xboole_0 @ X1 @ X0)))),
% 0.36/0.62      inference('sup+', [status(thm)], ['38', '39'])).
% 0.36/0.62  thf('41', plain,
% 0.36/0.62      (![X0 : $i]:
% 0.36/0.62         ((k2_xboole_0 @ k1_xboole_0 @ X0) = (k5_xboole_0 @ k1_xboole_0 @ X0))),
% 0.36/0.62      inference('sup+', [status(thm)], ['22', '23'])).
% 0.36/0.62  thf('42', plain,
% 0.36/0.62      (![X0 : $i, X1 : $i]:
% 0.36/0.62         ((k2_xboole_0 @ k1_xboole_0 @ X0)
% 0.36/0.62           = (k5_xboole_0 @ X1 @ (k5_xboole_0 @ X1 @ X0)))),
% 0.36/0.62      inference('demod', [status(thm)], ['40', '41'])).
% 0.36/0.62  thf('43', plain,
% 0.36/0.62      (![X0 : $i]:
% 0.36/0.62         ((k2_xboole_0 @ k1_xboole_0 @ X0) = (k5_xboole_0 @ X0 @ k1_xboole_0))),
% 0.36/0.62      inference('sup+', [status(thm)], ['37', '42'])).
% 0.36/0.62  thf('44', plain, (![X0 : $i]: ((X0) = (k5_xboole_0 @ X0 @ k1_xboole_0))),
% 0.36/0.62      inference('demod', [status(thm)], ['33', '34'])).
% 0.36/0.62  thf('45', plain, (![X0 : $i]: ((X0) = (k2_xboole_0 @ k1_xboole_0 @ X0))),
% 0.36/0.62      inference('sup+', [status(thm)], ['43', '44'])).
% 0.36/0.62  thf('46', plain, (((k2_xboole_0 @ (k1_tarski @ sk_A) @ sk_B_1) = (sk_B_1))),
% 0.36/0.62      inference('demod', [status(thm)], ['36', '45'])).
% 0.36/0.62  thf('47', plain, (((k2_xboole_0 @ (k1_tarski @ sk_A) @ sk_B_1) != (sk_B_1))),
% 0.36/0.62      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.36/0.62  thf('48', plain, ($false),
% 0.36/0.62      inference('simplify_reflect-', [status(thm)], ['46', '47'])).
% 0.36/0.62  
% 0.36/0.62  % SZS output end Refutation
% 0.36/0.62  
% 0.36/0.63  % Zipperpin 1.5 exiting
%------------------------------------------------------------------------------
