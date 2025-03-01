%------------------------------------------------------------------------------
% File       : Zipperpin---2.0
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_portfolio.sh /export/starexec/sandbox/benchmark/theBenchmark.p /export/starexec/sandbox/tmp/tmp.LN0VU9ATSO

% Computer   : n016.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 13:30:47 EST 2020

% Result     : Theorem 0.52s
% Output     : Refutation 0.52s
% Verified   : 
% Statistics : Number of formulae       :   87 (  96 expanded)
%              Number of leaves         :   36 (  43 expanded)
%              Depth                    :   15
%              Number of atoms          :  600 ( 688 expanded)
%              Number of equality atoms :   72 (  85 expanded)
%              Maximal formula depth    :   13 (   6 average)

% Comments   : 
%------------------------------------------------------------------------------
thf(r2_hidden_type,type,(
    r2_hidden: $i > $i > $o )).

thf(sk_C_type,type,(
    sk_C: $i )).

thf(zip_tseitin_0_type,type,(
    zip_tseitin_0: $i > $i > $i > $i > $o )).

thf(k2_enumset1_type,type,(
    k2_enumset1: $i > $i > $i > $i > $i )).

thf(sk_A_type,type,(
    sk_A: $i )).

thf(k5_xboole_0_type,type,(
    k5_xboole_0: $i > $i > $i )).

thf(sk_D_1_type,type,(
    sk_D_1: $i )).

thf(k1_enumset1_type,type,(
    k1_enumset1: $i > $i > $i > $i )).

thf(k2_xboole_0_type,type,(
    k2_xboole_0: $i > $i > $i )).

thf(k1_tarski_type,type,(
    k1_tarski: $i > $i )).

thf(k3_xboole_0_type,type,(
    k3_xboole_0: $i > $i > $i )).

thf(k2_tarski_type,type,(
    k2_tarski: $i > $i > $i )).

thf(k4_xboole_0_type,type,(
    k4_xboole_0: $i > $i > $i )).

thf(sk_B_type,type,(
    sk_B: $i )).

thf(k1_xboole_0_type,type,(
    k1_xboole_0: $i )).

thf(r1_tarski_type,type,(
    r1_tarski: $i > $i > $o )).

thf(t12_zfmisc_1,axiom,(
    ! [A: $i,B: $i] :
      ( r1_tarski @ ( k1_tarski @ A ) @ ( k2_tarski @ A @ B ) ) )).

thf('0',plain,(
    ! [X69: $i,X70: $i] :
      ( r1_tarski @ ( k1_tarski @ X69 ) @ ( k2_tarski @ X69 @ X70 ) ) ),
    inference(cnf,[status(esa)],[t12_zfmisc_1])).

thf(t28_zfmisc_1,conjecture,(
    ! [A: $i,B: $i,C: $i,D: $i] :
      ~ ( ( r1_tarski @ ( k2_tarski @ A @ B ) @ ( k2_tarski @ C @ D ) )
        & ( A != C )
        & ( A != D ) ) )).

thf(zf_stmt_0,negated_conjecture,(
    ~ ! [A: $i,B: $i,C: $i,D: $i] :
        ~ ( ( r1_tarski @ ( k2_tarski @ A @ B ) @ ( k2_tarski @ C @ D ) )
          & ( A != C )
          & ( A != D ) ) ),
    inference('cnf.neg',[status(esa)],[t28_zfmisc_1])).

thf('1',plain,(
    r1_tarski @ ( k2_tarski @ sk_A @ sk_B ) @ ( k2_tarski @ sk_C @ sk_D_1 ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(t28_xboole_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( r1_tarski @ A @ B )
     => ( ( k3_xboole_0 @ A @ B )
        = A ) ) )).

thf('2',plain,(
    ! [X8: $i,X9: $i] :
      ( ( ( k3_xboole_0 @ X8 @ X9 )
        = X8 )
      | ~ ( r1_tarski @ X8 @ X9 ) ) ),
    inference(cnf,[status(esa)],[t28_xboole_1])).

thf('3',plain,
    ( ( k3_xboole_0 @ ( k2_tarski @ sk_A @ sk_B ) @ ( k2_tarski @ sk_C @ sk_D_1 ) )
    = ( k2_tarski @ sk_A @ sk_B ) ),
    inference('sup-',[status(thm)],['1','2'])).

thf(commutativity_k3_xboole_0,axiom,(
    ! [A: $i,B: $i] :
      ( ( k3_xboole_0 @ A @ B )
      = ( k3_xboole_0 @ B @ A ) ) )).

thf('4',plain,(
    ! [X0: $i,X1: $i] :
      ( ( k3_xboole_0 @ X1 @ X0 )
      = ( k3_xboole_0 @ X0 @ X1 ) ) ),
    inference(cnf,[status(esa)],[commutativity_k3_xboole_0])).

thf(t18_xboole_1,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( r1_tarski @ A @ ( k3_xboole_0 @ B @ C ) )
     => ( r1_tarski @ A @ B ) ) )).

thf('5',plain,(
    ! [X5: $i,X6: $i,X7: $i] :
      ( ( r1_tarski @ X5 @ X6 )
      | ~ ( r1_tarski @ X5 @ ( k3_xboole_0 @ X6 @ X7 ) ) ) ),
    inference(cnf,[status(esa)],[t18_xboole_1])).

thf('6',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( ~ ( r1_tarski @ X2 @ ( k3_xboole_0 @ X1 @ X0 ) )
      | ( r1_tarski @ X2 @ X0 ) ) ),
    inference('sup-',[status(thm)],['4','5'])).

thf('7',plain,(
    ! [X0: $i] :
      ( ~ ( r1_tarski @ X0 @ ( k2_tarski @ sk_A @ sk_B ) )
      | ( r1_tarski @ X0 @ ( k2_tarski @ sk_C @ sk_D_1 ) ) ) ),
    inference('sup-',[status(thm)],['3','6'])).

