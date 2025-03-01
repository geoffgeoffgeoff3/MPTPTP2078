%------------------------------------------------------------------------------
% File       : Zipperpin---2.0
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_portfolio.sh /export/starexec/sandbox2/benchmark/theBenchmark.p /export/starexec/sandbox2/tmp/tmp.iKwEmgC5eu

% Computer   : n004.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 13:33:44 EST 2020

% Result     : Theorem 0.61s
% Output     : Refutation 0.61s
% Verified   : 
% Statistics : Number of formulae       :   85 ( 195 expanded)
%              Number of leaves         :   29 (  77 expanded)
%              Depth                    :   15
%              Number of atoms          :  599 (1426 expanded)
%              Number of equality atoms :   63 ( 173 expanded)
%              Maximal formula depth    :   13 (   7 average)

% Comments   : 
%------------------------------------------------------------------------------
thf(sk_A_type,type,(
    sk_A: $i )).

thf(k1_enumset1_type,type,(
    k1_enumset1: $i > $i > $i > $i )).

thf(r2_hidden_type,type,(
    r2_hidden: $i > $i > $o )).

thf(zip_tseitin_0_type,type,(
    zip_tseitin_0: $i > $i > $i > $i > $o )).

thf(k2_xboole_0_type,type,(
    k2_xboole_0: $i > $i > $i )).

thf(k3_tarski_type,type,(
    k3_tarski: $i > $i )).

thf(r1_tarski_type,type,(
    r1_tarski: $i > $i > $o )).

thf(sk_C_1_type,type,(
    sk_C_1: $i )).

thf(k2_tarski_type,type,(
    k2_tarski: $i > $i > $i )).

thf(k5_xboole_0_type,type,(
    k5_xboole_0: $i > $i > $i )).

thf(k3_xboole_0_type,type,(
    k3_xboole_0: $i > $i > $i )).

thf(k1_xboole_0_type,type,(
    k1_xboole_0: $i )).

thf(sk_B_type,type,(
    sk_B: $i )).

thf(t63_zfmisc_1,conjecture,(
    ! [A: $i,B: $i,C: $i] :
      ( ( ( k3_xboole_0 @ ( k2_tarski @ A @ B ) @ C )
        = ( k2_tarski @ A @ B ) )
     => ( r2_hidden @ A @ C ) ) )).

thf(zf_stmt_0,negated_conjecture,(
    ~ ! [A: $i,B: $i,C: $i] :
        ( ( ( k3_xboole_0 @ ( k2_tarski @ A @ B ) @ C )
          = ( k2_tarski @ A @ B ) )
       => ( r2_hidden @ A @ C ) ) ),
    inference('cnf.neg',[status(esa)],[t63_zfmisc_1])).

