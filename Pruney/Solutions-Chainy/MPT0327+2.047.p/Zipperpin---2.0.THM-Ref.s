%------------------------------------------------------------------------------
% File       : Zipperpin---2.0
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_portfolio.sh /export/starexec/sandbox2/benchmark/theBenchmark.p /export/starexec/sandbox2/tmp/tmp.iV875GUlsg

% Computer   : n011.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 13:35:56 EST 2020

% Result     : Theorem 0.39s
% Output     : Refutation 0.39s
% Verified   : 
% Statistics : Number of formulae       :   85 ( 144 expanded)
%              Number of leaves         :   25 (  56 expanded)
%              Depth                    :   13
%              Number of atoms          :  555 ( 987 expanded)
%              Number of equality atoms :   62 ( 108 expanded)
%              Maximal formula depth    :   10 (   6 average)

% Comments   : 
%------------------------------------------------------------------------------
thf(k4_xboole_0_type,type,(
    k4_xboole_0: $i > $i > $i )).

thf(r2_hidden_type,type,(
    r2_hidden: $i > $i > $o )).

thf(k1_xboole_0_type,type,(
    k1_xboole_0: $i )).

thf(sk_B_type,type,(
    sk_B: $i )).

thf(r1_tarski_type,type,(
    r1_tarski: $i > $i > $o )).

thf(k1_zfmisc_1_type,type,(
    k1_zfmisc_1: $i > $i )).

thf(sk_A_type,type,(
    sk_A: $i )).

thf(k3_xboole_0_type,type,(
    k3_xboole_0: $i > $i > $i )).

thf(k2_xboole_0_type,type,(
    k2_xboole_0: $i > $i > $i )).

thf(k1_tarski_type,type,(
    k1_tarski: $i > $i )).

thf(k5_xboole_0_type,type,(
    k5_xboole_0: $i > $i > $i )).

thf(k3_tarski_type,type,(
    k3_tarski: $i > $i )).

thf(t140_zfmisc_1,conjecture,(
    ! [A: $i,B: $i] :
      ( ( r2_hidden @ A @ B )
     => ( ( k2_xboole_0 @ ( k4_xboole_0 @ B @ ( k1_tarski @ A ) ) @ ( k1_tarski @ A ) )
        = B ) ) )).

thf(zf_stmt_0,negated_conjecture,(
    ~ ! [A: $i,B: $i] :
        ( ( r2_hidden @ A @ B )
       => ( ( k2_xboole_0 @ ( k4_xboole_0 @ B @ ( k1_tarski @ A ) ) @ ( k1_tarski @ A ) )
          = B ) ) ),
    inference('cnf.neg',[status(esa)],[t140_zfmisc_1])).

thf('0',plain,(
    r2_hidden @ sk_A @ sk_B ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(l1_zfmisc_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( r1_tarski @ ( k1_tarski @ A ) @ B )
    <=> ( r2_hidden @ A @ B ) ) )).

thf('1',plain,(
    ! [X35: $i,X37: $i] :
      ( ( r1_tarski @ ( k1_tarski @ X35 ) @ X37 )
      | ~ ( r2_hidden @ X35 @ X37 ) ) ),
    inference(cnf,[status(esa)],[l1_zfmisc_1])).

thf('2',plain,(
    r1_tarski @ ( k1_tarski @ sk_A ) @ sk_B ),
    inference('sup-',[status(thm)],['0','1'])).

thf(t28_xboole_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( r1_tarski @ A @ B )
     => ( ( k3_xboole_0 @ A @ B )
        = A ) ) )).

thf('3',plain,(
    ! [X10: $i,X11: $i] :
      ( ( ( k3_xboole_0 @ X10 @ X11 )
        = X10 )
      | ~ ( r1_tarski @ X10 @ X11 ) ) ),
    inference(cnf,[status(esa)],[t28_xboole_1])).

thf('4',plain,
    ( ( k3_xboole_0 @ ( k1_tarski @ sk_A ) @ sk_B )
    = ( k1_tarski @ sk_A ) ),
    inference('sup-',[status(thm)],['2','3'])).

thf(commutativity_k3_xboole_0,axiom,(
    ! [A: $i,B: $i] :
      ( ( k3_xboole_0 @ A @ B )
      = ( k3_xboole_0 @ B @ A ) ) )).

thf('5',plain,(
    ! [X0: $i,X1: $i] :
      ( ( k3_xboole_0 @ X1 @ X0 )
      = ( k3_xboole_0 @ X0 @ X1 ) ) ),
    inference(cnf,[status(esa)],[commutativity_k3_xboole_0])).

thf('6',plain,
    ( ( k3_xboole_0 @ sk_B @ ( k1_tarski @ sk_A ) )
    = ( k1_tarski @ sk_A ) ),
    inference(demod,[status(thm)],['4','5'])).

thf(t100_xboole_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( k4_xboole_0 @ A @ B )
      = ( k5_xboole_0 @ A @ ( k3_xboole_0 @ A @ B ) ) ) )).

thf('7',plain,(
    ! [X5: $i,X6: $i] :
      ( ( k4_xboole_0 @ X5 @ X6 )
      = ( k5_xboole_0 @ X5 @ ( k3_xboole_0 @ X5 @ X6 ) ) ) ),
    inference(cnf,[status(esa)],[t100_xboole_1])).

thf('8',plain,
    ( ( k4_xboole_0 @ sk_B @ ( k1_tarski @ sk_A ) )
    = ( k5_xboole_0 @ sk_B @ ( k1_tarski @ sk_A ) ) ),
    inference('sup+',[status(thm)],['6','7'])).

thf(t48_xboole_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( k4_xboole_0 @ A @ ( k4_xboole_0 @ A @ B ) )
      = ( k3_xboole_0 @ A @ B ) ) )).

thf('9',plain,(
    ! [X14: $i,X15: $i] :
      ( ( k4_xboole_0 @ X14 @ ( k4_xboole_0 @ X14 @ X15 ) )
      = ( k3_xboole_0 @ X14 @ X15 ) ) ),
    inference(cnf,[status(esa)],[t48_xboole_1])).