thf('8',plain,(
    r1_tarski @ ( k1_tarski @ sk_A ) @ ( k2_tarski @ sk_C @ sk_D_1 ) ),
    inference('sup-',[status(thm)],['0','7'])).

thf('9',plain,(
    ! [X8: $i,X9: $i] :
      ( ( ( k3_xboole_0 @ X8 @ X9 )
        = X8 )
      | ~ ( r1_tarski @ X8 @ X9 ) ) ),
    inference(cnf,[status(esa)],[t28_xboole_1])).

thf('10',plain,
    ( ( k3_xboole_0 @ ( k1_tarski @ sk_A ) @ ( k2_tarski @ sk_C @ sk_D_1 ) )
    = ( k1_tarski @ sk_A ) ),
    inference('sup-',[status(thm)],['8','9'])).

thf(t100_xboole_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( k4_xboole_0 @ A @ B )
      = ( k5_xboole_0 @ A @ ( k3_xboole_0 @ A @ B ) ) ) )).

thf('11',plain,(
    ! [X3: $i,X4: $i] :
      ( ( k4_xboole_0 @ X3 @ X4 )
      = ( k5_xboole_0 @ X3 @ ( k3_xboole_0 @ X3 @ X4 ) ) ) ),
    inference(cnf,[status(esa)],[t100_xboole_1])).

thf('12',plain,
    ( ( k4_xboole_0 @ ( k1_tarski @ sk_A ) @ ( k2_tarski @ sk_C @ sk_D_1 ) )
    = ( k5_xboole_0 @ ( k1_tarski @ sk_A ) @ ( k1_tarski @ sk_A ) ) ),
    inference('sup+',[status(thm)],['10','11'])).

thf(idempotence_k3_xboole_0,axiom,(
    ! [A: $i,B: $i] :
      ( ( k3_xboole_0 @ A @ A )
      = A ) )).

thf('13',plain,(
    ! [X2: $i] :
      ( ( k3_xboole_0 @ X2 @ X2 )
      = X2 ) ),
    inference(cnf,[status(esa)],[idempotence_k3_xboole_0])).

thf('14',plain,(
    ! [X3: $i,X4: $i] :
      ( ( k4_xboole_0 @ X3 @ X4 )
      = ( k5_xboole_0 @ X3 @ ( k3_xboole_0 @ X3 @ X4 ) ) ) ),
    inference(cnf,[status(esa)],[t100_xboole_1])).

thf('15',plain,(
    ! [X0: $i] :
      ( ( k4_xboole_0 @ X0 @ X0 )
      = ( k5_xboole_0 @ X0 @ X0 ) ) ),
    inference('sup+',[status(thm)],['13','14'])).

thf(t2_boole,axiom,(
    ! [A: $i] :
      ( ( k3_xboole_0 @ A @ k1_xboole_0 )
      = k1_xboole_0 ) )).

thf('16',plain,(
    ! [X10: $i] :
      ( ( k3_xboole_0 @ X10 @ k1_xboole_0 )
      = k1_xboole_0 ) ),
    inference(cnf,[status(esa)],[t2_boole])).

thf('17',plain,(
    ! [X3: $i,X4: $i] :
      ( ( k4_xboole_0 @ X3 @ X4 )
      = ( k5_xboole_0 @ X3 @ ( k3_xboole_0 @ X3 @ X4 ) ) ) ),
    inference(cnf,[status(esa)],[t100_xboole_1])).

thf('18',plain,(
    ! [X0: $i] :
      ( ( k4_xboole_0 @ X0 @ k1_xboole_0 )
      = ( k5_xboole_0 @ X0 @ k1_xboole_0 ) ) ),
    inference('sup+',[status(thm)],['16','17'])).

thf(t5_boole,axiom,(
    ! [A: $i] :
      ( ( k5_xboole_0 @ A @ k1_xboole_0 )
      = A ) )).

thf('19',plain,(
    ! [X13: $i] :
      ( ( k5_xboole_0 @ X13 @ k1_xboole_0 )
      = X13 ) ),
    inference(cnf,[status(esa)],[t5_boole])).

thf('20',plain,(
    ! [X0: $i] :
      ( ( k4_xboole_0 @ X0 @ k1_xboole_0 )
      = X0 ) ),
    inference(demod,[status(thm)],['18','19'])).

thf(t48_xboole_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( k4_xboole_0 @ A @ ( k4_xboole_0 @ A @ B ) )
      = ( k3_xboole_0 @ A @ B ) ) )).

thf('21',plain,(
    ! [X11: $i,X12: $i] :
      ( ( k4_xboole_0 @ X11 @ ( k4_xboole_0 @ X11 @ X12 ) )
      = ( k3_xboole_0 @ X11 @ X12 ) ) ),
    inference(cnf,[status(esa)],[t48_xboole_1])).

thf('22',plain,(
    ! [X0: $i] :
      ( ( k4_xboole_0 @ X0 @ X0 )
      = ( k3_xboole_0 @ X0 @ k1_xboole_0 ) ) ),
    inference('sup+',[status(thm)],['20','21'])).

thf('23',plain,(
    ! [X10: $i] :
      ( ( k3_xboole_0 @ X10 @ k1_xboole_0 )
      = k1_xboole_0 ) ),
    inference(cnf,[status(esa)],[t2_boole])).

thf('24',plain,(
    ! [X0: $i] :
      ( ( k4_xboole_0 @ X0 @ X0 )
      = k1_xboole_0 ) ),
    inference(demod,[status(thm)],['22','23'])).

thf('25',plain,(
    ! [X0: $i] :
      ( ( k5_xboole_0 @ X0 @ X0 )
      = k1_xboole_0 ) ),
    inference('sup+',[status(thm)],['15','24'])).

thf('26',plain,
    ( ( k4_xboole_0 @ ( k1_tarski @ sk_A ) @ ( k2_tarski @ sk_C @ sk_D_1 ) )
    = k1_xboole_0 ),
    inference(demod,[status(thm)],['12','25'])).

