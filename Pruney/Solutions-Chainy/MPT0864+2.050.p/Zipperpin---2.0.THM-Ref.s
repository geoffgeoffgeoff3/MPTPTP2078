%------------------------------------------------------------------------------
% File       : Zipperpin---2.0
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_portfolio.sh /export/starexec/sandbox2/benchmark/theBenchmark.p /export/starexec/sandbox2/tmp/tmp.FJ7PgNuq4x

% Computer   : n011.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 13:51:06 EST 2020

% Result     : Theorem 0.35s
% Output     : Refutation 0.35s
% Verified   : 
% Statistics : Number of formulae       :   98 ( 176 expanded)
%              Number of leaves         :   34 (  65 expanded)
%              Depth                    :   13
%              Number of atoms          :  730 (1518 expanded)
%              Number of equality atoms :  103 ( 239 expanded)
%              Maximal formula depth    :   17 (   6 average)

% Comments   : 
%------------------------------------------------------------------------------
thf(zip_tseitin_0_type,type,(
    zip_tseitin_0: $i > $i > $i > $i > $i > $i > $o )).

thf(k2_zfmisc_1_type,type,(
    k2_zfmisc_1: $i > $i > $i )).

thf(sk_A_type,type,(
    sk_A: $i )).

thf(sk_C_type,type,(
    sk_C: $i )).

thf(k2_enumset1_type,type,(
    k2_enumset1: $i > $i > $i > $i > $i )).

thf(k4_xboole_0_type,type,(
    k4_xboole_0: $i > $i > $i )).

thf(k4_tarski_type,type,(
    k4_tarski: $i > $i > $i )).

thf(k2_mcart_1_type,type,(
    k2_mcart_1: $i > $i )).

thf(k1_mcart_1_type,type,(
    k1_mcart_1: $i > $i )).

thf(k2_xboole_0_type,type,(
    k2_xboole_0: $i > $i > $i )).

thf(k1_tarski_type,type,(
    k1_tarski: $i > $i )).

thf(k1_enumset1_type,type,(
    k1_enumset1: $i > $i > $i > $i )).

thf(r2_hidden_type,type,(
    r2_hidden: $i > $i > $o )).

thf(sk_B_type,type,(
    sk_B: $i )).

thf(r1_tarski_type,type,(
    r1_tarski: $i > $i > $o )).

thf(k2_tarski_type,type,(
    k2_tarski: $i > $i > $i )).

thf(k3_enumset1_type,type,(
    k3_enumset1: $i > $i > $i > $i > $i > $i )).

thf(k1_xboole_0_type,type,(
    k1_xboole_0: $i )).

thf(t69_enumset1,axiom,(
    ! [A: $i] :
      ( ( k2_tarski @ A @ A )
      = ( k1_tarski @ A ) ) )).

thf('0',plain,(
    ! [X6: $i] :
      ( ( k2_tarski @ X6 @ X6 )
      = ( k1_tarski @ X6 ) ) ),
    inference(cnf,[status(esa)],[t69_enumset1])).

thf(t20_mcart_1,conjecture,(
    ! [A: $i] :
      ( ? [B: $i,C: $i] :
          ( A
          = ( k4_tarski @ B @ C ) )
     => ( ( A
         != ( k1_mcart_1 @ A ) )
        & ( A
         != ( k2_mcart_1 @ A ) ) ) ) )).

thf(zf_stmt_0,negated_conjecture,(
    ~ ! [A: $i] :
        ( ? [B: $i,C: $i] :
            ( A
            = ( k4_tarski @ B @ C ) )
       => ( ( A
           != ( k1_mcart_1 @ A ) )
          & ( A
           != ( k2_mcart_1 @ A ) ) ) ) ),
    inference('cnf.neg',[status(esa)],[t20_mcart_1])).