thf('0',plain,(
    ~ ( r2_hidden @ sk_A @ sk_C_1 ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(t70_enumset1,axiom,(
    ! [A: $i,B: $i] :
      ( ( k1_enumset1 @ A @ A @ B )
      = ( k2_tarski @ A @ B ) ) )).

thf('1',plain,(
    ! [X29: $i,X30: $i] :
      ( ( k1_enumset1 @ X29 @ X29 @ X30 )
      = ( k2_tarski @ X29 @ X30 ) ) ),
    inference(cnf,[status(esa)],[t70_enumset1])).

thf(d1_enumset1,axiom,(
    ! [A: $i,B: $i,C: $i,D: $i] :
      ( ( D
        = ( k1_enumset1 @ A @ B @ C ) )
    <=> ! [E: $i] :
          ( ( r2_hidden @ E @ D )
        <=> ~ ( ( E != C )
              & ( E != B )
              & ( E != A ) ) ) ) )).

thf(zf_stmt_1,type,(
    zip_tseitin_0: $i > $i > $i > $i > $o )).

thf(zf_stmt_2,axiom,(
    ! [E: $i,C: $i,B: $i,A: $i] :
      ( ( zip_tseitin_0 @ E @ C @ B @ A )
    <=> ( ( E != A )
        & ( E != B )
        & ( E != C ) ) ) )).

thf(zf_stmt_3,axiom,(
    ! [A: $i,B: $i,C: $i,D: $i] :
      ( ( D
        = ( k1_enumset1 @ A @ B @ C ) )
    <=> ! [E: $i] :
          ( ( r2_hidden @ E @ D )
        <=> ~ ( zip_tseitin_0 @ E @ C @ B @ A ) ) ) )).

thf('2',plain,(
    ! [X22: $i,X23: $i,X24: $i,X25: $i,X26: $i] :
      ( ( zip_tseitin_0 @ X22 @ X23 @ X24 @ X25 )
      | ( r2_hidden @ X22 @ X26 )
      | ( X26
       != ( k1_enumset1 @ X25 @ X24 @ X23 ) ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_3])).

thf('3',plain,(
    ! [X22: $i,X23: $i,X24: $i,X25: $i] :
      ( ( r2_hidden @ X22 @ ( k1_enumset1 @ X25 @ X24 @ X23 ) )
      | ( zip_tseitin_0 @ X22 @ X23 @ X24 @ X25 ) ) ),
    inference(simplify,[status(thm)],['2'])).

thf('4',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( ( r2_hidden @ X2 @ ( k2_tarski @ X1 @ X0 ) )
      | ( zip_tseitin_0 @ X2 @ X0 @ X1 @ X1 ) ) ),
    inference('sup+',[status(thm)],['1','3'])).

thf('5',plain,(
    ! [X17: $i,X18: $i,X19: $i,X20: $i] :
      ( ( X18 != X19 )
      | ~ ( zip_tseitin_0 @ X18 @ X19 @ X20 @ X17 ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_2])).

thf('6',plain,(
    ! [X17: $i,X19: $i,X20: $i] :
      ~ ( zip_tseitin_0 @ X19 @ X19 @ X20 @ X17 ) ),
    inference(simplify,[status(thm)],['5'])).

thf('7',plain,(
    ! [X0: $i,X1: $i] :
      ( r2_hidden @ X1 @ ( k2_tarski @ X0 @ X1 ) ) ),
    inference('sup-',[status(thm)],['4','6'])).

thf('8',plain,
    ( ( k3_xboole_0 @ ( k2_tarski @ sk_A @ sk_B ) @ sk_C_1 )
    = ( k2_tarski @ sk_A @ sk_B ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(commutativity_k2_tarski,axiom,(
    ! [A: $i,B: $i] :
      ( ( k2_tarski @ A @ B )
      = ( k2_tarski @ B @ A ) ) )).

thf('9',plain,(
    ! [X15: $i,X16: $i] :
      ( ( k2_tarski @ X16 @ X15 )
      = ( k2_tarski @ X15 @ X16 ) ) ),
    inference(cnf,[status(esa)],[commutativity_k2_tarski])).

thf('10',plain,(
    ! [X15: $i,X16: $i] :
      ( ( k2_tarski @ X16 @ X15 )
      = ( k2_tarski @ X15 @ X16 ) ) ),
    inference(cnf,[status(esa)],[commutativity_k2_tarski])).

thf('11',plain,
    ( ( k3_xboole_0 @ ( k2_tarski @ sk_B @ sk_A ) @ sk_C_1 )
    = ( k2_tarski @ sk_B @ sk_A ) ),
    inference(demod,[status(thm)],['8','9','10'])).

thf(t95_xboole_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( k3_xboole_0 @ A @ B )
      = ( k5_xboole_0 @ ( k5_xboole_0 @ A @ B ) @ ( k2_xboole_0 @ A @ B ) ) ) )).

thf('12',plain,(
    ! [X13: $i,X14: $i] :
      ( ( k3_xboole_0 @ X13 @ X14 )
      = ( k5_xboole_0 @ ( k5_xboole_0 @ X13 @ X14 ) @ ( k2_xboole_0 @ X13 @ X14 ) ) ) ),
    inference(cnf,[status(esa)],[t95_xboole_1])).

thf(t91_xboole_1,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( k5_xboole_0 @ ( k5_xboole_0 @ A @ B ) @ C )
      = ( k5_xboole_0 @ A @ ( k5_xboole_0 @ B @ C ) ) ) )).

thf('13',plain,(
    ! [X9: $i,X10: $i,X11: $i] :
      ( ( k5_xboole_0 @ ( k5_xboole_0 @ X9 @ X10 ) @ X11 )
      = ( k5_xboole_0 @ X9 @ ( k5_xboole_0 @ X10 @ X11 ) ) ) ),
    inference(cnf,[status(esa)],[t91_xboole_1])).

thf('14',plain,(
    ! [X13: $i,X14: $i] :
      ( ( k3_xboole_0 @ X13 @ X14 )
      = ( k5_xboole_0 @ X13 @ ( k5_xboole_0 @ X14 @ ( k2_xboole_0 @ X13 @ X14 ) ) ) ) ),
    inference(demod,[status(thm)],['12','13'])).

thf('15',plain,(
    ! [X9: $i,X10: $i,X11: $i] :
      ( ( k5_xboole_0 @ ( k5_xboole_0 @ X9 @ X10 ) @ X11 )
      = ( k5_xboole_0 @ X9 @ ( k5_xboole_0 @ X10 @ X11 ) ) ) ),
    inference(cnf,[status(esa)],[t91_xboole_1])).

thf('16',plain,(
    ! [X9: $i,X10: $i,X11: $i] :
      ( ( k5_xboole_0 @ ( k5_xboole_0 @ X9 @ X10 ) @ X11 )
      = ( k5_xboole_0 @ X9 @ ( k5_xboole_0 @ X10 @ X11 ) ) ) ),
    inference(cnf,[status(esa)],[t91_xboole_1])).

thf(t92_xboole_1,axiom,(
    ! [A: $i] :
      ( ( k5_xboole_0 @ A @ A )
      = k1_xboole_0 ) )).

thf('17',plain,(
    ! [X12: $i] :
      ( ( k5_xboole_0 @ X12 @ X12 )
      = k1_xboole_0 ) ),
    inference(cnf,[status(esa)],[t92_xboole_1])).

thf('18',plain,(
    ! [X0: $i,X1: $i] :
      ( ( k5_xboole_0 @ X1 @ ( k5_xboole_0 @ X0 @ ( k5_xboole_0 @ X1 @ X0 ) ) )
      = k1_xboole_0 ) ),
    inference('sup+',[status(thm)],['16','17'])).

thf('19',plain,(
    ! [X12: $i] :
      ( ( k5_xboole_0 @ X12 @ X12 )
      = k1_xboole_0 ) ),
    inference(cnf,[status(esa)],[t92_xboole_1])).

thf('20',plain,(
    ! [X9: $i,X10: $i,X11: $i] :
      ( ( k5_xboole_0 @ ( k5_xboole_0 @ X9 @ X10 ) @ X11 )
      = ( k5_xboole_0 @ X9 @ ( k5_xboole_0 @ X10 @ X11 ) ) ) ),
    inference(cnf,[status(esa)],[t91_xboole_1])).

thf('21',plain,(
    ! [X0: $i,X1: $i] :
      ( ( k5_xboole_0 @ k1_xboole_0 @ X0 )
      = ( k5_xboole_0 @ X1 @ ( k5_xboole_0 @ X1 @ X0 ) ) ) ),
    inference('sup+',[status(thm)],['19','20'])).

thf('22',plain,(
    ! [X12: $i] :
      ( ( k5_xboole_0 @ X12 @ X12 )
      = k1_xboole_0 ) ),
    inference(cnf,[status(esa)],[t92_xboole_1])).

thf('23',plain,(
    ! [X13: $i,X14: $i] :
      ( ( k3_xboole_0 @ X13 @ X14 )
      = ( k5_xboole_0 @ ( k5_xboole_0 @ X13 @ X14 ) @ ( k2_xboole_0 @ X13 @ X14 ) ) ) ),
    inference(cnf,[status(esa)],[t95_xboole_1])).

thf('24',plain,(
    ! [X0: $i] :
      ( ( k3_xboole_0 @ X0 @ X0 )
      = ( k5_xboole_0 @ k1_xboole_0 @ ( k2_xboole_0 @ X0 @ X0 ) ) ) ),
    inference('sup+',[status(thm)],['22','23'])).

thf(idempotence_k3_xboole_0,axiom,(
    ! [A: $i,B: $i] :
      ( ( k3_xboole_0 @ A @ A )
      = A ) )).

thf('25',plain,(
    ! [X5: $i] :
      ( ( k3_xboole_0 @ X5 @ X5 )
      = X5 ) ),
    inference(cnf,[status(esa)],[idempotence_k3_xboole_0])).

thf(idempotence_k2_xboole_0,axiom,(
    ! [A: $i,B: $i] :
      ( ( k2_xboole_0 @ A @ A )
      = A ) )).

thf('26',plain,(
    ! [X4: $i] :
      ( ( k2_xboole_0 @ X4 @ X4 )
      = X4 ) ),
    inference(cnf,[status(esa)],[idempotence_k2_xboole_0])).

thf('27',plain,(
    ! [X0: $i] :
      ( X0
      = ( k5_xboole_0 @ k1_xboole_0 @ X0 ) ) ),
    inference(demod,[status(thm)],['24','25','26'])).

thf('28',plain,(
    ! [X0: $i,X1: $i] :
      ( X0
      = ( k5_xboole_0 @ X1 @ ( k5_xboole_0 @ X1 @ X0 ) ) ) ),
    inference(demod,[status(thm)],['21','27'])).

thf('29',plain,(
    ! [X0: $i,X1: $i] :
      ( ( k5_xboole_0 @ X0 @ ( k5_xboole_0 @ X1 @ X0 ) )
      = ( k5_xboole_0 @ X1 @ k1_xboole_0 ) ) ),
    inference('sup+',[status(thm)],['18','28'])).

thf(t5_boole,axiom,(
    ! [A: $i] :
      ( ( k5_xboole_0 @ A @ k1_xboole_0 )
      = A ) )).

thf('30',plain,(
    ! [X8: $i] :
      ( ( k5_xboole_0 @ X8 @ k1_xboole_0 )
      = X8 ) ),
    inference(cnf,[status(esa)],[t5_boole])).

thf('31',plain,(
    ! [X0: $i,X1: $i] :
      ( ( k5_xboole_0 @ X0 @ ( k5_xboole_0 @ X1 @ X0 ) )
      = X1 ) ),
    inference(demod,[status(thm)],['29','30'])).

thf('32',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( ( k5_xboole_0 @ X0 @ ( k5_xboole_0 @ X2 @ ( k5_xboole_0 @ X1 @ X0 ) ) )
      = ( k5_xboole_0 @ X2 @ X1 ) ) ),
    inference('sup+',[status(thm)],['15','31'])).

thf('33',plain,(
    ! [X0: $i,X1: $i] :
      ( ( k5_xboole_0 @ ( k2_xboole_0 @ X1 @ X0 ) @ ( k3_xboole_0 @ X1 @ X0 ) )
      = ( k5_xboole_0 @ X1 @ X0 ) ) ),
    inference('sup+',[status(thm)],['14','32'])).

thf('34',plain,
    ( ( k5_xboole_0 @ ( k2_xboole_0 @ ( k2_tarski @ sk_B @ sk_A ) @ sk_C_1 ) @ ( k2_tarski @ sk_B @ sk_A ) )
    = ( k5_xboole_0 @ ( k2_tarski @ sk_B @ sk_A ) @ sk_C_1 ) ),
    inference('sup+',[status(thm)],['11','33'])).

thf('35',plain,(
    ! [X15: $i,X16: $i] :
      ( ( k2_tarski @ X16 @ X15 )
      = ( k2_tarski @ X15 @ X16 ) ) ),
    inference(cnf,[status(esa)],[commutativity_k2_tarski])).

thf(l51_zfmisc_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( k3_tarski @ ( k2_tarski @ A @ B ) )
      = ( k2_xboole_0 @ A @ B ) ) )).