thf(t36_xboole_1,axiom,(
    ! [A: $i,B: $i] :
      ( r1_tarski @ ( k4_xboole_0 @ A @ B ) @ A ) )).

thf('10',plain,(
    ! [X12: $i,X13: $i] :
      ( r1_tarski @ ( k4_xboole_0 @ X12 @ X13 ) @ X12 ) ),
    inference(cnf,[status(esa)],[t36_xboole_1])).

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
    ! [X0: $i,X1: $i] :
      ( ( k4_xboole_0 @ ( k4_xboole_0 @ X0 @ X1 ) @ X0 )
      = k1_xboole_0 ) ),
    inference('sup-',[status(thm)],['10','11'])).

thf('13',plain,(
    ! [X0: $i,X1: $i] :
      ( ( k4_xboole_0 @ ( k3_xboole_0 @ X1 @ X0 ) @ X1 )
      = k1_xboole_0 ) ),
    inference('sup+',[status(thm)],['9','12'])).

thf(t49_xboole_1,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( k3_xboole_0 @ A @ ( k4_xboole_0 @ B @ C ) )
      = ( k4_xboole_0 @ ( k3_xboole_0 @ A @ B ) @ C ) ) )).

thf('14',plain,(
    ! [X16: $i,X17: $i,X18: $i] :
      ( ( k3_xboole_0 @ X16 @ ( k4_xboole_0 @ X17 @ X18 ) )
      = ( k4_xboole_0 @ ( k3_xboole_0 @ X16 @ X17 ) @ X18 ) ) ),
    inference(cnf,[status(esa)],[t49_xboole_1])).

thf('15',plain,(
    ! [X0: $i,X1: $i] :
      ( ( k3_xboole_0 @ X1 @ ( k4_xboole_0 @ X0 @ X1 ) )
      = k1_xboole_0 ) ),
    inference(demod,[status(thm)],['13','14'])).

thf('16',plain,(
    ! [X5: $i,X6: $i] :
      ( ( k4_xboole_0 @ X5 @ X6 )
      = ( k5_xboole_0 @ X5 @ ( k3_xboole_0 @ X5 @ X6 ) ) ) ),
    inference(cnf,[status(esa)],[t100_xboole_1])).

thf('17',plain,(
    ! [X0: $i,X1: $i] :
      ( ( k4_xboole_0 @ X0 @ ( k4_xboole_0 @ X1 @ X0 ) )
      = ( k5_xboole_0 @ X0 @ k1_xboole_0 ) ) ),
    inference('sup+',[status(thm)],['15','16'])).

thf(t5_boole,axiom,(
    ! [A: $i] :
      ( ( k5_xboole_0 @ A @ k1_xboole_0 )
      = A ) )).

thf('18',plain,(
    ! [X19: $i] :
      ( ( k5_xboole_0 @ X19 @ k1_xboole_0 )
      = X19 ) ),
    inference(cnf,[status(esa)],[t5_boole])).

thf('19',plain,(
    ! [X0: $i,X1: $i] :
      ( ( k4_xboole_0 @ X0 @ ( k4_xboole_0 @ X1 @ X0 ) )
      = X0 ) ),
    inference(demod,[status(thm)],['17','18'])).

thf('20',plain,
    ( ( k4_xboole_0 @ ( k1_tarski @ sk_A ) @ ( k5_xboole_0 @ sk_B @ ( k1_tarski @ sk_A ) ) )
    = ( k1_tarski @ sk_A ) ),
    inference('sup+',[status(thm)],['8','19'])).

thf('21',plain,(
    ! [X0: $i,X1: $i] :
      ( ( k3_xboole_0 @ X1 @ X0 )
      = ( k3_xboole_0 @ X0 @ X1 ) ) ),
    inference(cnf,[status(esa)],[commutativity_k3_xboole_0])).

thf(t94_xboole_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( k2_xboole_0 @ A @ B )
      = ( k5_xboole_0 @ ( k5_xboole_0 @ A @ B ) @ ( k3_xboole_0 @ A @ B ) ) ) )).

thf('22',plain,(
    ! [X23: $i,X24: $i] :
      ( ( k2_xboole_0 @ X23 @ X24 )
      = ( k5_xboole_0 @ ( k5_xboole_0 @ X23 @ X24 ) @ ( k3_xboole_0 @ X23 @ X24 ) ) ) ),
    inference(cnf,[status(esa)],[t94_xboole_1])).

thf(t91_xboole_1,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( k5_xboole_0 @ ( k5_xboole_0 @ A @ B ) @ C )
      = ( k5_xboole_0 @ A @ ( k5_xboole_0 @ B @ C ) ) ) )).

thf('23',plain,(
    ! [X20: $i,X21: $i,X22: $i] :
      ( ( k5_xboole_0 @ ( k5_xboole_0 @ X20 @ X21 ) @ X22 )
      = ( k5_xboole_0 @ X20 @ ( k5_xboole_0 @ X21 @ X22 ) ) ) ),
    inference(cnf,[status(esa)],[t91_xboole_1])).

thf('24',plain,(
    ! [X23: $i,X24: $i] :
      ( ( k2_xboole_0 @ X23 @ X24 )
      = ( k5_xboole_0 @ X23 @ ( k5_xboole_0 @ X24 @ ( k3_xboole_0 @ X23 @ X24 ) ) ) ) ),
    inference(demod,[status(thm)],['22','23'])).

thf('25',plain,(
    ! [X0: $i,X1: $i] :
      ( ( k2_xboole_0 @ X0 @ X1 )
      = ( k5_xboole_0 @ X0 @ ( k5_xboole_0 @ X1 @ ( k3_xboole_0 @ X1 @ X0 ) ) ) ) ),
    inference('sup+',[status(thm)],['21','24'])).

thf('26',plain,(
    ! [X5: $i,X6: $i] :
      ( ( k4_xboole_0 @ X5 @ X6 )
      = ( k5_xboole_0 @ X5 @ ( k3_xboole_0 @ X5 @ X6 ) ) ) ),
    inference(cnf,[status(esa)],[t100_xboole_1])).