thf('1',plain,
    ( sk_A
    = ( k4_tarski @ sk_B @ sk_C ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(t7_mcart_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( ( k2_mcart_1 @ ( k4_tarski @ A @ B ) )
        = B )
      & ( ( k1_mcart_1 @ ( k4_tarski @ A @ B ) )
        = A ) ) )).

thf('2',plain,(
    ! [X66: $i,X68: $i] :
      ( ( k2_mcart_1 @ ( k4_tarski @ X66 @ X68 ) )
      = X68 ) ),
    inference(cnf,[status(esa)],[t7_mcart_1])).

thf('3',plain,
    ( ( k2_mcart_1 @ sk_A )
    = sk_C ),
    inference('sup+',[status(thm)],['1','2'])).

thf('4',plain,
    ( ( sk_A
      = ( k1_mcart_1 @ sk_A ) )
    | ( sk_A
      = ( k2_mcart_1 @ sk_A ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('5',plain,
    ( ( sk_A
      = ( k2_mcart_1 @ sk_A ) )
   <= ( sk_A
      = ( k2_mcart_1 @ sk_A ) ) ),
    inference(split,[status(esa)],['4'])).

thf('6',plain,
    ( ( sk_A = sk_C )
   <= ( sk_A
      = ( k2_mcart_1 @ sk_A ) ) ),
    inference('sup+',[status(thm)],['3','5'])).

thf('7',plain,
    ( sk_A
    = ( k4_tarski @ sk_B @ sk_C ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('8',plain,
    ( ( sk_A
      = ( k4_tarski @ sk_B @ sk_A ) )
   <= ( sk_A
      = ( k2_mcart_1 @ sk_A ) ) ),
    inference('sup+',[status(thm)],['6','7'])).

thf(t36_zfmisc_1,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( ( k2_zfmisc_1 @ ( k2_tarski @ A @ B ) @ ( k1_tarski @ C ) )
        = ( k2_tarski @ ( k4_tarski @ A @ C ) @ ( k4_tarski @ B @ C ) ) )
      & ( ( k2_zfmisc_1 @ ( k1_tarski @ A ) @ ( k2_tarski @ B @ C ) )
        = ( k2_tarski @ ( k4_tarski @ A @ B ) @ ( k4_tarski @ A @ C ) ) ) ) )).

thf('9',plain,(
    ! [X44: $i,X45: $i,X46: $i] :
      ( ( k2_zfmisc_1 @ ( k1_tarski @ X44 ) @ ( k2_tarski @ X45 @ X46 ) )
      = ( k2_tarski @ ( k4_tarski @ X44 @ X45 ) @ ( k4_tarski @ X44 @ X46 ) ) ) ),
    inference(cnf,[status(esa)],[t36_zfmisc_1])).

thf('10',plain,
    ( ! [X0: $i] :
        ( ( k2_zfmisc_1 @ ( k1_tarski @ sk_B ) @ ( k2_tarski @ sk_A @ X0 ) )
        = ( k2_tarski @ sk_A @ ( k4_tarski @ sk_B @ X0 ) ) )
   <= ( sk_A
      = ( k2_mcart_1 @ sk_A ) ) ),
    inference('sup+',[status(thm)],['8','9'])).

thf('11',plain,
    ( ( ( k2_zfmisc_1 @ ( k1_tarski @ sk_B ) @ ( k1_tarski @ sk_A ) )
      = ( k2_tarski @ sk_A @ ( k4_tarski @ sk_B @ sk_A ) ) )
   <= ( sk_A
      = ( k2_mcart_1 @ sk_A ) ) ),
    inference('sup+',[status(thm)],['0','10'])).

thf('12',plain,
    ( ( sk_A
      = ( k4_tarski @ sk_B @ sk_A ) )
   <= ( sk_A
      = ( k2_mcart_1 @ sk_A ) ) ),
    inference('sup+',[status(thm)],['6','7'])).

thf('13',plain,(
    ! [X6: $i] :
      ( ( k2_tarski @ X6 @ X6 )
      = ( k1_tarski @ X6 ) ) ),
    inference(cnf,[status(esa)],[t69_enumset1])).

thf('14',plain,
    ( ( ( k2_zfmisc_1 @ ( k1_tarski @ sk_B ) @ ( k1_tarski @ sk_A ) )
      = ( k1_tarski @ sk_A ) )
   <= ( sk_A
      = ( k2_mcart_1 @ sk_A ) ) ),
    inference(demod,[status(thm)],['11','12','13'])).

thf(t135_zfmisc_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( ( r1_tarski @ A @ ( k2_zfmisc_1 @ A @ B ) )
        | ( r1_tarski @ A @ ( k2_zfmisc_1 @ B @ A ) ) )
     => ( A = k1_xboole_0 ) ) )).

thf('15',plain,(
    ! [X39: $i,X40: $i] :
      ( ( X39 = k1_xboole_0 )
      | ~ ( r1_tarski @ X39 @ ( k2_zfmisc_1 @ X40 @ X39 ) ) ) ),
    inference(cnf,[status(esa)],[t135_zfmisc_1])).

thf('16',plain,
    ( ( ~ ( r1_tarski @ ( k1_tarski @ sk_A ) @ ( k1_tarski @ sk_A ) )
      | ( ( k1_tarski @ sk_A )
        = k1_xboole_0 ) )
   <= ( sk_A
      = ( k2_mcart_1 @ sk_A ) ) ),
    inference('sup-',[status(thm)],['14','15'])).

thf(t20_zfmisc_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( ( k4_xboole_0 @ ( k1_tarski @ A ) @ ( k1_tarski @ B ) )
        = ( k1_tarski @ A ) )
    <=> ( A != B ) ) )).

thf('17',plain,(
    ! [X41: $i,X42: $i] :
      ( ( X42 != X41 )
      | ( ( k4_xboole_0 @ ( k1_tarski @ X42 ) @ ( k1_tarski @ X41 ) )
       != ( k1_tarski @ X42 ) ) ) ),
    inference(cnf,[status(esa)],[t20_zfmisc_1])).

thf('18',plain,(
    ! [X41: $i] :
      ( ( k4_xboole_0 @ ( k1_tarski @ X41 ) @ ( k1_tarski @ X41 ) )
     != ( k1_tarski @ X41 ) ) ),
    inference(simplify,[status(thm)],['17'])).

thf(idempotence_k2_xboole_0,axiom,(
    ! [A: $i,B: $i] :
      ( ( k2_xboole_0 @ A @ A )
      = A ) )).

thf('19',plain,(
    ! [X0: $i] :
      ( ( k2_xboole_0 @ X0 @ X0 )
      = X0 ) ),
    inference(cnf,[status(esa)],[idempotence_k2_xboole_0])).

thf(t46_xboole_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( k4_xboole_0 @ A @ ( k2_xboole_0 @ A @ B ) )
      = k1_xboole_0 ) )).

thf('20',plain,(
    ! [X4: $i,X5: $i] :
      ( ( k4_xboole_0 @ X4 @ ( k2_xboole_0 @ X4 @ X5 ) )
      = k1_xboole_0 ) ),
    inference(cnf,[status(esa)],[t46_xboole_1])).

thf('21',plain,(
    ! [X0: $i] :
      ( ( k4_xboole_0 @ X0 @ X0 )
      = k1_xboole_0 ) ),
    inference('sup+',[status(thm)],['19','20'])).

thf('22',plain,(
    ! [X41: $i] :
      ( k1_xboole_0
     != ( k1_tarski @ X41 ) ) ),
    inference(demod,[status(thm)],['18','21'])).

thf('23',plain,
    ( ~ ( r1_tarski @ ( k1_tarski @ sk_A ) @ ( k1_tarski @ sk_A ) )
   <= ( sk_A
      = ( k2_mcart_1 @ sk_A ) ) ),
    inference(clc,[status(thm)],['16','22'])).

thf(t70_enumset1,axiom,(
    ! [A: $i,B: $i] :
      ( ( k1_enumset1 @ A @ A @ B )
      = ( k2_tarski @ A @ B ) ) )).

thf('24',plain,(
    ! [X7: $i,X8: $i] :
      ( ( k1_enumset1 @ X7 @ X7 @ X8 )
      = ( k2_tarski @ X7 @ X8 ) ) ),
    inference(cnf,[status(esa)],[t70_enumset1])).

thf('25',plain,(
    ! [X6: $i] :
      ( ( k2_tarski @ X6 @ X6 )
      = ( k1_tarski @ X6 ) ) ),
    inference(cnf,[status(esa)],[t69_enumset1])).

thf('26',plain,(
    ! [X0: $i] :
      ( ( k1_enumset1 @ X0 @ X0 @ X0 )
      = ( k1_tarski @ X0 ) ) ),
    inference('sup+',[status(thm)],['24','25'])).

thf(t71_enumset1,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( k2_enumset1 @ A @ A @ B @ C )
      = ( k1_enumset1 @ A @ B @ C ) ) )).

thf('27',plain,(
    ! [X9: $i,X10: $i,X11: $i] :
      ( ( k2_enumset1 @ X9 @ X9 @ X10 @ X11 )
      = ( k1_enumset1 @ X9 @ X10 @ X11 ) ) ),
    inference(cnf,[status(esa)],[t71_enumset1])).

thf(t72_enumset1,axiom,(
    ! [A: $i,B: $i,C: $i,D: $i] :
      ( ( k3_enumset1 @ A @ A @ B @ C @ D )
      = ( k2_enumset1 @ A @ B @ C @ D ) ) )).

thf('28',plain,(
    ! [X12: $i,X13: $i,X14: $i,X15: $i] :
      ( ( k3_enumset1 @ X12 @ X12 @ X13 @ X14 @ X15 )
      = ( k2_enumset1 @ X12 @ X13 @ X14 @ X15 ) ) ),
    inference(cnf,[status(esa)],[t72_enumset1])).

thf(d3_enumset1,axiom,(
    ! [A: $i,B: $i,C: $i,D: $i,E: $i,F: $i] :
      ( ( F
        = ( k3_enumset1 @ A @ B @ C @ D @ E ) )
    <=> ! [G: $i] :
          ( ( r2_hidden @ G @ F )
        <=> ~ ( ( G != E )
              & ( G != D )
              & ( G != C )
              & ( G != B )
              & ( G != A ) ) ) ) )).