thf('36',plain,(
    ! [X56: $i,X57: $i] :
      ( ( k3_tarski @ ( k2_tarski @ X56 @ X57 ) )
      = ( k2_xboole_0 @ X56 @ X57 ) ) ),
    inference(cnf,[status(esa)],[l51_zfmisc_1])).

thf('37',plain,(
    ! [X0: $i,X1: $i] :
      ( ( k3_tarski @ ( k2_tarski @ X1 @ X0 ) )
      = ( k2_xboole_0 @ X0 @ X1 ) ) ),
    inference('sup+',[status(thm)],['35','36'])).

thf('38',plain,(
    ! [X56: $i,X57: $i] :
      ( ( k3_tarski @ ( k2_tarski @ X56 @ X57 ) )
      = ( k2_xboole_0 @ X56 @ X57 ) ) ),
    inference(cnf,[status(esa)],[l51_zfmisc_1])).

thf('39',plain,(
    ! [X0: $i,X1: $i] :
      ( ( k2_xboole_0 @ X1 @ X0 )
      = ( k2_xboole_0 @ X0 @ X1 ) ) ),
    inference('sup+',[status(thm)],['37','38'])).

thf('40',plain,(
    ! [X0: $i,X1: $i] :
      ( ( k5_xboole_0 @ X0 @ ( k5_xboole_0 @ X1 @ X0 ) )
      = X1 ) ),
    inference(demod,[status(thm)],['29','30'])).

thf('41',plain,(
    ! [X0: $i,X1: $i] :
      ( X0
      = ( k5_xboole_0 @ X1 @ ( k5_xboole_0 @ X1 @ X0 ) ) ) ),
    inference(demod,[status(thm)],['21','27'])).

thf('42',plain,(
    ! [X0: $i,X1: $i] :
      ( ( k5_xboole_0 @ X0 @ X1 )
      = ( k5_xboole_0 @ X1 @ X0 ) ) ),
    inference('sup+',[status(thm)],['40','41'])).

thf('43',plain,(
    ! [X0: $i,X1: $i] :
      ( ( k5_xboole_0 @ X0 @ X1 )
      = ( k5_xboole_0 @ X1 @ X0 ) ) ),
    inference('sup+',[status(thm)],['40','41'])).

thf('44',plain,
    ( ( k5_xboole_0 @ ( k2_tarski @ sk_B @ sk_A ) @ ( k2_xboole_0 @ sk_C_1 @ ( k2_tarski @ sk_B @ sk_A ) ) )
    = ( k5_xboole_0 @ sk_C_1 @ ( k2_tarski @ sk_B @ sk_A ) ) ),
    inference(demod,[status(thm)],['34','39','42','43'])).