thf('27',plain,(
    ! [X0: $i,X1: $i] :
      ( ( k2_xboole_0 @ X0 @ X1 )
      = ( k5_xboole_0 @ X0 @ ( k4_xboole_0 @ X1 @ X0 ) ) ) ),
    inference(demod,[status(thm)],['25','26'])).

thf('28',plain,
    ( ( k2_xboole_0 @ ( k5_xboole_0 @ sk_B @ ( k1_tarski @ sk_A ) ) @ ( k1_tarski @ sk_A ) )
    = ( k5_xboole_0 @ ( k5_xboole_0 @ sk_B @ ( k1_tarski @ sk_A ) ) @ ( k1_tarski @ sk_A ) ) ),
    inference('sup+',[status(thm)],['20','27'])).

thf('29',plain,(
    ! [X20: $i,X21: $i,X22: $i] :
      ( ( k5_xboole_0 @ ( k5_xboole_0 @ X20 @ X21 ) @ X22 )
      = ( k5_xboole_0 @ X20 @ ( k5_xboole_0 @ X21 @ X22 ) ) ) ),
    inference(cnf,[status(esa)],[t91_xboole_1])).

thf('30',plain,(
    ! [X14: $i,X15: $i] :
      ( ( k4_xboole_0 @ X14 @ ( k4_xboole_0 @ X14 @ X15 ) )
      = ( k3_xboole_0 @ X14 @ X15 ) ) ),
    inference(cnf,[status(esa)],[t48_xboole_1])).

thf(t100_zfmisc_1,axiom,(
    ! [A: $i] :
      ( r1_tarski @ A @ ( k1_zfmisc_1 @ ( k3_tarski @ A ) ) ) )).

thf('31',plain,(
    ! [X40: $i] :
      ( r1_tarski @ X40 @ ( k1_zfmisc_1 @ ( k3_tarski @ X40 ) ) ) ),
    inference(cnf,[status(esa)],[t100_zfmisc_1])).

thf('32',plain,(
    ! [X2: $i,X4: $i] :
      ( ( ( k4_xboole_0 @ X2 @ X4 )
        = k1_xboole_0 )
      | ~ ( r1_tarski @ X2 @ X4 ) ) ),
    inference(cnf,[status(esa)],[l32_xboole_1])).

thf('33',plain,(
    ! [X0: $i] :
      ( ( k4_xboole_0 @ X0 @ ( k1_zfmisc_1 @ ( k3_tarski @ X0 ) ) )
      = k1_xboole_0 ) ),
    inference('sup-',[status(thm)],['31','32'])).

thf('34',plain,(
    ! [X0: $i,X1: $i] :
      ( ( k4_xboole_0 @ ( k4_xboole_0 @ X0 @ X1 ) @ X0 )
      = k1_xboole_0 ) ),
    inference('sup-',[status(thm)],['10','11'])).

thf('35',plain,(
    ! [X0: $i] :
      ( ( k4_xboole_0 @ k1_xboole_0 @ X0 )
      = k1_xboole_0 ) ),
    inference('sup+',[status(thm)],['33','34'])).

thf('36',plain,(
    ! [X0: $i] :
      ( ( k3_xboole_0 @ k1_xboole_0 @ X0 )
      = k1_xboole_0 ) ),
    inference('sup+',[status(thm)],['30','35'])).

thf('37',plain,(
    ! [X0: $i,X1: $i] :
      ( ( k3_xboole_0 @ X1 @ X0 )
      = ( k3_xboole_0 @ X0 @ X1 ) ) ),
    inference(cnf,[status(esa)],[commutativity_k3_xboole_0])).

thf('38',plain,(
    ! [X0: $i] :
      ( ( k3_xboole_0 @ X0 @ k1_xboole_0 )
      = k1_xboole_0 ) ),
    inference('sup+',[status(thm)],['36','37'])).

thf('39',plain,(
    ! [X5: $i,X6: $i] :
      ( ( k4_xboole_0 @ X5 @ X6 )
      = ( k5_xboole_0 @ X5 @ ( k3_xboole_0 @ X5 @ X6 ) ) ) ),
    inference(cnf,[status(esa)],[t100_xboole_1])).

thf('40',plain,(
    ! [X0: $i] :
      ( ( k4_xboole_0 @ X0 @ k1_xboole_0 )
      = ( k5_xboole_0 @ X0 @ k1_xboole_0 ) ) ),
    inference('sup+',[status(thm)],['38','39'])).

thf('41',plain,(
    ! [X19: $i] :
      ( ( k5_xboole_0 @ X19 @ k1_xboole_0 )
      = X19 ) ),
    inference(cnf,[status(esa)],[t5_boole])).

thf('42',plain,(
    ! [X0: $i] :
      ( ( k4_xboole_0 @ X0 @ k1_xboole_0 )
      = X0 ) ),
    inference(demod,[status(thm)],['40','41'])).

thf('43',plain,(
    ! [X12: $i,X13: $i] :
      ( r1_tarski @ ( k4_xboole_0 @ X12 @ X13 ) @ X12 ) ),
    inference(cnf,[status(esa)],[t36_xboole_1])).

thf('44',plain,(
    ! [X0: $i] :
      ( r1_tarski @ X0 @ X0 ) ),
    inference('sup+',[status(thm)],['42','43'])).

thf('45',plain,(
    ! [X10: $i,X11: $i] :
      ( ( ( k3_xboole_0 @ X10 @ X11 )
        = X10 )
      | ~ ( r1_tarski @ X10 @ X11 ) ) ),
    inference(cnf,[status(esa)],[t28_xboole_1])).

thf('46',plain,(
    ! [X0: $i] :
      ( ( k3_xboole_0 @ X0 @ X0 )
      = X0 ) ),
    inference('sup-',[status(thm)],['44','45'])).