thf(zf_stmt_1,type,(
    zip_tseitin_0: $i > $i > $i > $i > $i > $i > $o )).

thf(zf_stmt_2,axiom,(
    ! [G: $i,E: $i,D: $i,C: $i,B: $i,A: $i] :
      ( ( zip_tseitin_0 @ G @ E @ D @ C @ B @ A )
    <=> ( ( G != A )
        & ( G != B )
        & ( G != C )
        & ( G != D )
        & ( G != E ) ) ) )).

thf(zf_stmt_3,axiom,(
    ! [A: $i,B: $i,C: $i,D: $i,E: $i,F: $i] :
      ( ( F
        = ( k3_enumset1 @ A @ B @ C @ D @ E ) )
    <=> ! [G: $i] :
          ( ( r2_hidden @ G @ F )
        <=> ~ ( zip_tseitin_0 @ G @ E @ D @ C @ B @ A ) ) ) )).

thf('29',plain,(
    ! [X55: $i,X56: $i,X57: $i,X58: $i,X59: $i,X60: $i,X61: $i] :
      ( ( zip_tseitin_0 @ X55 @ X56 @ X57 @ X58 @ X59 @ X60 )
      | ( r2_hidden @ X55 @ X61 )
      | ( X61
       != ( k3_enumset1 @ X60 @ X59 @ X58 @ X57 @ X56 ) ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_3])).

thf('30',plain,(
    ! [X55: $i,X56: $i,X57: $i,X58: $i,X59: $i,X60: $i] :
      ( ( r2_hidden @ X55 @ ( k3_enumset1 @ X60 @ X59 @ X58 @ X57 @ X56 ) )
      | ( zip_tseitin_0 @ X55 @ X56 @ X57 @ X58 @ X59 @ X60 ) ) ),
    inference(simplify,[status(thm)],['29'])).

thf('31',plain,(
    ! [X0: $i,X1: $i,X2: $i,X3: $i,X4: $i] :
      ( ( r2_hidden @ X4 @ ( k2_enumset1 @ X3 @ X2 @ X1 @ X0 ) )
      | ( zip_tseitin_0 @ X4 @ X0 @ X1 @ X2 @ X3 @ X3 ) ) ),
    inference('sup+',[status(thm)],['28','30'])).

thf('32',plain,(
    ! [X48: $i,X49: $i,X50: $i,X51: $i,X52: $i,X53: $i] :
      ( ( X49 != X48 )
      | ~ ( zip_tseitin_0 @ X49 @ X50 @ X51 @ X52 @ X53 @ X48 ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_2])).

thf('33',plain,(
    ! [X48: $i,X50: $i,X51: $i,X52: $i,X53: $i] :
      ~ ( zip_tseitin_0 @ X48 @ X50 @ X51 @ X52 @ X53 @ X48 ) ),
    inference(simplify,[status(thm)],['32'])).

thf('34',plain,(
    ! [X0: $i,X1: $i,X2: $i,X3: $i] :
      ( r2_hidden @ X0 @ ( k2_enumset1 @ X0 @ X1 @ X2 @ X3 ) ) ),
    inference('sup-',[status(thm)],['31','33'])).

thf('35',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( r2_hidden @ X2 @ ( k1_enumset1 @ X2 @ X1 @ X0 ) ) ),
    inference('sup+',[status(thm)],['27','34'])).

thf('36',plain,(
    ! [X0: $i] :
      ( r2_hidden @ X0 @ ( k1_tarski @ X0 ) ) ),
    inference('sup+',[status(thm)],['26','35'])).

thf(l1_zfmisc_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( r1_tarski @ ( k1_tarski @ A ) @ B )
    <=> ( r2_hidden @ A @ B ) ) )).

thf('37',plain,(
    ! [X34: $i,X36: $i] :
      ( ( r1_tarski @ ( k1_tarski @ X34 ) @ X36 )
      | ~ ( r2_hidden @ X34 @ X36 ) ) ),
    inference(cnf,[status(esa)],[l1_zfmisc_1])).

thf('38',plain,(
    ! [X0: $i] :
      ( r1_tarski @ ( k1_tarski @ X0 ) @ ( k1_tarski @ X0 ) ) ),
    inference('sup-',[status(thm)],['36','37'])).

thf('39',plain,
    ( $false
   <= ( sk_A
      = ( k2_mcart_1 @ sk_A ) ) ),
    inference(demod,[status(thm)],['23','38'])).

thf('40',plain,(
    ! [X0: $i] :
      ( r1_tarski @ ( k1_tarski @ X0 ) @ ( k1_tarski @ X0 ) ) ),
    inference('sup-',[status(thm)],['36','37'])).

thf('41',plain,(
    ! [X6: $i] :
      ( ( k2_tarski @ X6 @ X6 )
      = ( k1_tarski @ X6 ) ) ),
    inference(cnf,[status(esa)],[t69_enumset1])).