thf(t98_xboole_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( k2_xboole_0 @ A @ B )
      = ( k5_xboole_0 @ A @ ( k4_xboole_0 @ B @ A ) ) ) )).

thf('27',plain,(
    ! [X14: $i,X15: $i] :
      ( ( k2_xboole_0 @ X14 @ X15 )
      = ( k5_xboole_0 @ X14 @ ( k4_xboole_0 @ X15 @ X14 ) ) ) ),
    inference(cnf,[status(esa)],[t98_xboole_1])).

thf('28',plain,
    ( ( k2_xboole_0 @ ( k2_tarski @ sk_C @ sk_D_1 ) @ ( k1_tarski @ sk_A ) )
    = ( k5_xboole_0 @ ( k2_tarski @ sk_C @ sk_D_1 ) @ k1_xboole_0 ) ),
    inference('sup+',[status(thm)],['26','27'])).

thf('29',plain,(
    ! [X13: $i] :
      ( ( k5_xboole_0 @ X13 @ k1_xboole_0 )
      = X13 ) ),
    inference(cnf,[status(esa)],[t5_boole])).

thf('30',plain,
    ( ( k2_xboole_0 @ ( k2_tarski @ sk_C @ sk_D_1 ) @ ( k1_tarski @ sk_A ) )
    = ( k2_tarski @ sk_C @ sk_D_1 ) ),
    inference(demod,[status(thm)],['28','29'])).

thf(t70_enumset1,axiom,(
    ! [A: $i,B: $i] :
      ( ( k1_enumset1 @ A @ A @ B )
      = ( k2_tarski @ A @ B ) ) )).

thf('31',plain,(
    ! [X39: $i,X40: $i] :
      ( ( k1_enumset1 @ X39 @ X39 @ X40 )
      = ( k2_tarski @ X39 @ X40 ) ) ),
    inference(cnf,[status(esa)],[t70_enumset1])).

thf(t46_enumset1,axiom,(
    ! [A: $i,B: $i,C: $i,D: $i] :
      ( ( k2_enumset1 @ A @ B @ C @ D )
      = ( k2_xboole_0 @ ( k1_enumset1 @ A @ B @ C ) @ ( k1_tarski @ D ) ) ) )).

thf('32',plain,(
    ! [X34: $i,X35: $i,X36: $i,X37: $i] :
      ( ( k2_enumset1 @ X34 @ X35 @ X36 @ X37 )
      = ( k2_xboole_0 @ ( k1_enumset1 @ X34 @ X35 @ X36 ) @ ( k1_tarski @ X37 ) ) ) ),
    inference(cnf,[status(esa)],[t46_enumset1])).

thf('33',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( ( k2_enumset1 @ X1 @ X1 @ X0 @ X2 )
      = ( k2_xboole_0 @ ( k2_tarski @ X1 @ X0 ) @ ( k1_tarski @ X2 ) ) ) ),
    inference('sup+',[status(thm)],['31','32'])).

thf(t71_enumset1,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( k2_enumset1 @ A @ A @ B @ C )
      = ( k1_enumset1 @ A @ B @ C ) ) )).

thf('34',plain,(
    ! [X41: $i,X42: $i,X43: $i] :
      ( ( k2_enumset1 @ X41 @ X41 @ X42 @ X43 )
      = ( k1_enumset1 @ X41 @ X42 @ X43 ) ) ),
    inference(cnf,[status(esa)],[t71_enumset1])).

thf(t98_enumset1,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( k1_enumset1 @ A @ B @ C )
      = ( k1_enumset1 @ A @ C @ B ) ) )).

thf('35',plain,(
    ! [X66: $i,X67: $i,X68: $i] :
      ( ( k1_enumset1 @ X66 @ X68 @ X67 )
      = ( k1_enumset1 @ X66 @ X67 @ X68 ) ) ),
    inference(cnf,[status(esa)],[t98_enumset1])).

thf('36',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( ( k1_enumset1 @ X2 @ X0 @ X1 )
      = ( k2_enumset1 @ X2 @ X2 @ X1 @ X0 ) ) ),
    inference('sup+',[status(thm)],['34','35'])).

thf('37',plain,
    ( ( k1_enumset1 @ sk_C @ sk_A @ sk_D_1 )
    = ( k2_tarski @ sk_C @ sk_D_1 ) ),
    inference(demod,[status(thm)],['30','33','36'])).

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

thf('38',plain,(
    ! [X21: $i,X22: $i,X23: $i,X24: $i,X25: $i] :
      ( ( zip_tseitin_0 @ X21 @ X22 @ X23 @ X24 )
      | ( r2_hidden @ X21 @ X25 )
      | ( X25
       != ( k1_enumset1 @ X24 @ X23 @ X22 ) ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_3])).

thf('39',plain,(
    ! [X21: $i,X22: $i,X23: $i,X24: $i] :
      ( ( r2_hidden @ X21 @ ( k1_enumset1 @ X24 @ X23 @ X22 ) )
      | ( zip_tseitin_0 @ X21 @ X22 @ X23 @ X24 ) ) ),
    inference(simplify,[status(thm)],['38'])).

thf('40',plain,(
    ! [X0: $i] :
      ( ( r2_hidden @ X0 @ ( k2_tarski @ sk_C @ sk_D_1 ) )
      | ( zip_tseitin_0 @ X0 @ sk_D_1 @ sk_A @ sk_C ) ) ),
    inference('sup+',[status(thm)],['37','39'])).

thf(d2_tarski,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( C
        = ( k2_tarski @ A @ B ) )
    <=> ! [D: $i] :
          ( ( r2_hidden @ D @ C )
        <=> ( ( D = A )
            | ( D = B ) ) ) ) )).