thf('45',plain,(
    ! [X13: $i,X14: $i] :
      ( ( k3_xboole_0 @ X13 @ X14 )
      = ( k5_xboole_0 @ X13 @ ( k5_xboole_0 @ X14 @ ( k2_xboole_0 @ X13 @ X14 ) ) ) ) ),
    inference(demod,[status(thm)],['12','13'])).

thf('46',plain,
    ( ( k3_xboole_0 @ sk_C_1 @ ( k2_tarski @ sk_B @ sk_A ) )
    = ( k5_xboole_0 @ sk_C_1 @ ( k5_xboole_0 @ sk_C_1 @ ( k2_tarski @ sk_B @ sk_A ) ) ) ),
    inference('sup+',[status(thm)],['44','45'])).

thf('47',plain,(
    ! [X0: $i,X1: $i] :
      ( X0
      = ( k5_xboole_0 @ X1 @ ( k5_xboole_0 @ X1 @ X0 ) ) ) ),
    inference(demod,[status(thm)],['21','27'])).

thf('48',plain,
    ( ( k3_xboole_0 @ sk_C_1 @ ( k2_tarski @ sk_B @ sk_A ) )
    = ( k2_tarski @ sk_B @ sk_A ) ),
    inference(demod,[status(thm)],['46','47'])).

thf(t17_xboole_1,axiom,(
    ! [A: $i,B: $i] :
      ( r1_tarski @ ( k3_xboole_0 @ A @ B ) @ A ) )).

thf('49',plain,(
    ! [X6: $i,X7: $i] :
      ( r1_tarski @ ( k3_xboole_0 @ X6 @ X7 ) @ X6 ) ),
    inference(cnf,[status(esa)],[t17_xboole_1])).

thf(d3_tarski,axiom,(
    ! [A: $i,B: $i] :
      ( ( r1_tarski @ A @ B )
    <=> ! [C: $i] :
          ( ( r2_hidden @ C @ A )
         => ( r2_hidden @ C @ B ) ) ) )).

thf('50',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( ~ ( r2_hidden @ X0 @ X1 )
      | ( r2_hidden @ X0 @ X2 )
      | ~ ( r1_tarski @ X1 @ X2 ) ) ),
    inference(cnf,[status(esa)],[d3_tarski])).

thf('51',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( ( r2_hidden @ X2 @ X0 )
      | ~ ( r2_hidden @ X2 @ ( k3_xboole_0 @ X0 @ X1 ) ) ) ),
    inference('sup-',[status(thm)],['49','50'])).

thf('52',plain,(
    ! [X0: $i] :
      ( ~ ( r2_hidden @ X0 @ ( k2_tarski @ sk_B @ sk_A ) )
      | ( r2_hidden @ X0 @ sk_C_1 ) ) ),
    inference('sup-',[status(thm)],['48','51'])).

thf('53',plain,(
    r2_hidden @ sk_A @ sk_C_1 ),
    inference('sup-',[status(thm)],['7','52'])).