thf('47',plain,(
    ! [X5: $i,X6: $i] :
      ( ( k4_xboole_0 @ X5 @ X6 )
      = ( k5_xboole_0 @ X5 @ ( k3_xboole_0 @ X5 @ X6 ) ) ) ),
    inference(cnf,[status(esa)],[t100_xboole_1])).

thf('48',plain,(
    ! [X0: $i] :
      ( ( k4_xboole_0 @ X0 @ X0 )
      = ( k5_xboole_0 @ X0 @ X0 ) ) ),
    inference('sup+',[status(thm)],['46','47'])).

thf('49',plain,(
    ! [X0: $i] :
      ( ( k4_xboole_0 @ X0 @ k1_xboole_0 )
      = X0 ) ),
    inference(demod,[status(thm)],['40','41'])).

thf('50',plain,(
    ! [X0: $i,X1: $i] :
      ( ( k4_xboole_0 @ ( k4_xboole_0 @ X0 @ X1 ) @ X0 )
      = k1_xboole_0 ) ),
    inference('sup-',[status(thm)],['10','11'])).

thf('51',plain,(
    ! [X0: $i] :
      ( ( k4_xboole_0 @ X0 @ X0 )
      = k1_xboole_0 ) ),
    inference('sup+',[status(thm)],['49','50'])).

thf('52',plain,(
    ! [X0: $i] :
      ( ( k5_xboole_0 @ X0 @ X0 )
      = k1_xboole_0 ) ),
    inference('sup+',[status(thm)],['48','51'])).

thf('53',plain,(
    ! [X19: $i] :
      ( ( k5_xboole_0 @ X19 @ k1_xboole_0 )
      = X19 ) ),
    inference(cnf,[status(esa)],[t5_boole])).

thf('54',plain,
    ( ( k2_xboole_0 @ ( k5_xboole_0 @ sk_B @ ( k1_tarski @ sk_A ) ) @ ( k1_tarski @ sk_A ) )
    = sk_B ),
    inference(demod,[status(thm)],['28','29','52','53'])).