thf('41',plain,(
    ! [X28: $i,X30: $i,X31: $i,X32: $i] :
      ( ~ ( r2_hidden @ X32 @ X30 )
      | ( X32 = X31 )
      | ( X32 = X28 )
      | ( X30
       != ( k2_tarski @ X31 @ X28 ) ) ) ),
    inference(cnf,[status(esa)],[d2_tarski])).

thf('42',plain,(
    ! [X28: $i,X31: $i,X32: $i] :
      ( ( X32 = X28 )
      | ( X32 = X31 )
      | ~ ( r2_hidden @ X32 @ ( k2_tarski @ X31 @ X28 ) ) ) ),
    inference(simplify,[status(thm)],['41'])).

thf('43',plain,(
    ! [X0: $i] :
      ( ( zip_tseitin_0 @ X0 @ sk_D_1 @ sk_A @ sk_C )
      | ( X0 = sk_C )
      | ( X0 = sk_D_1 ) ) ),
    inference('sup-',[status(thm)],['40','42'])).

thf('44',plain,(
    ! [X16: $i,X17: $i,X18: $i,X19: $i] :
      ( ( X17 != X19 )
      | ~ ( zip_tseitin_0 @ X17 @ X18 @ X19 @ X16 ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_2])).

thf('45',plain,(
    ! [X16: $i,X18: $i,X19: $i] :
      ~ ( zip_tseitin_0 @ X19 @ X18 @ X19 @ X16 ) ),
    inference(simplify,[status(thm)],['44'])).

thf('46',plain,
    ( ( sk_A = sk_D_1 )
    | ( sk_A = sk_C ) ),
    inference('sup-',[status(thm)],['43','45'])).

thf('47',plain,(
    sk_A != sk_C ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('48',plain,(
    sk_A != sk_D_1 ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('49',plain,(
    $false ),
    inference('simplify_reflect-',[status(thm)],['46','47','48'])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.08/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.08/0.13  % Command    : run_portfolio.sh /export/starexec/sandbox/benchmark/theBenchmark.p /export/starexec/sandbox/tmp/tmp.LN0VU9ATSO
% 0.14/0.34  % Computer   : n016.cluster.edu
% 0.14/0.34  % Model      : x86_64 x86_64
% 0.14/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.14/0.34  % Memory     : 8042.1875MB
% 0.14/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.14/0.34  % CPULimit   : 60
% 0.14/0.34  % DateTime   : Tue Dec  1 17:01:19 EST 2020
% 0.14/0.34  % CPUTime    : 
% 0.14/0.34  % Running portfolio for 600 s
% 0.14/0.34  % File         : /export/starexec/sandbox/benchmark/theBenchmark.p
% 0.14/0.34  % Number of cores: 8
% 0.14/0.35  % Python version: Python 3.6.8
% 0.14/0.35  % Running in FO mode
% 0.52/0.71  % Running /export/starexec/sandbox/solver/bin/fo/fo7.sh for 78
% 0.52/0.71  % Solved by: fo/fo7.sh
% 0.52/0.71  To remain in the chosen logic fragment, unification with booleans has been disabled.
% 0.52/0.71  % done 556 iterations in 0.260s
% 0.52/0.71  % SZS status Theorem for '/export/starexec/sandbox/benchmark/theBenchmark.p'
% 0.52/0.71  % SZS output start Refutation
% 0.52/0.71  thf(r2_hidden_type, type, r2_hidden: $i > $i > $o).
% 0.52/0.71  thf(sk_C_type, type, sk_C: $i).
% 0.52/0.71  thf(zip_tseitin_0_type, type, zip_tseitin_0: $i > $i > $i > $i > $o).
% 0.52/0.71  thf(k2_enumset1_type, type, k2_enumset1: $i > $i > $i > $i > $i).
% 0.52/0.71  thf(sk_A_type, type, sk_A: $i).
% 0.52/0.71  thf(k5_xboole_0_type, type, k5_xboole_0: $i > $i > $i).
% 0.52/0.71  thf(sk_D_1_type, type, sk_D_1: $i).
% 0.52/0.71  thf(k1_enumset1_type, type, k1_enumset1: $i > $i > $i > $i).
% 0.52/0.71  thf(k2_xboole_0_type, type, k2_xboole_0: $i > $i > $i).
% 0.52/0.71  thf(k1_tarski_type, type, k1_tarski: $i > $i).
% 0.52/0.71  thf(k3_xboole_0_type, type, k3_xboole_0: $i > $i > $i).
% 0.52/0.71  thf(k2_tarski_type, type, k2_tarski: $i > $i > $i).
% 0.52/0.71  thf(k4_xboole_0_type, type, k4_xboole_0: $i > $i > $i).
% 0.52/0.71  thf(sk_B_type, type, sk_B: $i).
% 0.52/0.71  thf(k1_xboole_0_type, type, k1_xboole_0: $i).
% 0.52/0.71  thf(r1_tarski_type, type, r1_tarski: $i > $i > $o).
% 0.52/0.71  thf(t12_zfmisc_1, axiom,
% 0.52/0.71    (![A:$i,B:$i]: ( r1_tarski @ ( k1_tarski @ A ) @ ( k2_tarski @ A @ B ) ))).
% 0.52/0.71  thf('0', plain,
% 0.52/0.71      (![X69 : $i, X70 : $i]:
% 0.52/0.71         (r1_tarski @ (k1_tarski @ X69) @ (k2_tarski @ X69 @ X70))),
% 0.52/0.71      inference('cnf', [status(esa)], [t12_zfmisc_1])).
% 0.52/0.71  thf(t28_zfmisc_1, conjecture,
% 0.52/0.71    (![A:$i,B:$i,C:$i,D:$i]:
% 0.52/0.71     ( ~( ( r1_tarski @ ( k2_tarski @ A @ B ) @ ( k2_tarski @ C @ D ) ) & 
% 0.52/0.71          ( ( A ) != ( C ) ) & ( ( A ) != ( D ) ) ) ))).
% 0.52/0.71  thf(zf_stmt_0, negated_conjecture,
% 0.52/0.71    (~( ![A:$i,B:$i,C:$i,D:$i]:
% 0.52/0.71        ( ~( ( r1_tarski @ ( k2_tarski @ A @ B ) @ ( k2_tarski @ C @ D ) ) & 
% 0.52/0.71             ( ( A ) != ( C ) ) & ( ( A ) != ( D ) ) ) ) )),
% 0.52/0.71    inference('cnf.neg', [status(esa)], [t28_zfmisc_1])).
% 0.52/0.71  thf('1', plain,
% 0.52/0.71      ((r1_tarski @ (k2_tarski @ sk_A @ sk_B) @ (k2_tarski @ sk_C @ sk_D_1))),
% 0.52/0.71      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.52/0.71  thf(t28_xboole_1, axiom,
% 0.52/0.71    (![A:$i,B:$i]:
% 0.52/0.71     ( ( r1_tarski @ A @ B ) => ( ( k3_xboole_0 @ A @ B ) = ( A ) ) ))).
% 0.52/0.71  thf('2', plain,
% 0.52/0.71      (![X8 : $i, X9 : $i]:
% 0.52/0.71         (((k3_xboole_0 @ X8 @ X9) = (X8)) | ~ (r1_tarski @ X8 @ X9))),
% 0.52/0.71      inference('cnf', [status(esa)], [t28_xboole_1])).
% 0.52/0.71  thf('3', plain,
% 0.52/0.71      (((k3_xboole_0 @ (k2_tarski @ sk_A @ sk_B) @ (k2_tarski @ sk_C @ sk_D_1))
% 0.52/0.71         = (k2_tarski @ sk_A @ sk_B))),
% 0.52/0.71      inference('sup-', [status(thm)], ['1', '2'])).
% 0.52/0.71  thf(commutativity_k3_xboole_0, axiom,
% 0.52/0.71    (![A:$i,B:$i]: ( ( k3_xboole_0 @ A @ B ) = ( k3_xboole_0 @ B @ A ) ))).
% 0.52/0.71  thf('4', plain,
% 0.52/0.71      (![X0 : $i, X1 : $i]: ((k3_xboole_0 @ X1 @ X0) = (k3_xboole_0 @ X0 @ X1))),
% 0.52/0.71      inference('cnf', [status(esa)], [commutativity_k3_xboole_0])).
% 0.52/0.71  thf(t18_xboole_1, axiom,
% 0.52/0.71    (![A:$i,B:$i,C:$i]:
% 0.52/0.71     ( ( r1_tarski @ A @ ( k3_xboole_0 @ B @ C ) ) => ( r1_tarski @ A @ B ) ))).
% 0.52/0.71  thf('5', plain,
% 0.52/0.71      (![X5 : $i, X6 : $i, X7 : $i]:
% 0.52/0.71         ((r1_tarski @ X5 @ X6) | ~ (r1_tarski @ X5 @ (k3_xboole_0 @ X6 @ X7)))),
% 0.52/0.71      inference('cnf', [status(esa)], [t18_xboole_1])).
% 0.52/0.71  thf('6', plain,
% 0.52/0.71      (![X0 : $i, X1 : $i, X2 : $i]:
% 0.52/0.71         (~ (r1_tarski @ X2 @ (k3_xboole_0 @ X1 @ X0)) | (r1_tarski @ X2 @ X0))),
% 0.52/0.71      inference('sup-', [status(thm)], ['4', '5'])).
% 0.52/0.71  thf('7', plain,
% 0.52/0.71      (![X0 : $i]:
% 0.52/0.71         (~ (r1_tarski @ X0 @ (k2_tarski @ sk_A @ sk_B))
% 0.52/0.71          | (r1_tarski @ X0 @ (k2_tarski @ sk_C @ sk_D_1)))),
% 0.52/0.71      inference('sup-', [status(thm)], ['3', '6'])).
% 0.52/0.71  thf('8', plain,
% 0.52/0.71      ((r1_tarski @ (k1_tarski @ sk_A) @ (k2_tarski @ sk_C @ sk_D_1))),
% 0.52/0.71      inference('sup-', [status(thm)], ['0', '7'])).
% 0.52/0.71  thf('9', plain,
% 0.52/0.71      (![X8 : $i, X9 : $i]:
% 0.52/0.71         (((k3_xboole_0 @ X8 @ X9) = (X8)) | ~ (r1_tarski @ X8 @ X9))),
% 0.52/0.71      inference('cnf', [status(esa)], [t28_xboole_1])).
% 0.52/0.71  thf('10', plain,
% 0.52/0.71      (((k3_xboole_0 @ (k1_tarski @ sk_A) @ (k2_tarski @ sk_C @ sk_D_1))
% 0.52/0.71         = (k1_tarski @ sk_A))),
% 0.52/0.71      inference('sup-', [status(thm)], ['8', '9'])).
% 0.52/0.71  thf(t100_xboole_1, axiom,
% 0.52/0.71    (![A:$i,B:$i]:
% 0.52/0.71     ( ( k4_xboole_0 @ A @ B ) = ( k5_xboole_0 @ A @ ( k3_xboole_0 @ A @ B ) ) ))).
% 0.52/0.71  thf('11', plain,
% 0.52/0.71      (![X3 : $i, X4 : $i]:
% 0.52/0.71         ((k4_xboole_0 @ X3 @ X4)
% 0.52/0.71           = (k5_xboole_0 @ X3 @ (k3_xboole_0 @ X3 @ X4)))),
% 0.52/0.71      inference('cnf', [status(esa)], [t100_xboole_1])).
% 0.52/0.71  thf('12', plain,
% 0.52/0.71      (((k4_xboole_0 @ (k1_tarski @ sk_A) @ (k2_tarski @ sk_C @ sk_D_1))
% 0.52/0.71         = (k5_xboole_0 @ (k1_tarski @ sk_A) @ (k1_tarski @ sk_A)))),
% 0.52/0.71      inference('sup+', [status(thm)], ['10', '11'])).
% 0.52/0.71  thf(idempotence_k3_xboole_0, axiom,
% 0.52/0.71    (![A:$i,B:$i]: ( ( k3_xboole_0 @ A @ A ) = ( A ) ))).
% 0.52/0.71  thf('13', plain, (![X2 : $i]: ((k3_xboole_0 @ X2 @ X2) = (X2))),
% 0.52/0.71      inference('cnf', [status(esa)], [idempotence_k3_xboole_0])).
% 0.52/0.71  thf('14', plain,
% 0.52/0.71      (![X3 : $i, X4 : $i]:
% 0.52/0.71         ((k4_xboole_0 @ X3 @ X4)
% 0.52/0.71           = (k5_xboole_0 @ X3 @ (k3_xboole_0 @ X3 @ X4)))),
% 0.52/0.71      inference('cnf', [status(esa)], [t100_xboole_1])).
% 0.52/0.71  thf('15', plain,
% 0.52/0.71      (![X0 : $i]: ((k4_xboole_0 @ X0 @ X0) = (k5_xboole_0 @ X0 @ X0))),
% 0.52/0.71      inference('sup+', [status(thm)], ['13', '14'])).
% 0.52/0.71  thf(t2_boole, axiom,
% 0.52/0.71    (![A:$i]: ( ( k3_xboole_0 @ A @ k1_xboole_0 ) = ( k1_xboole_0 ) ))).
% 0.52/0.71  thf('16', plain,
% 0.52/0.71      (![X10 : $i]: ((k3_xboole_0 @ X10 @ k1_xboole_0) = (k1_xboole_0))),
% 0.52/0.71      inference('cnf', [status(esa)], [t2_boole])).
% 0.52/0.71  thf('17', plain,
% 0.52/0.71      (![X3 : $i, X4 : $i]:
% 0.52/0.71         ((k4_xboole_0 @ X3 @ X4)
% 0.52/0.71           = (k5_xboole_0 @ X3 @ (k3_xboole_0 @ X3 @ X4)))),
% 0.52/0.71      inference('cnf', [status(esa)], [t100_xboole_1])).
% 0.52/0.71  thf('18', plain,
% 0.52/0.71      (![X0 : $i]:
% 0.52/0.71         ((k4_xboole_0 @ X0 @ k1_xboole_0) = (k5_xboole_0 @ X0 @ k1_xboole_0))),
% 0.52/0.71      inference('sup+', [status(thm)], ['16', '17'])).
% 0.52/0.71  thf(t5_boole, axiom,
% 0.52/0.71    (![A:$i]: ( ( k5_xboole_0 @ A @ k1_xboole_0 ) = ( A ) ))).
% 0.52/0.71  thf('19', plain, (![X13 : $i]: ((k5_xboole_0 @ X13 @ k1_xboole_0) = (X13))),
% 0.52/0.71      inference('cnf', [status(esa)], [t5_boole])).
% 0.52/0.71  thf('20', plain, (![X0 : $i]: ((k4_xboole_0 @ X0 @ k1_xboole_0) = (X0))),
% 0.52/0.71      inference('demod', [status(thm)], ['18', '19'])).
% 0.52/0.71  thf(t48_xboole_1, axiom,
% 0.52/0.71    (![A:$i,B:$i]:
% 0.52/0.71     ( ( k4_xboole_0 @ A @ ( k4_xboole_0 @ A @ B ) ) = ( k3_xboole_0 @ A @ B ) ))).
% 0.52/0.71  thf('21', plain,
% 0.52/0.71      (![X11 : $i, X12 : $i]:
% 0.52/0.71         ((k4_xboole_0 @ X11 @ (k4_xboole_0 @ X11 @ X12))
% 0.52/0.71           = (k3_xboole_0 @ X11 @ X12))),
% 0.52/0.71      inference('cnf', [status(esa)], [t48_xboole_1])).
% 0.52/0.72  thf('22', plain,
% 0.52/0.72      (![X0 : $i]: ((k4_xboole_0 @ X0 @ X0) = (k3_xboole_0 @ X0 @ k1_xboole_0))),
% 0.52/0.72      inference('sup+', [status(thm)], ['20', '21'])).
% 0.52/0.72  thf('23', plain,
% 0.52/0.72      (![X10 : $i]: ((k3_xboole_0 @ X10 @ k1_xboole_0) = (k1_xboole_0))),
% 0.52/0.72      inference('cnf', [status(esa)], [t2_boole])).
% 0.52/0.72  thf('24', plain, (![X0 : $i]: ((k4_xboole_0 @ X0 @ X0) = (k1_xboole_0))),
% 0.52/0.72      inference('demod', [status(thm)], ['22', '23'])).
% 0.52/0.72  thf('25', plain, (![X0 : $i]: ((k5_xboole_0 @ X0 @ X0) = (k1_xboole_0))),
% 0.52/0.72      inference('sup+', [status(thm)], ['15', '24'])).
% 0.52/0.72  thf('26', plain,
% 0.52/0.72      (((k4_xboole_0 @ (k1_tarski @ sk_A) @ (k2_tarski @ sk_C @ sk_D_1))
% 0.52/0.72         = (k1_xboole_0))),
% 0.52/0.72      inference('demod', [status(thm)], ['12', '25'])).
% 0.52/0.72  thf(t98_xboole_1, axiom,
% 0.52/0.72    (![A:$i,B:$i]:
% 0.52/0.72     ( ( k2_xboole_0 @ A @ B ) = ( k5_xboole_0 @ A @ ( k4_xboole_0 @ B @ A ) ) ))).
% 0.52/0.72  thf('27', plain,
% 0.52/0.72      (![X14 : $i, X15 : $i]:
% 0.52/0.72         ((k2_xboole_0 @ X14 @ X15)
% 0.52/0.72           = (k5_xboole_0 @ X14 @ (k4_xboole_0 @ X15 @ X14)))),
% 0.52/0.72      inference('cnf', [status(esa)], [t98_xboole_1])).
% 0.52/0.72  thf('28', plain,
% 0.52/0.72      (((k2_xboole_0 @ (k2_tarski @ sk_C @ sk_D_1) @ (k1_tarski @ sk_A))
% 0.52/0.72         = (k5_xboole_0 @ (k2_tarski @ sk_C @ sk_D_1) @ k1_xboole_0))),
% 0.52/0.72      inference('sup+', [status(thm)], ['26', '27'])).
% 0.52/0.72  thf('29', plain, (![X13 : $i]: ((k5_xboole_0 @ X13 @ k1_xboole_0) = (X13))),
% 0.52/0.72      inference('cnf', [status(esa)], [t5_boole])).
% 0.52/0.72  thf('30', plain,
% 0.52/0.72      (((k2_xboole_0 @ (k2_tarski @ sk_C @ sk_D_1) @ (k1_tarski @ sk_A))
% 0.52/0.72         = (k2_tarski @ sk_C @ sk_D_1))),
% 0.52/0.72      inference('demod', [status(thm)], ['28', '29'])).
% 0.52/0.72  thf(t70_enumset1, axiom,
% 0.52/0.72    (![A:$i,B:$i]: ( ( k1_enumset1 @ A @ A @ B ) = ( k2_tarski @ A @ B ) ))).
% 0.52/0.72  thf('31', plain,
% 0.52/0.72      (![X39 : $i, X40 : $i]:
% 0.52/0.72         ((k1_enumset1 @ X39 @ X39 @ X40) = (k2_tarski @ X39 @ X40))),
% 0.52/0.72      inference('cnf', [status(esa)], [t70_enumset1])).
% 0.52/0.72  thf(t46_enumset1, axiom,
% 0.52/0.72    (![A:$i,B:$i,C:$i,D:$i]:
% 0.52/0.72     ( ( k2_enumset1 @ A @ B @ C @ D ) =
% 0.52/0.72       ( k2_xboole_0 @ ( k1_enumset1 @ A @ B @ C ) @ ( k1_tarski @ D ) ) ))).
% 0.52/0.72  thf('32', plain,
% 0.52/0.72      (![X34 : $i, X35 : $i, X36 : $i, X37 : $i]:
% 0.52/0.72         ((k2_enumset1 @ X34 @ X35 @ X36 @ X37)
% 0.52/0.72           = (k2_xboole_0 @ (k1_enumset1 @ X34 @ X35 @ X36) @ (k1_tarski @ X37)))),
% 0.52/0.72      inference('cnf', [status(esa)], [t46_enumset1])).
% 0.52/0.72  thf('33', plain,
% 0.52/0.72      (![X0 : $i, X1 : $i, X2 : $i]:
% 0.52/0.72         ((k2_enumset1 @ X1 @ X1 @ X0 @ X2)
% 0.52/0.72           = (k2_xboole_0 @ (k2_tarski @ X1 @ X0) @ (k1_tarski @ X2)))),
% 0.52/0.72      inference('sup+', [status(thm)], ['31', '32'])).
% 0.52/0.72  thf(t71_enumset1, axiom,
% 0.52/0.72    (![A:$i,B:$i,C:$i]:
% 0.52/0.72     ( ( k2_enumset1 @ A @ A @ B @ C ) = ( k1_enumset1 @ A @ B @ C ) ))).
% 0.52/0.72  thf('34', plain,
% 0.52/0.72      (![X41 : $i, X42 : $i, X43 : $i]:
% 0.52/0.72         ((k2_enumset1 @ X41 @ X41 @ X42 @ X43)
% 0.52/0.72           = (k1_enumset1 @ X41 @ X42 @ X43))),
% 0.52/0.72      inference('cnf', [status(esa)], [t71_enumset1])).
% 0.52/0.72  thf(t98_enumset1, axiom,
% 0.52/0.72    (![A:$i,B:$i,C:$i]:
% 0.52/0.72     ( ( k1_enumset1 @ A @ B @ C ) = ( k1_enumset1 @ A @ C @ B ) ))).
% 0.52/0.72  thf('35', plain,
% 0.52/0.72      (![X66 : $i, X67 : $i, X68 : $i]:
% 0.52/0.72         ((k1_enumset1 @ X66 @ X68 @ X67) = (k1_enumset1 @ X66 @ X67 @ X68))),
% 0.52/0.72      inference('cnf', [status(esa)], [t98_enumset1])).
% 0.52/0.72  thf('36', plain,
% 0.52/0.72      (![X0 : $i, X1 : $i, X2 : $i]:
% 0.52/0.72         ((k1_enumset1 @ X2 @ X0 @ X1) = (k2_enumset1 @ X2 @ X2 @ X1 @ X0))),
% 0.52/0.72      inference('sup+', [status(thm)], ['34', '35'])).
% 0.52/0.72  thf('37', plain,
% 0.52/0.72      (((k1_enumset1 @ sk_C @ sk_A @ sk_D_1) = (k2_tarski @ sk_C @ sk_D_1))),
% 0.52/0.72      inference('demod', [status(thm)], ['30', '33', '36'])).
% 0.52/0.72  thf(d1_enumset1, axiom,
% 0.52/0.72    (![A:$i,B:$i,C:$i,D:$i]:
% 0.52/0.72     ( ( ( D ) = ( k1_enumset1 @ A @ B @ C ) ) <=>
% 0.52/0.72       ( ![E:$i]:
% 0.52/0.72         ( ( r2_hidden @ E @ D ) <=>
% 0.52/0.72           ( ~( ( ( E ) != ( C ) ) & ( ( E ) != ( B ) ) & ( ( E ) != ( A ) ) ) ) ) ) ))).
% 0.52/0.72  thf(zf_stmt_1, type, zip_tseitin_0 : $i > $i > $i > $i > $o).
% 0.52/0.72  thf(zf_stmt_2, axiom,
% 0.52/0.72    (![E:$i,C:$i,B:$i,A:$i]:
% 0.52/0.72     ( ( zip_tseitin_0 @ E @ C @ B @ A ) <=>
% 0.52/0.72       ( ( ( E ) != ( A ) ) & ( ( E ) != ( B ) ) & ( ( E ) != ( C ) ) ) ))).
% 0.52/0.72  thf(zf_stmt_3, axiom,
% 0.52/0.72    (![A:$i,B:$i,C:$i,D:$i]:
% 0.52/0.72     ( ( ( D ) = ( k1_enumset1 @ A @ B @ C ) ) <=>
% 0.52/0.72       ( ![E:$i]:
% 0.52/0.72         ( ( r2_hidden @ E @ D ) <=> ( ~( zip_tseitin_0 @ E @ C @ B @ A ) ) ) ) ))).
% 0.52/0.72  thf('38', plain,
% 0.52/0.72      (![X21 : $i, X22 : $i, X23 : $i, X24 : $i, X25 : $i]:
% 0.52/0.72         ((zip_tseitin_0 @ X21 @ X22 @ X23 @ X24)
% 0.52/0.72          | (r2_hidden @ X21 @ X25)
% 0.52/0.72          | ((X25) != (k1_enumset1 @ X24 @ X23 @ X22)))),
% 0.52/0.72      inference('cnf', [status(esa)], [zf_stmt_3])).
% 0.52/0.72  thf('39', plain,
% 0.52/0.72      (![X21 : $i, X22 : $i, X23 : $i, X24 : $i]:
% 0.52/0.72         ((r2_hidden @ X21 @ (k1_enumset1 @ X24 @ X23 @ X22))
% 0.52/0.72          | (zip_tseitin_0 @ X21 @ X22 @ X23 @ X24))),
% 0.52/0.72      inference('simplify', [status(thm)], ['38'])).
% 0.52/0.72  thf('40', plain,
% 0.52/0.72      (![X0 : $i]:
% 0.52/0.72         ((r2_hidden @ X0 @ (k2_tarski @ sk_C @ sk_D_1))
% 0.52/0.72          | (zip_tseitin_0 @ X0 @ sk_D_1 @ sk_A @ sk_C))),
% 0.52/0.72      inference('sup+', [status(thm)], ['37', '39'])).
% 0.52/0.72  thf(d2_tarski, axiom,
% 0.52/0.72    (![A:$i,B:$i,C:$i]:
% 0.52/0.72     ( ( ( C ) = ( k2_tarski @ A @ B ) ) <=>
% 0.52/0.72       ( ![D:$i]:
% 0.52/0.72         ( ( r2_hidden @ D @ C ) <=> ( ( ( D ) = ( A ) ) | ( ( D ) = ( B ) ) ) ) ) ))).
% 0.52/0.72  thf('41', plain,
% 0.52/0.72      (![X28 : $i, X30 : $i, X31 : $i, X32 : $i]:
% 0.52/0.72         (~ (r2_hidden @ X32 @ X30)
% 0.52/0.72          | ((X32) = (X31))
% 0.52/0.72          | ((X32) = (X28))
% 0.52/0.72          | ((X30) != (k2_tarski @ X31 @ X28)))),
% 0.52/0.72      inference('cnf', [status(esa)], [d2_tarski])).
% 0.52/0.72  thf('42', plain,
% 0.52/0.72      (![X28 : $i, X31 : $i, X32 : $i]:
% 0.52/0.72         (((X32) = (X28))
% 0.52/0.72          | ((X32) = (X31))
% 0.52/0.72          | ~ (r2_hidden @ X32 @ (k2_tarski @ X31 @ X28)))),
% 0.52/0.72      inference('simplify', [status(thm)], ['41'])).
% 0.52/0.72  thf('43', plain,
% 0.52/0.72      (![X0 : $i]:
% 0.52/0.72         ((zip_tseitin_0 @ X0 @ sk_D_1 @ sk_A @ sk_C)
% 0.52/0.72          | ((X0) = (sk_C))
% 0.52/0.72          | ((X0) = (sk_D_1)))),
% 0.52/0.72      inference('sup-', [status(thm)], ['40', '42'])).
% 0.52/0.72  thf('44', plain,
% 0.52/0.72      (![X16 : $i, X17 : $i, X18 : $i, X19 : $i]:
% 0.52/0.72         (((X17) != (X19)) | ~ (zip_tseitin_0 @ X17 @ X18 @ X19 @ X16))),
% 0.52/0.72      inference('cnf', [status(esa)], [zf_stmt_2])).
% 0.52/0.72  thf('45', plain,
% 0.52/0.72      (![X16 : $i, X18 : $i, X19 : $i]:
% 0.52/0.72         ~ (zip_tseitin_0 @ X19 @ X18 @ X19 @ X16)),
% 0.52/0.72      inference('simplify', [status(thm)], ['44'])).
% 0.52/0.72  thf('46', plain, ((((sk_A) = (sk_D_1)) | ((sk_A) = (sk_C)))),
% 0.52/0.72      inference('sup-', [status(thm)], ['43', '45'])).
% 0.52/0.72  thf('47', plain, (((sk_A) != (sk_C))),
% 0.52/0.72      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.52/0.72  thf('48', plain, (((sk_A) != (sk_D_1))),
% 0.52/0.72      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.52/0.72  thf('49', plain, ($false),
% 0.52/0.72      inference('simplify_reflect-', [status(thm)], ['46', '47', '48'])).
% 0.52/0.72  
% 0.52/0.72  % SZS output end Refutation
% 0.52/0.72  
% 0.52/0.72  % Zipperpin 1.5 exiting
%------------------------------------------------------------------------------