thf('54',plain,(
    $false ),
    inference(demod,[status(thm)],['0','53'])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.07/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.07/0.13  % Command    : run_portfolio.sh /export/starexec/sandbox2/benchmark/theBenchmark.p /export/starexec/sandbox2/tmp/tmp.iKwEmgC5eu
% 0.14/0.34  % Computer   : n004.cluster.edu
% 0.14/0.34  % Model      : x86_64 x86_64
% 0.14/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.14/0.34  % Memory     : 8042.1875MB
% 0.14/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.14/0.34  % CPULimit   : 60
% 0.14/0.34  % DateTime   : Tue Dec  1 18:27:24 EST 2020
% 0.14/0.34  % CPUTime    : 
% 0.14/0.34  % Running portfolio for 600 s
% 0.14/0.34  % File         : /export/starexec/sandbox2/benchmark/theBenchmark.p
% 0.14/0.34  % Number of cores: 8
% 0.14/0.35  % Python version: Python 3.6.8
% 0.14/0.35  % Running in FO mode
% 0.61/0.82  % Running /export/starexec/sandbox2/solver/bin/fo/fo7.sh for 78
% 0.61/0.82  % Solved by: fo/fo7.sh
% 0.61/0.82  To remain in the chosen logic fragment, unification with booleans has been disabled.
% 0.61/0.82  % done 595 iterations in 0.369s
% 0.61/0.82  % SZS status Theorem for '/export/starexec/sandbox2/benchmark/theBenchmark.p'
% 0.61/0.82  % SZS output start Refutation
% 0.61/0.82  thf(sk_A_type, type, sk_A: $i).
% 0.61/0.82  thf(k1_enumset1_type, type, k1_enumset1: $i > $i > $i > $i).
% 0.61/0.82  thf(r2_hidden_type, type, r2_hidden: $i > $i > $o).
% 0.61/0.82  thf(zip_tseitin_0_type, type, zip_tseitin_0: $i > $i > $i > $i > $o).
% 0.61/0.82  thf(k2_xboole_0_type, type, k2_xboole_0: $i > $i > $i).
% 0.61/0.82  thf(k3_tarski_type, type, k3_tarski: $i > $i).
% 0.61/0.82  thf(r1_tarski_type, type, r1_tarski: $i > $i > $o).
% 0.61/0.82  thf(sk_C_1_type, type, sk_C_1: $i).
% 0.61/0.82  thf(k2_tarski_type, type, k2_tarski: $i > $i > $i).
% 0.61/0.82  thf(k5_xboole_0_type, type, k5_xboole_0: $i > $i > $i).
% 0.61/0.82  thf(k3_xboole_0_type, type, k3_xboole_0: $i > $i > $i).
% 0.61/0.82  thf(k1_xboole_0_type, type, k1_xboole_0: $i).
% 0.61/0.82  thf(sk_B_type, type, sk_B: $i).
% 0.61/0.82  thf(t63_zfmisc_1, conjecture,
% 0.61/0.82    (![A:$i,B:$i,C:$i]:
% 0.61/0.82     ( ( ( k3_xboole_0 @ ( k2_tarski @ A @ B ) @ C ) = ( k2_tarski @ A @ B ) ) =>
% 0.61/0.82       ( r2_hidden @ A @ C ) ))).
% 0.61/0.82  thf(zf_stmt_0, negated_conjecture,
% 0.61/0.82    (~( ![A:$i,B:$i,C:$i]:
% 0.61/0.82        ( ( ( k3_xboole_0 @ ( k2_tarski @ A @ B ) @ C ) = ( k2_tarski @ A @ B ) ) =>
% 0.61/0.82          ( r2_hidden @ A @ C ) ) )),
% 0.61/0.82    inference('cnf.neg', [status(esa)], [t63_zfmisc_1])).
% 0.61/0.82  thf('0', plain, (~ (r2_hidden @ sk_A @ sk_C_1)),
% 0.61/0.82      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.61/0.82  thf(t70_enumset1, axiom,
% 0.61/0.82    (![A:$i,B:$i]: ( ( k1_enumset1 @ A @ A @ B ) = ( k2_tarski @ A @ B ) ))).
% 0.61/0.82  thf('1', plain,
% 0.61/0.82      (![X29 : $i, X30 : $i]:
% 0.61/0.82         ((k1_enumset1 @ X29 @ X29 @ X30) = (k2_tarski @ X29 @ X30))),
% 0.61/0.82      inference('cnf', [status(esa)], [t70_enumset1])).
% 0.61/0.82  thf(d1_enumset1, axiom,
% 0.61/0.82    (![A:$i,B:$i,C:$i,D:$i]:
% 0.61/0.82     ( ( ( D ) = ( k1_enumset1 @ A @ B @ C ) ) <=>
% 0.61/0.82       ( ![E:$i]:
% 0.61/0.82         ( ( r2_hidden @ E @ D ) <=>
% 0.61/0.82           ( ~( ( ( E ) != ( C ) ) & ( ( E ) != ( B ) ) & ( ( E ) != ( A ) ) ) ) ) ) ))).
% 0.61/0.82  thf(zf_stmt_1, type, zip_tseitin_0 : $i > $i > $i > $i > $o).
% 0.61/0.82  thf(zf_stmt_2, axiom,
% 0.61/0.82    (![E:$i,C:$i,B:$i,A:$i]:
% 0.61/0.82     ( ( zip_tseitin_0 @ E @ C @ B @ A ) <=>
% 0.61/0.82       ( ( ( E ) != ( A ) ) & ( ( E ) != ( B ) ) & ( ( E ) != ( C ) ) ) ))).
% 0.61/0.82  thf(zf_stmt_3, axiom,
% 0.61/0.82    (![A:$i,B:$i,C:$i,D:$i]:
% 0.61/0.82     ( ( ( D ) = ( k1_enumset1 @ A @ B @ C ) ) <=>
% 0.61/0.82       ( ![E:$i]:
% 0.61/0.82         ( ( r2_hidden @ E @ D ) <=> ( ~( zip_tseitin_0 @ E @ C @ B @ A ) ) ) ) ))).
% 0.61/0.82  thf('2', plain,
% 0.61/0.82      (![X22 : $i, X23 : $i, X24 : $i, X25 : $i, X26 : $i]:
% 0.61/0.82         ((zip_tseitin_0 @ X22 @ X23 @ X24 @ X25)
% 0.61/0.82          | (r2_hidden @ X22 @ X26)
% 0.61/0.82          | ((X26) != (k1_enumset1 @ X25 @ X24 @ X23)))),
% 0.61/0.82      inference('cnf', [status(esa)], [zf_stmt_3])).
% 0.61/0.82  thf('3', plain,
% 0.61/0.82      (![X22 : $i, X23 : $i, X24 : $i, X25 : $i]:
% 0.61/0.82         ((r2_hidden @ X22 @ (k1_enumset1 @ X25 @ X24 @ X23))
% 0.61/0.82          | (zip_tseitin_0 @ X22 @ X23 @ X24 @ X25))),
% 0.61/0.82      inference('simplify', [status(thm)], ['2'])).
% 0.61/0.82  thf('4', plain,
% 0.61/0.82      (![X0 : $i, X1 : $i, X2 : $i]:
% 0.61/0.82         ((r2_hidden @ X2 @ (k2_tarski @ X1 @ X0))
% 0.61/0.82          | (zip_tseitin_0 @ X2 @ X0 @ X1 @ X1))),
% 0.61/0.82      inference('sup+', [status(thm)], ['1', '3'])).
% 0.61/0.82  thf('5', plain,
% 0.61/0.82      (![X17 : $i, X18 : $i, X19 : $i, X20 : $i]:
% 0.61/0.82         (((X18) != (X19)) | ~ (zip_tseitin_0 @ X18 @ X19 @ X20 @ X17))),
% 0.61/0.82      inference('cnf', [status(esa)], [zf_stmt_2])).
% 0.61/0.82  thf('6', plain,
% 0.61/0.82      (![X17 : $i, X19 : $i, X20 : $i]:
% 0.61/0.82         ~ (zip_tseitin_0 @ X19 @ X19 @ X20 @ X17)),
% 0.61/0.82      inference('simplify', [status(thm)], ['5'])).
% 0.61/0.82  thf('7', plain,
% 0.61/0.82      (![X0 : $i, X1 : $i]: (r2_hidden @ X1 @ (k2_tarski @ X0 @ X1))),
% 0.61/0.82      inference('sup-', [status(thm)], ['4', '6'])).
% 0.61/0.82  thf('8', plain,
% 0.61/0.82      (((k3_xboole_0 @ (k2_tarski @ sk_A @ sk_B) @ sk_C_1)
% 0.61/0.82         = (k2_tarski @ sk_A @ sk_B))),
% 0.61/0.82      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.61/0.82  thf(commutativity_k2_tarski, axiom,
% 0.61/0.82    (![A:$i,B:$i]: ( ( k2_tarski @ A @ B ) = ( k2_tarski @ B @ A ) ))).
% 0.61/0.82  thf('9', plain,
% 0.61/0.82      (![X15 : $i, X16 : $i]:
% 0.61/0.82         ((k2_tarski @ X16 @ X15) = (k2_tarski @ X15 @ X16))),
% 0.61/0.82      inference('cnf', [status(esa)], [commutativity_k2_tarski])).
% 0.61/0.82  thf('10', plain,
% 0.61/0.82      (![X15 : $i, X16 : $i]:
% 0.61/0.82         ((k2_tarski @ X16 @ X15) = (k2_tarski @ X15 @ X16))),
% 0.61/0.82      inference('cnf', [status(esa)], [commutativity_k2_tarski])).
% 0.61/0.82  thf('11', plain,
% 0.61/0.82      (((k3_xboole_0 @ (k2_tarski @ sk_B @ sk_A) @ sk_C_1)
% 0.61/0.82         = (k2_tarski @ sk_B @ sk_A))),
% 0.61/0.82      inference('demod', [status(thm)], ['8', '9', '10'])).
% 0.61/0.82  thf(t95_xboole_1, axiom,
% 0.61/0.82    (![A:$i,B:$i]:
% 0.61/0.82     ( ( k3_xboole_0 @ A @ B ) =
% 0.61/0.82       ( k5_xboole_0 @ ( k5_xboole_0 @ A @ B ) @ ( k2_xboole_0 @ A @ B ) ) ))).
% 0.61/0.82  thf('12', plain,
% 0.61/0.82      (![X13 : $i, X14 : $i]:
% 0.61/0.82         ((k3_xboole_0 @ X13 @ X14)
% 0.61/0.82           = (k5_xboole_0 @ (k5_xboole_0 @ X13 @ X14) @ 
% 0.61/0.82              (k2_xboole_0 @ X13 @ X14)))),
% 0.61/0.82      inference('cnf', [status(esa)], [t95_xboole_1])).
% 0.61/0.82  thf(t91_xboole_1, axiom,
% 0.61/0.82    (![A:$i,B:$i,C:$i]:
% 0.61/0.82     ( ( k5_xboole_0 @ ( k5_xboole_0 @ A @ B ) @ C ) =
% 0.61/0.82       ( k5_xboole_0 @ A @ ( k5_xboole_0 @ B @ C ) ) ))).
% 0.61/0.82  thf('13', plain,
% 0.61/0.82      (![X9 : $i, X10 : $i, X11 : $i]:
% 0.61/0.82         ((k5_xboole_0 @ (k5_xboole_0 @ X9 @ X10) @ X11)
% 0.61/0.82           = (k5_xboole_0 @ X9 @ (k5_xboole_0 @ X10 @ X11)))),
% 0.61/0.82      inference('cnf', [status(esa)], [t91_xboole_1])).
% 0.61/0.82  thf('14', plain,
% 0.61/0.82      (![X13 : $i, X14 : $i]:
% 0.61/0.82         ((k3_xboole_0 @ X13 @ X14)
% 0.61/0.82           = (k5_xboole_0 @ X13 @ 
% 0.61/0.82              (k5_xboole_0 @ X14 @ (k2_xboole_0 @ X13 @ X14))))),
% 0.61/0.82      inference('demod', [status(thm)], ['12', '13'])).
% 0.61/0.82  thf('15', plain,
% 0.61/0.82      (![X9 : $i, X10 : $i, X11 : $i]:
% 0.61/0.82         ((k5_xboole_0 @ (k5_xboole_0 @ X9 @ X10) @ X11)
% 0.61/0.82           = (k5_xboole_0 @ X9 @ (k5_xboole_0 @ X10 @ X11)))),
% 0.61/0.82      inference('cnf', [status(esa)], [t91_xboole_1])).
% 0.61/0.82  thf('16', plain,
% 0.61/0.82      (![X9 : $i, X10 : $i, X11 : $i]:
% 0.61/0.82         ((k5_xboole_0 @ (k5_xboole_0 @ X9 @ X10) @ X11)
% 0.61/0.82           = (k5_xboole_0 @ X9 @ (k5_xboole_0 @ X10 @ X11)))),
% 0.61/0.82      inference('cnf', [status(esa)], [t91_xboole_1])).
% 0.61/0.82  thf(t92_xboole_1, axiom,
% 0.61/0.82    (![A:$i]: ( ( k5_xboole_0 @ A @ A ) = ( k1_xboole_0 ) ))).
% 0.61/0.82  thf('17', plain, (![X12 : $i]: ((k5_xboole_0 @ X12 @ X12) = (k1_xboole_0))),
% 0.61/0.82      inference('cnf', [status(esa)], [t92_xboole_1])).
% 0.61/0.82  thf('18', plain,
% 0.61/0.82      (![X0 : $i, X1 : $i]:
% 0.61/0.82         ((k5_xboole_0 @ X1 @ (k5_xboole_0 @ X0 @ (k5_xboole_0 @ X1 @ X0)))
% 0.61/0.82           = (k1_xboole_0))),
% 0.61/0.82      inference('sup+', [status(thm)], ['16', '17'])).
% 0.61/0.82  thf('19', plain, (![X12 : $i]: ((k5_xboole_0 @ X12 @ X12) = (k1_xboole_0))),
% 0.61/0.82      inference('cnf', [status(esa)], [t92_xboole_1])).
% 0.61/0.82  thf('20', plain,
% 0.61/0.82      (![X9 : $i, X10 : $i, X11 : $i]:
% 0.61/0.82         ((k5_xboole_0 @ (k5_xboole_0 @ X9 @ X10) @ X11)
% 0.61/0.82           = (k5_xboole_0 @ X9 @ (k5_xboole_0 @ X10 @ X11)))),
% 0.61/0.82      inference('cnf', [status(esa)], [t91_xboole_1])).
% 0.61/0.82  thf('21', plain,
% 0.61/0.82      (![X0 : $i, X1 : $i]:
% 0.61/0.82         ((k5_xboole_0 @ k1_xboole_0 @ X0)
% 0.61/0.82           = (k5_xboole_0 @ X1 @ (k5_xboole_0 @ X1 @ X0)))),
% 0.61/0.82      inference('sup+', [status(thm)], ['19', '20'])).
% 0.61/0.82  thf('22', plain, (![X12 : $i]: ((k5_xboole_0 @ X12 @ X12) = (k1_xboole_0))),
% 0.61/0.82      inference('cnf', [status(esa)], [t92_xboole_1])).
% 0.61/0.82  thf('23', plain,
% 0.61/0.82      (![X13 : $i, X14 : $i]:
% 0.61/0.82         ((k3_xboole_0 @ X13 @ X14)
% 0.61/0.82           = (k5_xboole_0 @ (k5_xboole_0 @ X13 @ X14) @ 
% 0.61/0.82              (k2_xboole_0 @ X13 @ X14)))),
% 0.61/0.82      inference('cnf', [status(esa)], [t95_xboole_1])).
% 0.61/0.82  thf('24', plain,
% 0.61/0.82      (![X0 : $i]:
% 0.61/0.82         ((k3_xboole_0 @ X0 @ X0)
% 0.61/0.82           = (k5_xboole_0 @ k1_xboole_0 @ (k2_xboole_0 @ X0 @ X0)))),
% 0.61/0.82      inference('sup+', [status(thm)], ['22', '23'])).
% 0.61/0.82  thf(idempotence_k3_xboole_0, axiom,
% 0.61/0.82    (![A:$i,B:$i]: ( ( k3_xboole_0 @ A @ A ) = ( A ) ))).
% 0.61/0.82  thf('25', plain, (![X5 : $i]: ((k3_xboole_0 @ X5 @ X5) = (X5))),
% 0.61/0.82      inference('cnf', [status(esa)], [idempotence_k3_xboole_0])).
% 0.61/0.82  thf(idempotence_k2_xboole_0, axiom,
% 0.61/0.82    (![A:$i,B:$i]: ( ( k2_xboole_0 @ A @ A ) = ( A ) ))).
% 0.61/0.82  thf('26', plain, (![X4 : $i]: ((k2_xboole_0 @ X4 @ X4) = (X4))),
% 0.61/0.82      inference('cnf', [status(esa)], [idempotence_k2_xboole_0])).
% 0.61/0.82  thf('27', plain, (![X0 : $i]: ((X0) = (k5_xboole_0 @ k1_xboole_0 @ X0))),
% 0.61/0.82      inference('demod', [status(thm)], ['24', '25', '26'])).
% 0.61/0.82  thf('28', plain,
% 0.61/0.82      (![X0 : $i, X1 : $i]:
% 0.61/0.82         ((X0) = (k5_xboole_0 @ X1 @ (k5_xboole_0 @ X1 @ X0)))),
% 0.61/0.82      inference('demod', [status(thm)], ['21', '27'])).
% 0.61/0.82  thf('29', plain,
% 0.61/0.82      (![X0 : $i, X1 : $i]:
% 0.61/0.82         ((k5_xboole_0 @ X0 @ (k5_xboole_0 @ X1 @ X0))
% 0.61/0.82           = (k5_xboole_0 @ X1 @ k1_xboole_0))),
% 0.61/0.82      inference('sup+', [status(thm)], ['18', '28'])).
% 0.61/0.82  thf(t5_boole, axiom,
% 0.61/0.82    (![A:$i]: ( ( k5_xboole_0 @ A @ k1_xboole_0 ) = ( A ) ))).
% 0.61/0.82  thf('30', plain, (![X8 : $i]: ((k5_xboole_0 @ X8 @ k1_xboole_0) = (X8))),
% 0.61/0.82      inference('cnf', [status(esa)], [t5_boole])).
% 0.61/0.82  thf('31', plain,
% 0.61/0.82      (![X0 : $i, X1 : $i]:
% 0.61/0.82         ((k5_xboole_0 @ X0 @ (k5_xboole_0 @ X1 @ X0)) = (X1))),
% 0.61/0.82      inference('demod', [status(thm)], ['29', '30'])).
% 0.61/0.82  thf('32', plain,
% 0.61/0.82      (![X0 : $i, X1 : $i, X2 : $i]:
% 0.61/0.82         ((k5_xboole_0 @ X0 @ (k5_xboole_0 @ X2 @ (k5_xboole_0 @ X1 @ X0)))
% 0.61/0.82           = (k5_xboole_0 @ X2 @ X1))),
% 0.61/0.82      inference('sup+', [status(thm)], ['15', '31'])).
% 0.61/0.82  thf('33', plain,
% 0.61/0.82      (![X0 : $i, X1 : $i]:
% 0.61/0.82         ((k5_xboole_0 @ (k2_xboole_0 @ X1 @ X0) @ (k3_xboole_0 @ X1 @ X0))
% 0.61/0.82           = (k5_xboole_0 @ X1 @ X0))),
% 0.61/0.82      inference('sup+', [status(thm)], ['14', '32'])).
% 0.61/0.82  thf('34', plain,
% 0.61/0.82      (((k5_xboole_0 @ (k2_xboole_0 @ (k2_tarski @ sk_B @ sk_A) @ sk_C_1) @ 
% 0.61/0.82         (k2_tarski @ sk_B @ sk_A))
% 0.61/0.82         = (k5_xboole_0 @ (k2_tarski @ sk_B @ sk_A) @ sk_C_1))),
% 0.61/0.82      inference('sup+', [status(thm)], ['11', '33'])).
% 0.61/0.82  thf('35', plain,
% 0.61/0.82      (![X15 : $i, X16 : $i]:
% 0.61/0.82         ((k2_tarski @ X16 @ X15) = (k2_tarski @ X15 @ X16))),
% 0.61/0.82      inference('cnf', [status(esa)], [commutativity_k2_tarski])).
% 0.61/0.82  thf(l51_zfmisc_1, axiom,
% 0.61/0.82    (![A:$i,B:$i]:
% 0.61/0.82     ( ( k3_tarski @ ( k2_tarski @ A @ B ) ) = ( k2_xboole_0 @ A @ B ) ))).
% 0.61/0.82  thf('36', plain,
% 0.61/0.82      (![X56 : $i, X57 : $i]:
% 0.61/0.82         ((k3_tarski @ (k2_tarski @ X56 @ X57)) = (k2_xboole_0 @ X56 @ X57))),
% 0.61/0.82      inference('cnf', [status(esa)], [l51_zfmisc_1])).
% 0.61/0.82  thf('37', plain,
% 0.61/0.82      (![X0 : $i, X1 : $i]:
% 0.61/0.82         ((k3_tarski @ (k2_tarski @ X1 @ X0)) = (k2_xboole_0 @ X0 @ X1))),
% 0.61/0.82      inference('sup+', [status(thm)], ['35', '36'])).
% 0.61/0.82  thf('38', plain,
% 0.61/0.82      (![X56 : $i, X57 : $i]:
% 0.61/0.82         ((k3_tarski @ (k2_tarski @ X56 @ X57)) = (k2_xboole_0 @ X56 @ X57))),
% 0.61/0.82      inference('cnf', [status(esa)], [l51_zfmisc_1])).
% 0.61/0.82  thf('39', plain,
% 0.61/0.82      (![X0 : $i, X1 : $i]: ((k2_xboole_0 @ X1 @ X0) = (k2_xboole_0 @ X0 @ X1))),
% 0.61/0.82      inference('sup+', [status(thm)], ['37', '38'])).
% 0.61/0.82  thf('40', plain,
% 0.61/0.82      (![X0 : $i, X1 : $i]:
% 0.61/0.82         ((k5_xboole_0 @ X0 @ (k5_xboole_0 @ X1 @ X0)) = (X1))),
% 0.61/0.82      inference('demod', [status(thm)], ['29', '30'])).
% 0.61/0.82  thf('41', plain,
% 0.61/0.82      (![X0 : $i, X1 : $i]:
% 0.61/0.82         ((X0) = (k5_xboole_0 @ X1 @ (k5_xboole_0 @ X1 @ X0)))),
% 0.61/0.82      inference('demod', [status(thm)], ['21', '27'])).
% 0.61/0.82  thf('42', plain,
% 0.61/0.82      (![X0 : $i, X1 : $i]: ((k5_xboole_0 @ X0 @ X1) = (k5_xboole_0 @ X1 @ X0))),
% 0.61/0.82      inference('sup+', [status(thm)], ['40', '41'])).
% 0.61/0.82  thf('43', plain,
% 0.61/0.82      (![X0 : $i, X1 : $i]: ((k5_xboole_0 @ X0 @ X1) = (k5_xboole_0 @ X1 @ X0))),
% 0.61/0.82      inference('sup+', [status(thm)], ['40', '41'])).
% 0.61/0.82  thf('44', plain,
% 0.61/0.82      (((k5_xboole_0 @ (k2_tarski @ sk_B @ sk_A) @ 
% 0.61/0.82         (k2_xboole_0 @ sk_C_1 @ (k2_tarski @ sk_B @ sk_A)))
% 0.61/0.82         = (k5_xboole_0 @ sk_C_1 @ (k2_tarski @ sk_B @ sk_A)))),
% 0.61/0.82      inference('demod', [status(thm)], ['34', '39', '42', '43'])).
% 0.61/0.82  thf('45', plain,
% 0.61/0.82      (![X13 : $i, X14 : $i]:
% 0.61/0.82         ((k3_xboole_0 @ X13 @ X14)
% 0.61/0.82           = (k5_xboole_0 @ X13 @ 
% 0.61/0.82              (k5_xboole_0 @ X14 @ (k2_xboole_0 @ X13 @ X14))))),
% 0.61/0.82      inference('demod', [status(thm)], ['12', '13'])).
% 0.61/0.82  thf('46', plain,
% 0.61/0.82      (((k3_xboole_0 @ sk_C_1 @ (k2_tarski @ sk_B @ sk_A))
% 0.61/0.82         = (k5_xboole_0 @ sk_C_1 @ 
% 0.61/0.82            (k5_xboole_0 @ sk_C_1 @ (k2_tarski @ sk_B @ sk_A))))),
% 0.61/0.82      inference('sup+', [status(thm)], ['44', '45'])).
% 0.61/0.82  thf('47', plain,
% 0.61/0.82      (![X0 : $i, X1 : $i]:
% 0.61/0.82         ((X0) = (k5_xboole_0 @ X1 @ (k5_xboole_0 @ X1 @ X0)))),
% 0.61/0.82      inference('demod', [status(thm)], ['21', '27'])).
% 0.61/0.82  thf('48', plain,
% 0.61/0.82      (((k3_xboole_0 @ sk_C_1 @ (k2_tarski @ sk_B @ sk_A))
% 0.61/0.82         = (k2_tarski @ sk_B @ sk_A))),
% 0.61/0.82      inference('demod', [status(thm)], ['46', '47'])).
% 0.61/0.82  thf(t17_xboole_1, axiom,
% 0.61/0.82    (![A:$i,B:$i]: ( r1_tarski @ ( k3_xboole_0 @ A @ B ) @ A ))).
% 0.61/0.82  thf('49', plain,
% 0.61/0.82      (![X6 : $i, X7 : $i]: (r1_tarski @ (k3_xboole_0 @ X6 @ X7) @ X6)),
% 0.61/0.82      inference('cnf', [status(esa)], [t17_xboole_1])).
% 0.61/0.82  thf(d3_tarski, axiom,
% 0.61/0.82    (![A:$i,B:$i]:
% 0.61/0.82     ( ( r1_tarski @ A @ B ) <=>
% 0.61/0.82       ( ![C:$i]: ( ( r2_hidden @ C @ A ) => ( r2_hidden @ C @ B ) ) ) ))).
% 0.61/0.82  thf('50', plain,
% 0.61/0.82      (![X0 : $i, X1 : $i, X2 : $i]:
% 0.61/0.82         (~ (r2_hidden @ X0 @ X1)
% 0.61/0.82          | (r2_hidden @ X0 @ X2)
% 0.61/0.82          | ~ (r1_tarski @ X1 @ X2))),
% 0.61/0.82      inference('cnf', [status(esa)], [d3_tarski])).
% 0.61/0.82  thf('51', plain,
% 0.61/0.82      (![X0 : $i, X1 : $i, X2 : $i]:
% 0.61/0.82         ((r2_hidden @ X2 @ X0) | ~ (r2_hidden @ X2 @ (k3_xboole_0 @ X0 @ X1)))),
% 0.61/0.82      inference('sup-', [status(thm)], ['49', '50'])).
% 0.61/0.82  thf('52', plain,
% 0.61/0.82      (![X0 : $i]:
% 0.61/0.82         (~ (r2_hidden @ X0 @ (k2_tarski @ sk_B @ sk_A))
% 0.61/0.82          | (r2_hidden @ X0 @ sk_C_1))),
% 0.61/0.82      inference('sup-', [status(thm)], ['48', '51'])).
% 0.61/0.82  thf('53', plain, ((r2_hidden @ sk_A @ sk_C_1)),
% 0.61/0.82      inference('sup-', [status(thm)], ['7', '52'])).
% 0.61/0.82  thf('54', plain, ($false), inference('demod', [status(thm)], ['0', '53'])).
% 0.61/0.82  
% 0.61/0.82  % SZS output end Refutation
% 0.61/0.82  
% 0.61/0.83  % Zipperpin 1.5 exiting
%------------------------------------------------------------------------------