thf('55',plain,(
    ( k2_xboole_0 @ ( k4_xboole_0 @ sk_B @ ( k1_tarski @ sk_A ) ) @ ( k1_tarski @ sk_A ) )
 != sk_B ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('56',plain,
    ( ( k4_xboole_0 @ sk_B @ ( k1_tarski @ sk_A ) )
    = ( k5_xboole_0 @ sk_B @ ( k1_tarski @ sk_A ) ) ),
    inference('sup+',[status(thm)],['6','7'])).

thf('57',plain,(
    ( k2_xboole_0 @ ( k5_xboole_0 @ sk_B @ ( k1_tarski @ sk_A ) ) @ ( k1_tarski @ sk_A ) )
 != sk_B ),
    inference(demod,[status(thm)],['55','56'])).

thf('58',plain,(
    $false ),
    inference('simplify_reflect-',[status(thm)],['54','57'])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.03/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.03/0.13  % Command    : run_portfolio.sh /export/starexec/sandbox2/benchmark/theBenchmark.p /export/starexec/sandbox2/tmp/tmp.iV875GUlsg
% 0.13/0.34  % Computer   : n011.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % DateTime   : Tue Dec  1 11:20:12 EST 2020
% 0.13/0.34  % CPUTime    : 
% 0.13/0.34  % Running portfolio for 600 s
% 0.13/0.34  % File         : /export/starexec/sandbox2/benchmark/theBenchmark.p
% 0.13/0.34  % Number of cores: 8
% 0.13/0.35  % Python version: Python 3.6.8
% 0.13/0.35  % Running in FO mode
% 0.39/0.58  % Running /export/starexec/sandbox2/solver/bin/fo/fo7.sh for 78
% 0.39/0.58  % Solved by: fo/fo7.sh
% 0.39/0.58  To remain in the chosen logic fragment, unification with booleans has been disabled.
% 0.39/0.58  % done 369 iterations in 0.127s
% 0.39/0.58  % SZS status Theorem for '/export/starexec/sandbox2/benchmark/theBenchmark.p'
% 0.39/0.58  % SZS output start Refutation
% 0.39/0.58  thf(k4_xboole_0_type, type, k4_xboole_0: $i > $i > $i).
% 0.39/0.58  thf(r2_hidden_type, type, r2_hidden: $i > $i > $o).
% 0.39/0.58  thf(k1_xboole_0_type, type, k1_xboole_0: $i).
% 0.39/0.58  thf(sk_B_type, type, sk_B: $i).
% 0.39/0.58  thf(r1_tarski_type, type, r1_tarski: $i > $i > $o).
% 0.39/0.58  thf(k1_zfmisc_1_type, type, k1_zfmisc_1: $i > $i).
% 0.39/0.58  thf(sk_A_type, type, sk_A: $i).
% 0.39/0.58  thf(k3_xboole_0_type, type, k3_xboole_0: $i > $i > $i).
% 0.39/0.58  thf(k2_xboole_0_type, type, k2_xboole_0: $i > $i > $i).
% 0.39/0.58  thf(k1_tarski_type, type, k1_tarski: $i > $i).
% 0.39/0.58  thf(k5_xboole_0_type, type, k5_xboole_0: $i > $i > $i).
% 0.39/0.58  thf(k3_tarski_type, type, k3_tarski: $i > $i).
% 0.39/0.58  thf(t140_zfmisc_1, conjecture,
% 0.39/0.58    (![A:$i,B:$i]:
% 0.39/0.58     ( ( r2_hidden @ A @ B ) =>
% 0.39/0.58       ( ( k2_xboole_0 @
% 0.39/0.58           ( k4_xboole_0 @ B @ ( k1_tarski @ A ) ) @ ( k1_tarski @ A ) ) =
% 0.39/0.58         ( B ) ) ))).
% 0.39/0.58  thf(zf_stmt_0, negated_conjecture,
% 0.39/0.58    (~( ![A:$i,B:$i]:
% 0.39/0.58        ( ( r2_hidden @ A @ B ) =>
% 0.39/0.58          ( ( k2_xboole_0 @
% 0.39/0.58              ( k4_xboole_0 @ B @ ( k1_tarski @ A ) ) @ ( k1_tarski @ A ) ) =
% 0.39/0.58            ( B ) ) ) )),
% 0.39/0.58    inference('cnf.neg', [status(esa)], [t140_zfmisc_1])).
% 0.39/0.58  thf('0', plain, ((r2_hidden @ sk_A @ sk_B)),
% 0.39/0.58      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.39/0.58  thf(l1_zfmisc_1, axiom,
% 0.39/0.58    (![A:$i,B:$i]:
% 0.39/0.58     ( ( r1_tarski @ ( k1_tarski @ A ) @ B ) <=> ( r2_hidden @ A @ B ) ))).
% 0.39/0.58  thf('1', plain,
% 0.39/0.58      (![X35 : $i, X37 : $i]:
% 0.39/0.58         ((r1_tarski @ (k1_tarski @ X35) @ X37) | ~ (r2_hidden @ X35 @ X37))),
% 0.39/0.58      inference('cnf', [status(esa)], [l1_zfmisc_1])).
% 0.39/0.58  thf('2', plain, ((r1_tarski @ (k1_tarski @ sk_A) @ sk_B)),
% 0.39/0.58      inference('sup-', [status(thm)], ['0', '1'])).
% 0.39/0.58  thf(t28_xboole_1, axiom,
% 0.39/0.58    (![A:$i,B:$i]:
% 0.39/0.58     ( ( r1_tarski @ A @ B ) => ( ( k3_xboole_0 @ A @ B ) = ( A ) ) ))).
% 0.39/0.58  thf('3', plain,
% 0.39/0.58      (![X10 : $i, X11 : $i]:
% 0.39/0.58         (((k3_xboole_0 @ X10 @ X11) = (X10)) | ~ (r1_tarski @ X10 @ X11))),
% 0.39/0.58      inference('cnf', [status(esa)], [t28_xboole_1])).
% 0.39/0.58  thf('4', plain,
% 0.39/0.58      (((k3_xboole_0 @ (k1_tarski @ sk_A) @ sk_B) = (k1_tarski @ sk_A))),
% 0.39/0.58      inference('sup-', [status(thm)], ['2', '3'])).
% 0.39/0.58  thf(commutativity_k3_xboole_0, axiom,
% 0.39/0.58    (![A:$i,B:$i]: ( ( k3_xboole_0 @ A @ B ) = ( k3_xboole_0 @ B @ A ) ))).
% 0.39/0.58  thf('5', plain,
% 0.39/0.58      (![X0 : $i, X1 : $i]: ((k3_xboole_0 @ X1 @ X0) = (k3_xboole_0 @ X0 @ X1))),
% 0.39/0.58      inference('cnf', [status(esa)], [commutativity_k3_xboole_0])).
% 0.39/0.58  thf('6', plain,
% 0.39/0.58      (((k3_xboole_0 @ sk_B @ (k1_tarski @ sk_A)) = (k1_tarski @ sk_A))),
% 0.39/0.58      inference('demod', [status(thm)], ['4', '5'])).
% 0.39/0.58  thf(t100_xboole_1, axiom,
% 0.39/0.58    (![A:$i,B:$i]:
% 0.39/0.58     ( ( k4_xboole_0 @ A @ B ) = ( k5_xboole_0 @ A @ ( k3_xboole_0 @ A @ B ) ) ))).
% 0.39/0.58  thf('7', plain,
% 0.39/0.58      (![X5 : $i, X6 : $i]:
% 0.39/0.58         ((k4_xboole_0 @ X5 @ X6)
% 0.39/0.58           = (k5_xboole_0 @ X5 @ (k3_xboole_0 @ X5 @ X6)))),
% 0.39/0.58      inference('cnf', [status(esa)], [t100_xboole_1])).
% 0.39/0.58  thf('8', plain,
% 0.39/0.58      (((k4_xboole_0 @ sk_B @ (k1_tarski @ sk_A))
% 0.39/0.58         = (k5_xboole_0 @ sk_B @ (k1_tarski @ sk_A)))),
% 0.39/0.58      inference('sup+', [status(thm)], ['6', '7'])).
% 0.39/0.58  thf(t48_xboole_1, axiom,
% 0.39/0.58    (![A:$i,B:$i]:
% 0.39/0.58     ( ( k4_xboole_0 @ A @ ( k4_xboole_0 @ A @ B ) ) = ( k3_xboole_0 @ A @ B ) ))).
% 0.39/0.58  thf('9', plain,
% 0.39/0.58      (![X14 : $i, X15 : $i]:
% 0.39/0.58         ((k4_xboole_0 @ X14 @ (k4_xboole_0 @ X14 @ X15))
% 0.39/0.58           = (k3_xboole_0 @ X14 @ X15))),
% 0.39/0.58      inference('cnf', [status(esa)], [t48_xboole_1])).
% 0.39/0.58  thf(t36_xboole_1, axiom,
% 0.39/0.58    (![A:$i,B:$i]: ( r1_tarski @ ( k4_xboole_0 @ A @ B ) @ A ))).
% 0.39/0.58  thf('10', plain,
% 0.39/0.58      (![X12 : $i, X13 : $i]: (r1_tarski @ (k4_xboole_0 @ X12 @ X13) @ X12)),
% 0.39/0.58      inference('cnf', [status(esa)], [t36_xboole_1])).
% 0.39/0.58  thf(l32_xboole_1, axiom,
% 0.39/0.58    (![A:$i,B:$i]:
% 0.39/0.58     ( ( ( k4_xboole_0 @ A @ B ) = ( k1_xboole_0 ) ) <=> ( r1_tarski @ A @ B ) ))).
% 0.39/0.58  thf('11', plain,
% 0.39/0.58      (![X2 : $i, X4 : $i]:
% 0.39/0.58         (((k4_xboole_0 @ X2 @ X4) = (k1_xboole_0)) | ~ (r1_tarski @ X2 @ X4))),
% 0.39/0.58      inference('cnf', [status(esa)], [l32_xboole_1])).
% 0.39/0.58  thf('12', plain,
% 0.39/0.58      (![X0 : $i, X1 : $i]:
% 0.39/0.58         ((k4_xboole_0 @ (k4_xboole_0 @ X0 @ X1) @ X0) = (k1_xboole_0))),
% 0.39/0.58      inference('sup-', [status(thm)], ['10', '11'])).
% 0.39/0.58  thf('13', plain,
% 0.39/0.58      (![X0 : $i, X1 : $i]:
% 0.39/0.58         ((k4_xboole_0 @ (k3_xboole_0 @ X1 @ X0) @ X1) = (k1_xboole_0))),
% 0.39/0.58      inference('sup+', [status(thm)], ['9', '12'])).
% 0.39/0.58  thf(t49_xboole_1, axiom,
% 0.39/0.58    (![A:$i,B:$i,C:$i]:
% 0.39/0.58     ( ( k3_xboole_0 @ A @ ( k4_xboole_0 @ B @ C ) ) =
% 0.39/0.58       ( k4_xboole_0 @ ( k3_xboole_0 @ A @ B ) @ C ) ))).
% 0.39/0.58  thf('14', plain,
% 0.39/0.58      (![X16 : $i, X17 : $i, X18 : $i]:
% 0.39/0.58         ((k3_xboole_0 @ X16 @ (k4_xboole_0 @ X17 @ X18))
% 0.39/0.58           = (k4_xboole_0 @ (k3_xboole_0 @ X16 @ X17) @ X18))),
% 0.39/0.58      inference('cnf', [status(esa)], [t49_xboole_1])).
% 0.39/0.58  thf('15', plain,
% 0.39/0.58      (![X0 : $i, X1 : $i]:
% 0.39/0.58         ((k3_xboole_0 @ X1 @ (k4_xboole_0 @ X0 @ X1)) = (k1_xboole_0))),
% 0.39/0.58      inference('demod', [status(thm)], ['13', '14'])).
% 0.39/0.58  thf('16', plain,
% 0.39/0.58      (![X5 : $i, X6 : $i]:
% 0.39/0.58         ((k4_xboole_0 @ X5 @ X6)
% 0.39/0.58           = (k5_xboole_0 @ X5 @ (k3_xboole_0 @ X5 @ X6)))),
% 0.39/0.58      inference('cnf', [status(esa)], [t100_xboole_1])).
% 0.39/0.58  thf('17', plain,
% 0.39/0.58      (![X0 : $i, X1 : $i]:
% 0.39/0.58         ((k4_xboole_0 @ X0 @ (k4_xboole_0 @ X1 @ X0))
% 0.39/0.58           = (k5_xboole_0 @ X0 @ k1_xboole_0))),
% 0.39/0.58      inference('sup+', [status(thm)], ['15', '16'])).
% 0.39/0.58  thf(t5_boole, axiom,
% 0.39/0.58    (![A:$i]: ( ( k5_xboole_0 @ A @ k1_xboole_0 ) = ( A ) ))).
% 0.39/0.58  thf('18', plain, (![X19 : $i]: ((k5_xboole_0 @ X19 @ k1_xboole_0) = (X19))),
% 0.39/0.58      inference('cnf', [status(esa)], [t5_boole])).
% 0.39/0.58  thf('19', plain,
% 0.39/0.58      (![X0 : $i, X1 : $i]:
% 0.39/0.58         ((k4_xboole_0 @ X0 @ (k4_xboole_0 @ X1 @ X0)) = (X0))),
% 0.39/0.58      inference('demod', [status(thm)], ['17', '18'])).
% 0.39/0.58  thf('20', plain,
% 0.39/0.58      (((k4_xboole_0 @ (k1_tarski @ sk_A) @ 
% 0.39/0.58         (k5_xboole_0 @ sk_B @ (k1_tarski @ sk_A))) = (k1_tarski @ sk_A))),
% 0.39/0.58      inference('sup+', [status(thm)], ['8', '19'])).
% 0.39/0.58  thf('21', plain,
% 0.39/0.58      (![X0 : $i, X1 : $i]: ((k3_xboole_0 @ X1 @ X0) = (k3_xboole_0 @ X0 @ X1))),
% 0.39/0.58      inference('cnf', [status(esa)], [commutativity_k3_xboole_0])).
% 0.39/0.58  thf(t94_xboole_1, axiom,
% 0.39/0.58    (![A:$i,B:$i]:
% 0.39/0.58     ( ( k2_xboole_0 @ A @ B ) =
% 0.39/0.58       ( k5_xboole_0 @ ( k5_xboole_0 @ A @ B ) @ ( k3_xboole_0 @ A @ B ) ) ))).
% 0.39/0.58  thf('22', plain,
% 0.39/0.58      (![X23 : $i, X24 : $i]:
% 0.39/0.58         ((k2_xboole_0 @ X23 @ X24)
% 0.39/0.58           = (k5_xboole_0 @ (k5_xboole_0 @ X23 @ X24) @ 
% 0.39/0.58              (k3_xboole_0 @ X23 @ X24)))),
% 0.39/0.58      inference('cnf', [status(esa)], [t94_xboole_1])).
% 0.39/0.58  thf(t91_xboole_1, axiom,
% 0.39/0.58    (![A:$i,B:$i,C:$i]:
% 0.39/0.58     ( ( k5_xboole_0 @ ( k5_xboole_0 @ A @ B ) @ C ) =
% 0.39/0.58       ( k5_xboole_0 @ A @ ( k5_xboole_0 @ B @ C ) ) ))).
% 0.39/0.58  thf('23', plain,
% 0.39/0.58      (![X20 : $i, X21 : $i, X22 : $i]:
% 0.39/0.58         ((k5_xboole_0 @ (k5_xboole_0 @ X20 @ X21) @ X22)
% 0.39/0.58           = (k5_xboole_0 @ X20 @ (k5_xboole_0 @ X21 @ X22)))),
% 0.39/0.58      inference('cnf', [status(esa)], [t91_xboole_1])).
% 0.39/0.58  thf('24', plain,
% 0.39/0.58      (![X23 : $i, X24 : $i]:
% 0.39/0.58         ((k2_xboole_0 @ X23 @ X24)
% 0.39/0.58           = (k5_xboole_0 @ X23 @ 
% 0.39/0.58              (k5_xboole_0 @ X24 @ (k3_xboole_0 @ X23 @ X24))))),
% 0.39/0.58      inference('demod', [status(thm)], ['22', '23'])).
% 0.39/0.58  thf('25', plain,
% 0.39/0.58      (![X0 : $i, X1 : $i]:
% 0.39/0.58         ((k2_xboole_0 @ X0 @ X1)
% 0.39/0.58           = (k5_xboole_0 @ X0 @ (k5_xboole_0 @ X1 @ (k3_xboole_0 @ X1 @ X0))))),
% 0.39/0.58      inference('sup+', [status(thm)], ['21', '24'])).
% 0.39/0.58  thf('26', plain,
% 0.39/0.58      (![X5 : $i, X6 : $i]:
% 0.39/0.58         ((k4_xboole_0 @ X5 @ X6)
% 0.39/0.58           = (k5_xboole_0 @ X5 @ (k3_xboole_0 @ X5 @ X6)))),
% 0.39/0.58      inference('cnf', [status(esa)], [t100_xboole_1])).
% 0.39/0.58  thf('27', plain,
% 0.39/0.58      (![X0 : $i, X1 : $i]:
% 0.39/0.58         ((k2_xboole_0 @ X0 @ X1)
% 0.39/0.58           = (k5_xboole_0 @ X0 @ (k4_xboole_0 @ X1 @ X0)))),
% 0.39/0.58      inference('demod', [status(thm)], ['25', '26'])).
% 0.39/0.58  thf('28', plain,
% 0.39/0.58      (((k2_xboole_0 @ (k5_xboole_0 @ sk_B @ (k1_tarski @ sk_A)) @ 
% 0.39/0.58         (k1_tarski @ sk_A))
% 0.39/0.58         = (k5_xboole_0 @ (k5_xboole_0 @ sk_B @ (k1_tarski @ sk_A)) @ 
% 0.39/0.58            (k1_tarski @ sk_A)))),
% 0.39/0.58      inference('sup+', [status(thm)], ['20', '27'])).
% 0.39/0.58  thf('29', plain,
% 0.39/0.58      (![X20 : $i, X21 : $i, X22 : $i]:
% 0.39/0.58         ((k5_xboole_0 @ (k5_xboole_0 @ X20 @ X21) @ X22)
% 0.39/0.58           = (k5_xboole_0 @ X20 @ (k5_xboole_0 @ X21 @ X22)))),
% 0.39/0.58      inference('cnf', [status(esa)], [t91_xboole_1])).
% 0.39/0.58  thf('30', plain,
% 0.39/0.58      (![X14 : $i, X15 : $i]:
% 0.39/0.58         ((k4_xboole_0 @ X14 @ (k4_xboole_0 @ X14 @ X15))
% 0.39/0.58           = (k3_xboole_0 @ X14 @ X15))),
% 0.39/0.58      inference('cnf', [status(esa)], [t48_xboole_1])).
% 0.39/0.58  thf(t100_zfmisc_1, axiom,
% 0.39/0.58    (![A:$i]: ( r1_tarski @ A @ ( k1_zfmisc_1 @ ( k3_tarski @ A ) ) ))).
% 0.39/0.58  thf('31', plain,
% 0.39/0.58      (![X40 : $i]: (r1_tarski @ X40 @ (k1_zfmisc_1 @ (k3_tarski @ X40)))),
% 0.39/0.58      inference('cnf', [status(esa)], [t100_zfmisc_1])).
% 0.39/0.58  thf('32', plain,
% 0.39/0.58      (![X2 : $i, X4 : $i]:
% 0.39/0.58         (((k4_xboole_0 @ X2 @ X4) = (k1_xboole_0)) | ~ (r1_tarski @ X2 @ X4))),
% 0.39/0.58      inference('cnf', [status(esa)], [l32_xboole_1])).
% 0.39/0.58  thf('33', plain,
% 0.39/0.58      (![X0 : $i]:
% 0.39/0.58         ((k4_xboole_0 @ X0 @ (k1_zfmisc_1 @ (k3_tarski @ X0))) = (k1_xboole_0))),
% 0.39/0.58      inference('sup-', [status(thm)], ['31', '32'])).
% 0.39/0.58  thf('34', plain,
% 0.39/0.58      (![X0 : $i, X1 : $i]:
% 0.39/0.58         ((k4_xboole_0 @ (k4_xboole_0 @ X0 @ X1) @ X0) = (k1_xboole_0))),
% 0.39/0.58      inference('sup-', [status(thm)], ['10', '11'])).
% 0.39/0.58  thf('35', plain,
% 0.39/0.58      (![X0 : $i]: ((k4_xboole_0 @ k1_xboole_0 @ X0) = (k1_xboole_0))),
% 0.39/0.58      inference('sup+', [status(thm)], ['33', '34'])).
% 0.39/0.58  thf('36', plain,
% 0.39/0.58      (![X0 : $i]: ((k3_xboole_0 @ k1_xboole_0 @ X0) = (k1_xboole_0))),
% 0.39/0.58      inference('sup+', [status(thm)], ['30', '35'])).
% 0.39/0.58  thf('37', plain,
% 0.39/0.58      (![X0 : $i, X1 : $i]: ((k3_xboole_0 @ X1 @ X0) = (k3_xboole_0 @ X0 @ X1))),
% 0.39/0.58      inference('cnf', [status(esa)], [commutativity_k3_xboole_0])).
% 0.39/0.58  thf('38', plain,
% 0.39/0.58      (![X0 : $i]: ((k3_xboole_0 @ X0 @ k1_xboole_0) = (k1_xboole_0))),
% 0.39/0.58      inference('sup+', [status(thm)], ['36', '37'])).
% 0.39/0.58  thf('39', plain,
% 0.39/0.58      (![X5 : $i, X6 : $i]:
% 0.39/0.58         ((k4_xboole_0 @ X5 @ X6)
% 0.39/0.58           = (k5_xboole_0 @ X5 @ (k3_xboole_0 @ X5 @ X6)))),
% 0.39/0.58      inference('cnf', [status(esa)], [t100_xboole_1])).
% 0.39/0.58  thf('40', plain,
% 0.39/0.58      (![X0 : $i]:
% 0.39/0.58         ((k4_xboole_0 @ X0 @ k1_xboole_0) = (k5_xboole_0 @ X0 @ k1_xboole_0))),
% 0.39/0.58      inference('sup+', [status(thm)], ['38', '39'])).
% 0.39/0.58  thf('41', plain, (![X19 : $i]: ((k5_xboole_0 @ X19 @ k1_xboole_0) = (X19))),
% 0.39/0.58      inference('cnf', [status(esa)], [t5_boole])).
% 0.39/0.58  thf('42', plain, (![X0 : $i]: ((k4_xboole_0 @ X0 @ k1_xboole_0) = (X0))),
% 0.39/0.58      inference('demod', [status(thm)], ['40', '41'])).
% 0.39/0.58  thf('43', plain,
% 0.39/0.58      (![X12 : $i, X13 : $i]: (r1_tarski @ (k4_xboole_0 @ X12 @ X13) @ X12)),
% 0.39/0.58      inference('cnf', [status(esa)], [t36_xboole_1])).
% 0.39/0.58  thf('44', plain, (![X0 : $i]: (r1_tarski @ X0 @ X0)),
% 0.39/0.58      inference('sup+', [status(thm)], ['42', '43'])).
% 0.39/0.58  thf('45', plain,
% 0.39/0.58      (![X10 : $i, X11 : $i]:
% 0.39/0.58         (((k3_xboole_0 @ X10 @ X11) = (X10)) | ~ (r1_tarski @ X10 @ X11))),
% 0.39/0.58      inference('cnf', [status(esa)], [t28_xboole_1])).
% 0.39/0.58  thf('46', plain, (![X0 : $i]: ((k3_xboole_0 @ X0 @ X0) = (X0))),
% 0.39/0.58      inference('sup-', [status(thm)], ['44', '45'])).
% 0.39/0.58  thf('47', plain,
% 0.39/0.58      (![X5 : $i, X6 : $i]:
% 0.39/0.58         ((k4_xboole_0 @ X5 @ X6)
% 0.39/0.58           = (k5_xboole_0 @ X5 @ (k3_xboole_0 @ X5 @ X6)))),
% 0.39/0.58      inference('cnf', [status(esa)], [t100_xboole_1])).
% 0.39/0.58  thf('48', plain,
% 0.39/0.58      (![X0 : $i]: ((k4_xboole_0 @ X0 @ X0) = (k5_xboole_0 @ X0 @ X0))),
% 0.39/0.58      inference('sup+', [status(thm)], ['46', '47'])).
% 0.39/0.58  thf('49', plain, (![X0 : $i]: ((k4_xboole_0 @ X0 @ k1_xboole_0) = (X0))),
% 0.39/0.58      inference('demod', [status(thm)], ['40', '41'])).
% 0.39/0.58  thf('50', plain,
% 0.39/0.58      (![X0 : $i, X1 : $i]:
% 0.39/0.58         ((k4_xboole_0 @ (k4_xboole_0 @ X0 @ X1) @ X0) = (k1_xboole_0))),
% 0.39/0.58      inference('sup-', [status(thm)], ['10', '11'])).
% 0.39/0.58  thf('51', plain, (![X0 : $i]: ((k4_xboole_0 @ X0 @ X0) = (k1_xboole_0))),
% 0.39/0.58      inference('sup+', [status(thm)], ['49', '50'])).
% 0.39/0.58  thf('52', plain, (![X0 : $i]: ((k5_xboole_0 @ X0 @ X0) = (k1_xboole_0))),
% 0.39/0.58      inference('sup+', [status(thm)], ['48', '51'])).
% 0.39/0.58  thf('53', plain, (![X19 : $i]: ((k5_xboole_0 @ X19 @ k1_xboole_0) = (X19))),
% 0.39/0.58      inference('cnf', [status(esa)], [t5_boole])).
% 0.39/0.58  thf('54', plain,
% 0.39/0.58      (((k2_xboole_0 @ (k5_xboole_0 @ sk_B @ (k1_tarski @ sk_A)) @ 
% 0.39/0.58         (k1_tarski @ sk_A)) = (sk_B))),
% 0.39/0.58      inference('demod', [status(thm)], ['28', '29', '52', '53'])).
% 0.39/0.58  thf('55', plain,
% 0.39/0.58      (((k2_xboole_0 @ (k4_xboole_0 @ sk_B @ (k1_tarski @ sk_A)) @ 
% 0.39/0.58         (k1_tarski @ sk_A)) != (sk_B))),
% 0.39/0.58      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.39/0.58  thf('56', plain,
% 0.39/0.58      (((k4_xboole_0 @ sk_B @ (k1_tarski @ sk_A))
% 0.39/0.58         = (k5_xboole_0 @ sk_B @ (k1_tarski @ sk_A)))),
% 0.39/0.58      inference('sup+', [status(thm)], ['6', '7'])).
% 0.39/0.58  thf('57', plain,
% 0.39/0.58      (((k2_xboole_0 @ (k5_xboole_0 @ sk_B @ (k1_tarski @ sk_A)) @ 
% 0.39/0.58         (k1_tarski @ sk_A)) != (sk_B))),
% 0.39/0.58      inference('demod', [status(thm)], ['55', '56'])).
% 0.39/0.58  thf('58', plain, ($false),
% 0.39/0.58      inference('simplify_reflect-', [status(thm)], ['54', '57'])).
% 0.39/0.58  
% 0.39/0.58  % SZS output end Refutation
% 0.39/0.58  
% 0.39/0.59  % Zipperpin 1.5 exiting
%------------------------------------------------------------------------------