thf('42',plain,
    ( sk_A
    = ( k4_tarski @ sk_B @ sk_C ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('43',plain,(
    ! [X66: $i,X67: $i] :
      ( ( k1_mcart_1 @ ( k4_tarski @ X66 @ X67 ) )
      = X66 ) ),
    inference(cnf,[status(esa)],[t7_mcart_1])).

thf('44',plain,
    ( ( k1_mcart_1 @ sk_A )
    = sk_B ),
    inference('sup+',[status(thm)],['42','43'])).

thf('45',plain,
    ( ( sk_A
      = ( k1_mcart_1 @ sk_A ) )
   <= ( sk_A
      = ( k1_mcart_1 @ sk_A ) ) ),
    inference(split,[status(esa)],['4'])).

thf('46',plain,
    ( ( sk_A = sk_B )
   <= ( sk_A
      = ( k1_mcart_1 @ sk_A ) ) ),
    inference('sup+',[status(thm)],['44','45'])).

thf('47',plain,
    ( sk_A
    = ( k4_tarski @ sk_B @ sk_C ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('48',plain,
    ( ( sk_A
      = ( k4_tarski @ sk_A @ sk_C ) )
   <= ( sk_A
      = ( k1_mcart_1 @ sk_A ) ) ),
    inference('sup+',[status(thm)],['46','47'])).

thf('49',plain,(
    ! [X44: $i,X45: $i,X46: $i] :
      ( ( k2_zfmisc_1 @ ( k1_tarski @ X44 ) @ ( k2_tarski @ X45 @ X46 ) )
      = ( k2_tarski @ ( k4_tarski @ X44 @ X45 ) @ ( k4_tarski @ X44 @ X46 ) ) ) ),
    inference(cnf,[status(esa)],[t36_zfmisc_1])).

thf('50',plain,
    ( ! [X0: $i] :
        ( ( k2_zfmisc_1 @ ( k1_tarski @ sk_A ) @ ( k2_tarski @ sk_C @ X0 ) )
        = ( k2_tarski @ sk_A @ ( k4_tarski @ sk_A @ X0 ) ) )
   <= ( sk_A
      = ( k1_mcart_1 @ sk_A ) ) ),
    inference('sup+',[status(thm)],['48','49'])).

thf('51',plain,
    ( ( ( k2_zfmisc_1 @ ( k1_tarski @ sk_A ) @ ( k1_tarski @ sk_C ) )
      = ( k2_tarski @ sk_A @ ( k4_tarski @ sk_A @ sk_C ) ) )
   <= ( sk_A
      = ( k1_mcart_1 @ sk_A ) ) ),
    inference('sup+',[status(thm)],['41','50'])).

thf('52',plain,
    ( ( sk_A
      = ( k4_tarski @ sk_A @ sk_C ) )
   <= ( sk_A
      = ( k1_mcart_1 @ sk_A ) ) ),
    inference('sup+',[status(thm)],['46','47'])).

thf('53',plain,(
    ! [X6: $i] :
      ( ( k2_tarski @ X6 @ X6 )
      = ( k1_tarski @ X6 ) ) ),
    inference(cnf,[status(esa)],[t69_enumset1])).

thf('54',plain,
    ( ( ( k2_zfmisc_1 @ ( k1_tarski @ sk_A ) @ ( k1_tarski @ sk_C ) )
      = ( k1_tarski @ sk_A ) )
   <= ( sk_A
      = ( k1_mcart_1 @ sk_A ) ) ),
    inference(demod,[status(thm)],['51','52','53'])).

thf('55',plain,(
    ! [X39: $i,X40: $i] :
      ( ( X39 = k1_xboole_0 )
      | ~ ( r1_tarski @ X39 @ ( k2_zfmisc_1 @ X39 @ X40 ) ) ) ),
    inference(cnf,[status(esa)],[t135_zfmisc_1])).

thf('56',plain,
    ( ( ~ ( r1_tarski @ ( k1_tarski @ sk_A ) @ ( k1_tarski @ sk_A ) )
      | ( ( k1_tarski @ sk_A )
        = k1_xboole_0 ) )
   <= ( sk_A
      = ( k1_mcart_1 @ sk_A ) ) ),
    inference('sup-',[status(thm)],['54','55'])).

thf('57',plain,(
    ! [X41: $i] :
      ( k1_xboole_0
     != ( k1_tarski @ X41 ) ) ),
    inference(demod,[status(thm)],['18','21'])).

thf('58',plain,
    ( ~ ( r1_tarski @ ( k1_tarski @ sk_A ) @ ( k1_tarski @ sk_A ) )
   <= ( sk_A
      = ( k1_mcart_1 @ sk_A ) ) ),
    inference(clc,[status(thm)],['56','57'])).

thf('59',plain,(
    sk_A
 != ( k1_mcart_1 @ sk_A ) ),
    inference('sup-',[status(thm)],['40','58'])).

thf('60',plain,
    ( ( sk_A
      = ( k2_mcart_1 @ sk_A ) )
    | ( sk_A
      = ( k1_mcart_1 @ sk_A ) ) ),
    inference(split,[status(esa)],['4'])).

thf('61',plain,
    ( sk_A
    = ( k2_mcart_1 @ sk_A ) ),
    inference('sat_resolution*',[status(thm)],['59','60'])).

thf('62',plain,(
    $false ),
    inference(simpl_trail,[status(thm)],['39','61'])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.06/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.06/0.13  % Command    : run_portfolio.sh /export/starexec/sandbox2/benchmark/theBenchmark.p /export/starexec/sandbox2/tmp/tmp.FJ7PgNuq4x
% 0.14/0.34  % Computer   : n011.cluster.edu
% 0.14/0.34  % Model      : x86_64 x86_64
% 0.14/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.14/0.34  % Memory     : 8042.1875MB
% 0.14/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.14/0.34  % CPULimit   : 60
% 0.14/0.34  % DateTime   : Tue Dec  1 12:37:27 EST 2020
% 0.14/0.34  % CPUTime    : 
% 0.14/0.34  % Running portfolio for 600 s
% 0.14/0.34  % File         : /export/starexec/sandbox2/benchmark/theBenchmark.p
% 0.14/0.34  % Number of cores: 8
% 0.14/0.34  % Python version: Python 3.6.8
% 0.14/0.35  % Running in FO mode
% 0.35/0.54  % Running /export/starexec/sandbox2/solver/bin/fo/fo7.sh for 78
% 0.35/0.54  % Solved by: fo/fo7.sh
% 0.35/0.54  To remain in the chosen logic fragment, unification with booleans has been disabled.
% 0.35/0.54  % done 511 iterations in 0.094s
% 0.35/0.54  % SZS status Theorem for '/export/starexec/sandbox2/benchmark/theBenchmark.p'
% 0.35/0.54  % SZS output start Refutation
% 0.35/0.54  thf(zip_tseitin_0_type, type, zip_tseitin_0: $i > $i > $i > $i > $i > $i > $o).
% 0.35/0.54  thf(k2_zfmisc_1_type, type, k2_zfmisc_1: $i > $i > $i).
% 0.35/0.54  thf(sk_A_type, type, sk_A: $i).
% 0.35/0.54  thf(sk_C_type, type, sk_C: $i).
% 0.35/0.54  thf(k2_enumset1_type, type, k2_enumset1: $i > $i > $i > $i > $i).
% 0.35/0.54  thf(k4_xboole_0_type, type, k4_xboole_0: $i > $i > $i).
% 0.35/0.54  thf(k4_tarski_type, type, k4_tarski: $i > $i > $i).
% 0.35/0.54  thf(k2_mcart_1_type, type, k2_mcart_1: $i > $i).
% 0.35/0.54  thf(k1_mcart_1_type, type, k1_mcart_1: $i > $i).
% 0.35/0.54  thf(k2_xboole_0_type, type, k2_xboole_0: $i > $i > $i).
% 0.35/0.54  thf(k1_tarski_type, type, k1_tarski: $i > $i).
% 0.35/0.54  thf(k1_enumset1_type, type, k1_enumset1: $i > $i > $i > $i).
% 0.35/0.54  thf(r2_hidden_type, type, r2_hidden: $i > $i > $o).
% 0.35/0.54  thf(sk_B_type, type, sk_B: $i).
% 0.35/0.54  thf(r1_tarski_type, type, r1_tarski: $i > $i > $o).
% 0.35/0.54  thf(k2_tarski_type, type, k2_tarski: $i > $i > $i).
% 0.35/0.54  thf(k3_enumset1_type, type, k3_enumset1: $i > $i > $i > $i > $i > $i).
% 0.35/0.54  thf(k1_xboole_0_type, type, k1_xboole_0: $i).
% 0.35/0.54  thf(t69_enumset1, axiom,
% 0.35/0.54    (![A:$i]: ( ( k2_tarski @ A @ A ) = ( k1_tarski @ A ) ))).
% 0.35/0.54  thf('0', plain, (![X6 : $i]: ((k2_tarski @ X6 @ X6) = (k1_tarski @ X6))),
% 0.35/0.54      inference('cnf', [status(esa)], [t69_enumset1])).
% 0.35/0.54  thf(t20_mcart_1, conjecture,
% 0.35/0.54    (![A:$i]:
% 0.35/0.54     ( ( ?[B:$i,C:$i]: ( ( A ) = ( k4_tarski @ B @ C ) ) ) =>
% 0.35/0.54       ( ( ( A ) != ( k1_mcart_1 @ A ) ) & ( ( A ) != ( k2_mcart_1 @ A ) ) ) ))).
% 0.35/0.54  thf(zf_stmt_0, negated_conjecture,
% 0.35/0.54    (~( ![A:$i]:
% 0.35/0.54        ( ( ?[B:$i,C:$i]: ( ( A ) = ( k4_tarski @ B @ C ) ) ) =>
% 0.35/0.54          ( ( ( A ) != ( k1_mcart_1 @ A ) ) & ( ( A ) != ( k2_mcart_1 @ A ) ) ) ) )),
% 0.35/0.54    inference('cnf.neg', [status(esa)], [t20_mcart_1])).
% 0.35/0.54  thf('1', plain, (((sk_A) = (k4_tarski @ sk_B @ sk_C))),
% 0.35/0.54      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.35/0.54  thf(t7_mcart_1, axiom,
% 0.35/0.54    (![A:$i,B:$i]:
% 0.35/0.54     ( ( ( k2_mcart_1 @ ( k4_tarski @ A @ B ) ) = ( B ) ) & 
% 0.35/0.54       ( ( k1_mcart_1 @ ( k4_tarski @ A @ B ) ) = ( A ) ) ))).
% 0.35/0.54  thf('2', plain,
% 0.35/0.54      (![X66 : $i, X68 : $i]: ((k2_mcart_1 @ (k4_tarski @ X66 @ X68)) = (X68))),
% 0.35/0.54      inference('cnf', [status(esa)], [t7_mcart_1])).
% 0.35/0.54  thf('3', plain, (((k2_mcart_1 @ sk_A) = (sk_C))),
% 0.35/0.54      inference('sup+', [status(thm)], ['1', '2'])).
% 0.35/0.54  thf('4', plain,
% 0.35/0.54      ((((sk_A) = (k1_mcart_1 @ sk_A)) | ((sk_A) = (k2_mcart_1 @ sk_A)))),
% 0.35/0.54      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.35/0.54  thf('5', plain,
% 0.35/0.54      ((((sk_A) = (k2_mcart_1 @ sk_A))) <= ((((sk_A) = (k2_mcart_1 @ sk_A))))),
% 0.35/0.54      inference('split', [status(esa)], ['4'])).
% 0.35/0.54  thf('6', plain, ((((sk_A) = (sk_C))) <= ((((sk_A) = (k2_mcart_1 @ sk_A))))),
% 0.35/0.54      inference('sup+', [status(thm)], ['3', '5'])).
% 0.35/0.54  thf('7', plain, (((sk_A) = (k4_tarski @ sk_B @ sk_C))),
% 0.35/0.54      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.35/0.54  thf('8', plain,
% 0.35/0.54      ((((sk_A) = (k4_tarski @ sk_B @ sk_A)))
% 0.35/0.54         <= ((((sk_A) = (k2_mcart_1 @ sk_A))))),
% 0.35/0.54      inference('sup+', [status(thm)], ['6', '7'])).
% 0.35/0.54  thf(t36_zfmisc_1, axiom,
% 0.35/0.54    (![A:$i,B:$i,C:$i]:
% 0.35/0.54     ( ( ( k2_zfmisc_1 @ ( k2_tarski @ A @ B ) @ ( k1_tarski @ C ) ) =
% 0.35/0.54         ( k2_tarski @ ( k4_tarski @ A @ C ) @ ( k4_tarski @ B @ C ) ) ) & 
% 0.35/0.54       ( ( k2_zfmisc_1 @ ( k1_tarski @ A ) @ ( k2_tarski @ B @ C ) ) =
% 0.35/0.54         ( k2_tarski @ ( k4_tarski @ A @ B ) @ ( k4_tarski @ A @ C ) ) ) ))).
% 0.35/0.54  thf('9', plain,
% 0.35/0.54      (![X44 : $i, X45 : $i, X46 : $i]:
% 0.35/0.54         ((k2_zfmisc_1 @ (k1_tarski @ X44) @ (k2_tarski @ X45 @ X46))
% 0.35/0.54           = (k2_tarski @ (k4_tarski @ X44 @ X45) @ (k4_tarski @ X44 @ X46)))),
% 0.35/0.54      inference('cnf', [status(esa)], [t36_zfmisc_1])).
% 0.35/0.54  thf('10', plain,
% 0.35/0.54      ((![X0 : $i]:
% 0.35/0.54          ((k2_zfmisc_1 @ (k1_tarski @ sk_B) @ (k2_tarski @ sk_A @ X0))
% 0.35/0.54            = (k2_tarski @ sk_A @ (k4_tarski @ sk_B @ X0))))
% 0.35/0.54         <= ((((sk_A) = (k2_mcart_1 @ sk_A))))),
% 0.35/0.54      inference('sup+', [status(thm)], ['8', '9'])).
% 0.35/0.54  thf('11', plain,
% 0.35/0.54      ((((k2_zfmisc_1 @ (k1_tarski @ sk_B) @ (k1_tarski @ sk_A))
% 0.35/0.54          = (k2_tarski @ sk_A @ (k4_tarski @ sk_B @ sk_A))))
% 0.35/0.54         <= ((((sk_A) = (k2_mcart_1 @ sk_A))))),
% 0.35/0.54      inference('sup+', [status(thm)], ['0', '10'])).
% 0.35/0.54  thf('12', plain,
% 0.35/0.54      ((((sk_A) = (k4_tarski @ sk_B @ sk_A)))
% 0.35/0.54         <= ((((sk_A) = (k2_mcart_1 @ sk_A))))),
% 0.35/0.54      inference('sup+', [status(thm)], ['6', '7'])).
% 0.35/0.54  thf('13', plain, (![X6 : $i]: ((k2_tarski @ X6 @ X6) = (k1_tarski @ X6))),
% 0.35/0.54      inference('cnf', [status(esa)], [t69_enumset1])).
% 0.35/0.54  thf('14', plain,
% 0.35/0.54      ((((k2_zfmisc_1 @ (k1_tarski @ sk_B) @ (k1_tarski @ sk_A))
% 0.35/0.54          = (k1_tarski @ sk_A)))
% 0.35/0.54         <= ((((sk_A) = (k2_mcart_1 @ sk_A))))),
% 0.35/0.54      inference('demod', [status(thm)], ['11', '12', '13'])).
% 0.35/0.54  thf(t135_zfmisc_1, axiom,
% 0.35/0.54    (![A:$i,B:$i]:
% 0.35/0.54     ( ( ( r1_tarski @ A @ ( k2_zfmisc_1 @ A @ B ) ) | 
% 0.35/0.54         ( r1_tarski @ A @ ( k2_zfmisc_1 @ B @ A ) ) ) =>
% 0.35/0.54       ( ( A ) = ( k1_xboole_0 ) ) ))).
% 0.35/0.54  thf('15', plain,
% 0.35/0.54      (![X39 : $i, X40 : $i]:
% 0.35/0.54         (((X39) = (k1_xboole_0))
% 0.35/0.54          | ~ (r1_tarski @ X39 @ (k2_zfmisc_1 @ X40 @ X39)))),
% 0.35/0.54      inference('cnf', [status(esa)], [t135_zfmisc_1])).
% 0.35/0.54  thf('16', plain,
% 0.35/0.54      (((~ (r1_tarski @ (k1_tarski @ sk_A) @ (k1_tarski @ sk_A))
% 0.35/0.54         | ((k1_tarski @ sk_A) = (k1_xboole_0))))
% 0.35/0.54         <= ((((sk_A) = (k2_mcart_1 @ sk_A))))),
% 0.35/0.54      inference('sup-', [status(thm)], ['14', '15'])).
% 0.35/0.54  thf(t20_zfmisc_1, axiom,
% 0.35/0.54    (![A:$i,B:$i]:
% 0.35/0.54     ( ( ( k4_xboole_0 @ ( k1_tarski @ A ) @ ( k1_tarski @ B ) ) =
% 0.35/0.54         ( k1_tarski @ A ) ) <=>
% 0.35/0.54       ( ( A ) != ( B ) ) ))).
% 0.35/0.54  thf('17', plain,
% 0.35/0.54      (![X41 : $i, X42 : $i]:
% 0.35/0.54         (((X42) != (X41))
% 0.35/0.54          | ((k4_xboole_0 @ (k1_tarski @ X42) @ (k1_tarski @ X41))
% 0.35/0.54              != (k1_tarski @ X42)))),
% 0.35/0.54      inference('cnf', [status(esa)], [t20_zfmisc_1])).
% 0.35/0.54  thf('18', plain,
% 0.35/0.54      (![X41 : $i]:
% 0.35/0.54         ((k4_xboole_0 @ (k1_tarski @ X41) @ (k1_tarski @ X41))
% 0.35/0.54           != (k1_tarski @ X41))),
% 0.35/0.54      inference('simplify', [status(thm)], ['17'])).
% 0.35/0.54  thf(idempotence_k2_xboole_0, axiom,
% 0.35/0.54    (![A:$i,B:$i]: ( ( k2_xboole_0 @ A @ A ) = ( A ) ))).
% 0.35/0.54  thf('19', plain, (![X0 : $i]: ((k2_xboole_0 @ X0 @ X0) = (X0))),
% 0.35/0.54      inference('cnf', [status(esa)], [idempotence_k2_xboole_0])).
% 0.35/0.54  thf(t46_xboole_1, axiom,
% 0.35/0.54    (![A:$i,B:$i]:
% 0.35/0.54     ( ( k4_xboole_0 @ A @ ( k2_xboole_0 @ A @ B ) ) = ( k1_xboole_0 ) ))).
% 0.35/0.54  thf('20', plain,
% 0.35/0.54      (![X4 : $i, X5 : $i]:
% 0.35/0.54         ((k4_xboole_0 @ X4 @ (k2_xboole_0 @ X4 @ X5)) = (k1_xboole_0))),
% 0.35/0.54      inference('cnf', [status(esa)], [t46_xboole_1])).
% 0.35/0.54  thf('21', plain, (![X0 : $i]: ((k4_xboole_0 @ X0 @ X0) = (k1_xboole_0))),
% 0.35/0.54      inference('sup+', [status(thm)], ['19', '20'])).
% 0.35/0.54  thf('22', plain, (![X41 : $i]: ((k1_xboole_0) != (k1_tarski @ X41))),
% 0.35/0.54      inference('demod', [status(thm)], ['18', '21'])).
% 0.35/0.54  thf('23', plain,
% 0.35/0.54      ((~ (r1_tarski @ (k1_tarski @ sk_A) @ (k1_tarski @ sk_A)))
% 0.35/0.54         <= ((((sk_A) = (k2_mcart_1 @ sk_A))))),
% 0.35/0.54      inference('clc', [status(thm)], ['16', '22'])).
% 0.35/0.54  thf(t70_enumset1, axiom,
% 0.35/0.54    (![A:$i,B:$i]: ( ( k1_enumset1 @ A @ A @ B ) = ( k2_tarski @ A @ B ) ))).
% 0.35/0.54  thf('24', plain,
% 0.35/0.54      (![X7 : $i, X8 : $i]:
% 0.35/0.54         ((k1_enumset1 @ X7 @ X7 @ X8) = (k2_tarski @ X7 @ X8))),
% 0.35/0.54      inference('cnf', [status(esa)], [t70_enumset1])).
% 0.35/0.54  thf('25', plain, (![X6 : $i]: ((k2_tarski @ X6 @ X6) = (k1_tarski @ X6))),
% 0.35/0.54      inference('cnf', [status(esa)], [t69_enumset1])).
% 0.35/0.54  thf('26', plain,
% 0.35/0.54      (![X0 : $i]: ((k1_enumset1 @ X0 @ X0 @ X0) = (k1_tarski @ X0))),
% 0.35/0.54      inference('sup+', [status(thm)], ['24', '25'])).
% 0.35/0.54  thf(t71_enumset1, axiom,
% 0.35/0.54    (![A:$i,B:$i,C:$i]:
% 0.35/0.54     ( ( k2_enumset1 @ A @ A @ B @ C ) = ( k1_enumset1 @ A @ B @ C ) ))).
% 0.35/0.54  thf('27', plain,
% 0.35/0.54      (![X9 : $i, X10 : $i, X11 : $i]:
% 0.35/0.54         ((k2_enumset1 @ X9 @ X9 @ X10 @ X11) = (k1_enumset1 @ X9 @ X10 @ X11))),
% 0.35/0.54      inference('cnf', [status(esa)], [t71_enumset1])).
% 0.35/0.54  thf(t72_enumset1, axiom,
% 0.35/0.54    (![A:$i,B:$i,C:$i,D:$i]:
% 0.35/0.54     ( ( k3_enumset1 @ A @ A @ B @ C @ D ) = ( k2_enumset1 @ A @ B @ C @ D ) ))).
% 0.35/0.54  thf('28', plain,
% 0.35/0.54      (![X12 : $i, X13 : $i, X14 : $i, X15 : $i]:
% 0.35/0.54         ((k3_enumset1 @ X12 @ X12 @ X13 @ X14 @ X15)
% 0.35/0.54           = (k2_enumset1 @ X12 @ X13 @ X14 @ X15))),
% 0.35/0.54      inference('cnf', [status(esa)], [t72_enumset1])).
% 0.35/0.54  thf(d3_enumset1, axiom,
% 0.35/0.54    (![A:$i,B:$i,C:$i,D:$i,E:$i,F:$i]:
% 0.35/0.54     ( ( ( F ) = ( k3_enumset1 @ A @ B @ C @ D @ E ) ) <=>
% 0.35/0.54       ( ![G:$i]:
% 0.35/0.54         ( ( r2_hidden @ G @ F ) <=>
% 0.35/0.54           ( ~( ( ( G ) != ( E ) ) & ( ( G ) != ( D ) ) & ( ( G ) != ( C ) ) & 
% 0.35/0.54                ( ( G ) != ( B ) ) & ( ( G ) != ( A ) ) ) ) ) ) ))).
% 0.35/0.54  thf(zf_stmt_1, type, zip_tseitin_0 : $i > $i > $i > $i > $i > $i > $o).
% 0.35/0.54  thf(zf_stmt_2, axiom,
% 0.35/0.54    (![G:$i,E:$i,D:$i,C:$i,B:$i,A:$i]:
% 0.35/0.54     ( ( zip_tseitin_0 @ G @ E @ D @ C @ B @ A ) <=>
% 0.35/0.54       ( ( ( G ) != ( A ) ) & ( ( G ) != ( B ) ) & ( ( G ) != ( C ) ) & 
% 0.35/0.54         ( ( G ) != ( D ) ) & ( ( G ) != ( E ) ) ) ))).
% 0.35/0.54  thf(zf_stmt_3, axiom,
% 0.35/0.54    (![A:$i,B:$i,C:$i,D:$i,E:$i,F:$i]:
% 0.35/0.54     ( ( ( F ) = ( k3_enumset1 @ A @ B @ C @ D @ E ) ) <=>
% 0.35/0.54       ( ![G:$i]:
% 0.35/0.54         ( ( r2_hidden @ G @ F ) <=>
% 0.35/0.54           ( ~( zip_tseitin_0 @ G @ E @ D @ C @ B @ A ) ) ) ) ))).
% 0.35/0.54  thf('29', plain,
% 0.35/0.54      (![X55 : $i, X56 : $i, X57 : $i, X58 : $i, X59 : $i, X60 : $i, X61 : $i]:
% 0.35/0.54         ((zip_tseitin_0 @ X55 @ X56 @ X57 @ X58 @ X59 @ X60)
% 0.35/0.54          | (r2_hidden @ X55 @ X61)
% 0.35/0.54          | ((X61) != (k3_enumset1 @ X60 @ X59 @ X58 @ X57 @ X56)))),
% 0.35/0.54      inference('cnf', [status(esa)], [zf_stmt_3])).
% 0.35/0.54  thf('30', plain,
% 0.35/0.54      (![X55 : $i, X56 : $i, X57 : $i, X58 : $i, X59 : $i, X60 : $i]:
% 0.35/0.54         ((r2_hidden @ X55 @ (k3_enumset1 @ X60 @ X59 @ X58 @ X57 @ X56))
% 0.35/0.54          | (zip_tseitin_0 @ X55 @ X56 @ X57 @ X58 @ X59 @ X60))),
% 0.35/0.54      inference('simplify', [status(thm)], ['29'])).
% 0.35/0.54  thf('31', plain,
% 0.35/0.54      (![X0 : $i, X1 : $i, X2 : $i, X3 : $i, X4 : $i]:
% 0.35/0.54         ((r2_hidden @ X4 @ (k2_enumset1 @ X3 @ X2 @ X1 @ X0))
% 0.35/0.54          | (zip_tseitin_0 @ X4 @ X0 @ X1 @ X2 @ X3 @ X3))),
% 0.35/0.54      inference('sup+', [status(thm)], ['28', '30'])).
% 0.35/0.54  thf('32', plain,
% 0.35/0.54      (![X48 : $i, X49 : $i, X50 : $i, X51 : $i, X52 : $i, X53 : $i]:
% 0.35/0.54         (((X49) != (X48))
% 0.35/0.54          | ~ (zip_tseitin_0 @ X49 @ X50 @ X51 @ X52 @ X53 @ X48))),
% 0.35/0.54      inference('cnf', [status(esa)], [zf_stmt_2])).
% 0.35/0.54  thf('33', plain,
% 0.35/0.54      (![X48 : $i, X50 : $i, X51 : $i, X52 : $i, X53 : $i]:
% 0.35/0.54         ~ (zip_tseitin_0 @ X48 @ X50 @ X51 @ X52 @ X53 @ X48)),
% 0.35/0.54      inference('simplify', [status(thm)], ['32'])).
% 0.35/0.54  thf('34', plain,
% 0.35/0.54      (![X0 : $i, X1 : $i, X2 : $i, X3 : $i]:
% 0.35/0.54         (r2_hidden @ X0 @ (k2_enumset1 @ X0 @ X1 @ X2 @ X3))),
% 0.35/0.54      inference('sup-', [status(thm)], ['31', '33'])).
% 0.35/0.54  thf('35', plain,
% 0.35/0.54      (![X0 : $i, X1 : $i, X2 : $i]:
% 0.35/0.54         (r2_hidden @ X2 @ (k1_enumset1 @ X2 @ X1 @ X0))),
% 0.35/0.54      inference('sup+', [status(thm)], ['27', '34'])).
% 0.35/0.54  thf('36', plain, (![X0 : $i]: (r2_hidden @ X0 @ (k1_tarski @ X0))),
% 0.35/0.54      inference('sup+', [status(thm)], ['26', '35'])).
% 0.35/0.54  thf(l1_zfmisc_1, axiom,
% 0.35/0.54    (![A:$i,B:$i]:
% 0.35/0.54     ( ( r1_tarski @ ( k1_tarski @ A ) @ B ) <=> ( r2_hidden @ A @ B ) ))).
% 0.35/0.54  thf('37', plain,
% 0.35/0.54      (![X34 : $i, X36 : $i]:
% 0.35/0.54         ((r1_tarski @ (k1_tarski @ X34) @ X36) | ~ (r2_hidden @ X34 @ X36))),
% 0.35/0.54      inference('cnf', [status(esa)], [l1_zfmisc_1])).
% 0.35/0.54  thf('38', plain,
% 0.35/0.54      (![X0 : $i]: (r1_tarski @ (k1_tarski @ X0) @ (k1_tarski @ X0))),
% 0.35/0.54      inference('sup-', [status(thm)], ['36', '37'])).
% 0.35/0.54  thf('39', plain, (($false) <= ((((sk_A) = (k2_mcart_1 @ sk_A))))),
% 0.35/0.54      inference('demod', [status(thm)], ['23', '38'])).
% 0.35/0.54  thf('40', plain,
% 0.35/0.54      (![X0 : $i]: (r1_tarski @ (k1_tarski @ X0) @ (k1_tarski @ X0))),
% 0.35/0.54      inference('sup-', [status(thm)], ['36', '37'])).
% 0.35/0.54  thf('41', plain, (![X6 : $i]: ((k2_tarski @ X6 @ X6) = (k1_tarski @ X6))),
% 0.35/0.54      inference('cnf', [status(esa)], [t69_enumset1])).
% 0.35/0.54  thf('42', plain, (((sk_A) = (k4_tarski @ sk_B @ sk_C))),
% 0.35/0.54      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.35/0.54  thf('43', plain,
% 0.35/0.54      (![X66 : $i, X67 : $i]: ((k1_mcart_1 @ (k4_tarski @ X66 @ X67)) = (X66))),
% 0.35/0.54      inference('cnf', [status(esa)], [t7_mcart_1])).
% 0.35/0.54  thf('44', plain, (((k1_mcart_1 @ sk_A) = (sk_B))),
% 0.35/0.54      inference('sup+', [status(thm)], ['42', '43'])).
% 0.35/0.54  thf('45', plain,
% 0.35/0.54      ((((sk_A) = (k1_mcart_1 @ sk_A))) <= ((((sk_A) = (k1_mcart_1 @ sk_A))))),
% 0.35/0.54      inference('split', [status(esa)], ['4'])).
% 0.35/0.54  thf('46', plain, ((((sk_A) = (sk_B))) <= ((((sk_A) = (k1_mcart_1 @ sk_A))))),
% 0.35/0.54      inference('sup+', [status(thm)], ['44', '45'])).
% 0.35/0.54  thf('47', plain, (((sk_A) = (k4_tarski @ sk_B @ sk_C))),
% 0.35/0.54      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.35/0.54  thf('48', plain,
% 0.35/0.54      ((((sk_A) = (k4_tarski @ sk_A @ sk_C)))
% 0.35/0.54         <= ((((sk_A) = (k1_mcart_1 @ sk_A))))),
% 0.35/0.54      inference('sup+', [status(thm)], ['46', '47'])).
% 0.35/0.54  thf('49', plain,
% 0.35/0.54      (![X44 : $i, X45 : $i, X46 : $i]:
% 0.35/0.54         ((k2_zfmisc_1 @ (k1_tarski @ X44) @ (k2_tarski @ X45 @ X46))
% 0.35/0.54           = (k2_tarski @ (k4_tarski @ X44 @ X45) @ (k4_tarski @ X44 @ X46)))),
% 0.35/0.54      inference('cnf', [status(esa)], [t36_zfmisc_1])).
% 0.35/0.54  thf('50', plain,
% 0.35/0.54      ((![X0 : $i]:
% 0.35/0.54          ((k2_zfmisc_1 @ (k1_tarski @ sk_A) @ (k2_tarski @ sk_C @ X0))
% 0.35/0.54            = (k2_tarski @ sk_A @ (k4_tarski @ sk_A @ X0))))
% 0.35/0.54         <= ((((sk_A) = (k1_mcart_1 @ sk_A))))),
% 0.35/0.54      inference('sup+', [status(thm)], ['48', '49'])).
% 0.35/0.54  thf('51', plain,
% 0.35/0.54      ((((k2_zfmisc_1 @ (k1_tarski @ sk_A) @ (k1_tarski @ sk_C))
% 0.35/0.54          = (k2_tarski @ sk_A @ (k4_tarski @ sk_A @ sk_C))))
% 0.35/0.54         <= ((((sk_A) = (k1_mcart_1 @ sk_A))))),
% 0.35/0.54      inference('sup+', [status(thm)], ['41', '50'])).
% 0.35/0.54  thf('52', plain,
% 0.35/0.54      ((((sk_A) = (k4_tarski @ sk_A @ sk_C)))
% 0.35/0.54         <= ((((sk_A) = (k1_mcart_1 @ sk_A))))),
% 0.35/0.54      inference('sup+', [status(thm)], ['46', '47'])).
% 0.35/0.54  thf('53', plain, (![X6 : $i]: ((k2_tarski @ X6 @ X6) = (k1_tarski @ X6))),
% 0.35/0.54      inference('cnf', [status(esa)], [t69_enumset1])).
% 0.35/0.54  thf('54', plain,
% 0.35/0.54      ((((k2_zfmisc_1 @ (k1_tarski @ sk_A) @ (k1_tarski @ sk_C))
% 0.35/0.54          = (k1_tarski @ sk_A)))
% 0.35/0.54         <= ((((sk_A) = (k1_mcart_1 @ sk_A))))),
% 0.35/0.54      inference('demod', [status(thm)], ['51', '52', '53'])).
% 0.35/0.54  thf('55', plain,
% 0.35/0.54      (![X39 : $i, X40 : $i]:
% 0.35/0.54         (((X39) = (k1_xboole_0))
% 0.35/0.54          | ~ (r1_tarski @ X39 @ (k2_zfmisc_1 @ X39 @ X40)))),
% 0.35/0.54      inference('cnf', [status(esa)], [t135_zfmisc_1])).
% 0.35/0.54  thf('56', plain,
% 0.35/0.54      (((~ (r1_tarski @ (k1_tarski @ sk_A) @ (k1_tarski @ sk_A))
% 0.35/0.54         | ((k1_tarski @ sk_A) = (k1_xboole_0))))
% 0.35/0.54         <= ((((sk_A) = (k1_mcart_1 @ sk_A))))),
% 0.35/0.54      inference('sup-', [status(thm)], ['54', '55'])).
% 0.35/0.54  thf('57', plain, (![X41 : $i]: ((k1_xboole_0) != (k1_tarski @ X41))),
% 0.35/0.54      inference('demod', [status(thm)], ['18', '21'])).
% 0.35/0.54  thf('58', plain,
% 0.35/0.54      ((~ (r1_tarski @ (k1_tarski @ sk_A) @ (k1_tarski @ sk_A)))
% 0.35/0.54         <= ((((sk_A) = (k1_mcart_1 @ sk_A))))),
% 0.35/0.54      inference('clc', [status(thm)], ['56', '57'])).
% 0.35/0.54  thf('59', plain, (~ (((sk_A) = (k1_mcart_1 @ sk_A)))),
% 0.35/0.54      inference('sup-', [status(thm)], ['40', '58'])).
% 0.35/0.54  thf('60', plain,
% 0.35/0.54      ((((sk_A) = (k2_mcart_1 @ sk_A))) | (((sk_A) = (k1_mcart_1 @ sk_A)))),
% 0.35/0.54      inference('split', [status(esa)], ['4'])).
% 0.35/0.54  thf('61', plain, ((((sk_A) = (k2_mcart_1 @ sk_A)))),
% 0.35/0.54      inference('sat_resolution*', [status(thm)], ['59', '60'])).
% 0.35/0.54  thf('62', plain, ($false),
% 0.35/0.54      inference('simpl_trail', [status(thm)], ['39', '61'])).
% 0.35/0.54  
% 0.35/0.54  % SZS output end Refutation
% 0.35/0.54  
% 0.39/0.55  % Zipperpin 1.5 exiting
%------------------------------------------------------------------------------
