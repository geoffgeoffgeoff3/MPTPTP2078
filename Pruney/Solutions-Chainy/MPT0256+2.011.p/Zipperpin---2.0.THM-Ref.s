%------------------------------------------------------------------------------
% File       : Zipperpin---2.0
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_portfolio.sh /export/starexec/sandbox/benchmark/theBenchmark.p /export/starexec/sandbox/tmp/tmp.kRWig8LJF7

% Computer   : n023.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 13:33:20 EST 2020

% Result     : Theorem 0.21s
% Output     : Refutation 0.21s
% Verified   : 
% Statistics : Number of formulae       :   48 (  60 expanded)
%              Number of leaves         :   15 (  23 expanded)
%              Depth                    :   12
%              Number of atoms          :  409 ( 554 expanded)
%              Number of equality atoms :   37 (  51 expanded)
%              Maximal formula depth    :   13 (   8 average)

% Comments   : 
%------------------------------------------------------------------------------
thf(r2_hidden_type,type,(
    r2_hidden: $i > $i > $o )).

thf(sk_B_type,type,(
    sk_B: $i )).

thf(zip_tseitin_0_type,type,(
    zip_tseitin_0: $i > $i > $i > $i > $o )).

thf(k1_tarski_type,type,(
    k1_tarski: $i > $i )).

thf(k3_xboole_0_type,type,(
    k3_xboole_0: $i > $i > $i )).

thf(sk_D_type,type,(
    sk_D: $i > $i > $i > $i )).

thf(sk_A_type,type,(
    sk_A: $i )).

thf(k1_enumset1_type,type,(
    k1_enumset1: $i > $i > $i > $i )).

thf(t51_zfmisc_1,conjecture,(
    ! [A: $i,B: $i] :
      ( ( ( k3_xboole_0 @ A @ ( k1_tarski @ B ) )
        = ( k1_tarski @ B ) )
     => ( r2_hidden @ B @ A ) ) )).

thf(zf_stmt_0,negated_conjecture,(
    ~ ! [A: $i,B: $i] :
        ( ( ( k3_xboole_0 @ A @ ( k1_tarski @ B ) )
          = ( k1_tarski @ B ) )
       => ( r2_hidden @ B @ A ) ) ),
    inference('cnf.neg',[status(esa)],[t51_zfmisc_1])).

thf('0',plain,(
    ~ ( r2_hidden @ sk_B @ sk_A ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(t76_enumset1,axiom,(
    ! [A: $i] :
      ( ( k1_enumset1 @ A @ A @ A )
      = ( k1_tarski @ A ) ) )).

thf('1',plain,(
    ! [X18: $i] :
      ( ( k1_enumset1 @ X18 @ X18 @ X18 )
      = ( k1_tarski @ X18 ) ) ),
    inference(cnf,[status(esa)],[t76_enumset1])).

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
    ! [X11: $i,X12: $i,X13: $i,X14: $i,X15: $i] :
      ( ( zip_tseitin_0 @ X11 @ X12 @ X13 @ X14 )
      | ( r2_hidden @ X11 @ X15 )
      | ( X15
       != ( k1_enumset1 @ X14 @ X13 @ X12 ) ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_3])).

thf('3',plain,(
    ! [X11: $i,X12: $i,X13: $i,X14: $i] :
      ( ( r2_hidden @ X11 @ ( k1_enumset1 @ X14 @ X13 @ X12 ) )
      | ( zip_tseitin_0 @ X11 @ X12 @ X13 @ X14 ) ) ),
    inference(simplify,[status(thm)],['2'])).

thf('4',plain,(
    ! [X0: $i,X1: $i] :
      ( ( r2_hidden @ X1 @ ( k1_tarski @ X0 ) )
      | ( zip_tseitin_0 @ X1 @ X0 @ X0 @ X0 ) ) ),
    inference('sup+',[status(thm)],['1','3'])).

thf('5',plain,(
    ! [X6: $i,X7: $i,X8: $i,X9: $i] :
      ( ( X7 != X6 )
      | ~ ( zip_tseitin_0 @ X7 @ X8 @ X9 @ X6 ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_2])).

thf('6',plain,(
    ! [X6: $i,X8: $i,X9: $i] :
      ~ ( zip_tseitin_0 @ X6 @ X8 @ X9 @ X6 ) ),
    inference(simplify,[status(thm)],['5'])).

thf('7',plain,(
    ! [X0: $i] :
      ( r2_hidden @ X0 @ ( k1_tarski @ X0 ) ) ),
    inference('sup-',[status(thm)],['4','6'])).

thf('8',plain,(
    ! [X7: $i,X8: $i,X9: $i,X10: $i] :
      ( ( zip_tseitin_0 @ X7 @ X8 @ X9 @ X10 )
      | ( X7 = X8 )
      | ( X7 = X9 )
      | ( X7 = X10 ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_2])).

thf(d4_xboole_0,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( C
        = ( k3_xboole_0 @ A @ B ) )
    <=> ! [D: $i] :
          ( ( r2_hidden @ D @ C )
        <=> ( ( r2_hidden @ D @ A )
            & ( r2_hidden @ D @ B ) ) ) ) )).

thf('9',plain,(
    ! [X1: $i,X2: $i,X5: $i] :
      ( ( X5
        = ( k3_xboole_0 @ X1 @ X2 ) )
      | ( r2_hidden @ ( sk_D @ X5 @ X2 @ X1 ) @ X2 )
      | ( r2_hidden @ ( sk_D @ X5 @ X2 @ X1 ) @ X5 ) ) ),
    inference(cnf,[status(esa)],[d4_xboole_0])).

thf('10',plain,(
    ! [X0: $i,X1: $i] :
      ( ( r2_hidden @ ( sk_D @ X0 @ X0 @ X1 ) @ X0 )
      | ( X0
        = ( k3_xboole_0 @ X1 @ X0 ) ) ) ),
    inference(eq_fact,[status(thm)],['9'])).

thf('11',plain,(
    ! [X18: $i] :
      ( ( k1_enumset1 @ X18 @ X18 @ X18 )
      = ( k1_tarski @ X18 ) ) ),
    inference(cnf,[status(esa)],[t76_enumset1])).

thf('12',plain,(
    ! [X12: $i,X13: $i,X14: $i,X15: $i,X16: $i] :
      ( ~ ( r2_hidden @ X16 @ X15 )
      | ~ ( zip_tseitin_0 @ X16 @ X12 @ X13 @ X14 )
      | ( X15
       != ( k1_enumset1 @ X14 @ X13 @ X12 ) ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_3])).

thf('13',plain,(
    ! [X12: $i,X13: $i,X14: $i,X16: $i] :
      ( ~ ( zip_tseitin_0 @ X16 @ X12 @ X13 @ X14 )
      | ~ ( r2_hidden @ X16 @ ( k1_enumset1 @ X14 @ X13 @ X12 ) ) ) ),
    inference(simplify,[status(thm)],['12'])).

thf('14',plain,(
    ! [X0: $i,X1: $i] :
      ( ~ ( r2_hidden @ X1 @ ( k1_tarski @ X0 ) )
      | ~ ( zip_tseitin_0 @ X1 @ X0 @ X0 @ X0 ) ) ),
    inference('sup-',[status(thm)],['11','13'])).

thf('15',plain,(
    ! [X0: $i,X1: $i] :
      ( ( ( k1_tarski @ X0 )
        = ( k3_xboole_0 @ X1 @ ( k1_tarski @ X0 ) ) )
      | ~ ( zip_tseitin_0 @ ( sk_D @ ( k1_tarski @ X0 ) @ ( k1_tarski @ X0 ) @ X1 ) @ X0 @ X0 @ X0 ) ) ),
    inference('sup-',[status(thm)],['10','14'])).

thf('16',plain,(
    ! [X0: $i,X1: $i] :
      ( ( ( sk_D @ ( k1_tarski @ X0 ) @ ( k1_tarski @ X0 ) @ X1 )
        = X0 )
      | ( ( sk_D @ ( k1_tarski @ X0 ) @ ( k1_tarski @ X0 ) @ X1 )
        = X0 )
      | ( ( sk_D @ ( k1_tarski @ X0 ) @ ( k1_tarski @ X0 ) @ X1 )
        = X0 )
      | ( ( k1_tarski @ X0 )
        = ( k3_xboole_0 @ X1 @ ( k1_tarski @ X0 ) ) ) ) ),
    inference('sup-',[status(thm)],['8','15'])).

thf('17',plain,(
    ! [X0: $i,X1: $i] :
      ( ( ( k1_tarski @ X0 )
        = ( k3_xboole_0 @ X1 @ ( k1_tarski @ X0 ) ) )
      | ( ( sk_D @ ( k1_tarski @ X0 ) @ ( k1_tarski @ X0 ) @ X1 )
        = X0 ) ) ),
    inference(simplify,[status(thm)],['16'])).

thf('18',plain,(
    ! [X0: $i,X1: $i] :
      ( ( r2_hidden @ ( sk_D @ X0 @ X0 @ X1 ) @ X0 )
      | ( X0
        = ( k3_xboole_0 @ X1 @ X0 ) ) ) ),
    inference(eq_fact,[status(thm)],['9'])).

thf('19',plain,
    ( ( k3_xboole_0 @ sk_A @ ( k1_tarski @ sk_B ) )
    = ( k1_tarski @ sk_B ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('20',plain,(
    ! [X1: $i,X2: $i,X3: $i,X4: $i] :
      ( ~ ( r2_hidden @ X4 @ X3 )
      | ( r2_hidden @ X4 @ X1 )
      | ( X3
       != ( k3_xboole_0 @ X1 @ X2 ) ) ) ),
    inference(cnf,[status(esa)],[d4_xboole_0])).

thf('21',plain,(
    ! [X1: $i,X2: $i,X4: $i] :
      ( ( r2_hidden @ X4 @ X1 )
      | ~ ( r2_hidden @ X4 @ ( k3_xboole_0 @ X1 @ X2 ) ) ) ),
    inference(simplify,[status(thm)],['20'])).

thf('22',plain,(
    ! [X0: $i] :
      ( ~ ( r2_hidden @ X0 @ ( k1_tarski @ sk_B ) )
      | ( r2_hidden @ X0 @ sk_A ) ) ),
    inference('sup-',[status(thm)],['19','21'])).

thf('23',plain,(
    ! [X0: $i] :
      ( ( ( k1_tarski @ sk_B )
        = ( k3_xboole_0 @ X0 @ ( k1_tarski @ sk_B ) ) )
      | ( r2_hidden @ ( sk_D @ ( k1_tarski @ sk_B ) @ ( k1_tarski @ sk_B ) @ X0 ) @ sk_A ) ) ),
    inference('sup-',[status(thm)],['18','22'])).

thf('24',plain,(
    ! [X0: $i] :
      ( ( r2_hidden @ sk_B @ sk_A )
      | ( ( k1_tarski @ sk_B )
        = ( k3_xboole_0 @ X0 @ ( k1_tarski @ sk_B ) ) )
      | ( ( k1_tarski @ sk_B )
        = ( k3_xboole_0 @ X0 @ ( k1_tarski @ sk_B ) ) ) ) ),
    inference('sup+',[status(thm)],['17','23'])).

thf('25',plain,(
    ! [X0: $i] :
      ( ( ( k1_tarski @ sk_B )
        = ( k3_xboole_0 @ X0 @ ( k1_tarski @ sk_B ) ) )
      | ( r2_hidden @ sk_B @ sk_A ) ) ),
    inference(simplify,[status(thm)],['24'])).

thf('26',plain,(
    ~ ( r2_hidden @ sk_B @ sk_A ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('27',plain,(
    ! [X0: $i] :
      ( ( k1_tarski @ sk_B )
      = ( k3_xboole_0 @ X0 @ ( k1_tarski @ sk_B ) ) ) ),
    inference(clc,[status(thm)],['25','26'])).

thf('28',plain,(
    ! [X1: $i,X2: $i,X4: $i] :
      ( ( r2_hidden @ X4 @ X1 )
      | ~ ( r2_hidden @ X4 @ ( k3_xboole_0 @ X1 @ X2 ) ) ) ),
    inference(simplify,[status(thm)],['20'])).

thf('29',plain,(
    ! [X0: $i,X1: $i] :
      ( ~ ( r2_hidden @ X1 @ ( k1_tarski @ sk_B ) )
      | ( r2_hidden @ X1 @ X0 ) ) ),
    inference('sup-',[status(thm)],['27','28'])).

thf('30',plain,(
    ! [X0: $i] :
      ( r2_hidden @ sk_B @ X0 ) ),
    inference('sup-',[status(thm)],['7','29'])).

thf('31',plain,(
    $false ),
    inference(demod,[status(thm)],['0','30'])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.07/0.13  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.07/0.14  % Command    : run_portfolio.sh /export/starexec/sandbox/benchmark/theBenchmark.p /export/starexec/sandbox/tmp/tmp.kRWig8LJF7
% 0.13/0.35  % Computer   : n023.cluster.edu
% 0.13/0.35  % Model      : x86_64 x86_64
% 0.13/0.35  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.35  % Memory     : 8042.1875MB
% 0.13/0.35  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.35  % CPULimit   : 60
% 0.13/0.35  % DateTime   : Tue Dec  1 14:47:51 EST 2020
% 0.13/0.35  % CPUTime    : 
% 0.13/0.35  % Running portfolio for 600 s
% 0.13/0.35  % File         : /export/starexec/sandbox/benchmark/theBenchmark.p
% 0.13/0.35  % Number of cores: 8
% 0.13/0.36  % Python version: Python 3.6.8
% 0.13/0.36  % Running in FO mode
% 0.21/0.53  % Running /export/starexec/sandbox/solver/bin/fo/fo7.sh for 78
% 0.21/0.53  % Solved by: fo/fo7.sh
% 0.21/0.53  To remain in the chosen logic fragment, unification with booleans has been disabled.
% 0.21/0.53  % done 95 iterations in 0.074s
% 0.21/0.53  % SZS status Theorem for '/export/starexec/sandbox/benchmark/theBenchmark.p'
% 0.21/0.53  % SZS output start Refutation
% 0.21/0.53  thf(r2_hidden_type, type, r2_hidden: $i > $i > $o).
% 0.21/0.53  thf(sk_B_type, type, sk_B: $i).
% 0.21/0.53  thf(zip_tseitin_0_type, type, zip_tseitin_0: $i > $i > $i > $i > $o).
% 0.21/0.53  thf(k1_tarski_type, type, k1_tarski: $i > $i).
% 0.21/0.53  thf(k3_xboole_0_type, type, k3_xboole_0: $i > $i > $i).
% 0.21/0.53  thf(sk_D_type, type, sk_D: $i > $i > $i > $i).
% 0.21/0.53  thf(sk_A_type, type, sk_A: $i).
% 0.21/0.53  thf(k1_enumset1_type, type, k1_enumset1: $i > $i > $i > $i).
% 0.21/0.53  thf(t51_zfmisc_1, conjecture,
% 0.21/0.53    (![A:$i,B:$i]:
% 0.21/0.53     ( ( ( k3_xboole_0 @ A @ ( k1_tarski @ B ) ) = ( k1_tarski @ B ) ) =>
% 0.21/0.53       ( r2_hidden @ B @ A ) ))).
% 0.21/0.53  thf(zf_stmt_0, negated_conjecture,
% 0.21/0.53    (~( ![A:$i,B:$i]:
% 0.21/0.53        ( ( ( k3_xboole_0 @ A @ ( k1_tarski @ B ) ) = ( k1_tarski @ B ) ) =>
% 0.21/0.53          ( r2_hidden @ B @ A ) ) )),
% 0.21/0.53    inference('cnf.neg', [status(esa)], [t51_zfmisc_1])).
% 0.21/0.54  thf('0', plain, (~ (r2_hidden @ sk_B @ sk_A)),
% 0.21/0.54      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.54  thf(t76_enumset1, axiom,
% 0.21/0.54    (![A:$i]: ( ( k1_enumset1 @ A @ A @ A ) = ( k1_tarski @ A ) ))).
% 0.21/0.54  thf('1', plain,
% 0.21/0.54      (![X18 : $i]: ((k1_enumset1 @ X18 @ X18 @ X18) = (k1_tarski @ X18))),
% 0.21/0.54      inference('cnf', [status(esa)], [t76_enumset1])).
% 0.21/0.54  thf(d1_enumset1, axiom,
% 0.21/0.54    (![A:$i,B:$i,C:$i,D:$i]:
% 0.21/0.54     ( ( ( D ) = ( k1_enumset1 @ A @ B @ C ) ) <=>
% 0.21/0.54       ( ![E:$i]:
% 0.21/0.54         ( ( r2_hidden @ E @ D ) <=>
% 0.21/0.54           ( ~( ( ( E ) != ( C ) ) & ( ( E ) != ( B ) ) & ( ( E ) != ( A ) ) ) ) ) ) ))).
% 0.21/0.54  thf(zf_stmt_1, type, zip_tseitin_0 : $i > $i > $i > $i > $o).
% 0.21/0.54  thf(zf_stmt_2, axiom,
% 0.21/0.54    (![E:$i,C:$i,B:$i,A:$i]:
% 0.21/0.54     ( ( zip_tseitin_0 @ E @ C @ B @ A ) <=>
% 0.21/0.54       ( ( ( E ) != ( A ) ) & ( ( E ) != ( B ) ) & ( ( E ) != ( C ) ) ) ))).
% 0.21/0.54  thf(zf_stmt_3, axiom,
% 0.21/0.54    (![A:$i,B:$i,C:$i,D:$i]:
% 0.21/0.54     ( ( ( D ) = ( k1_enumset1 @ A @ B @ C ) ) <=>
% 0.21/0.54       ( ![E:$i]:
% 0.21/0.54         ( ( r2_hidden @ E @ D ) <=> ( ~( zip_tseitin_0 @ E @ C @ B @ A ) ) ) ) ))).
% 0.21/0.54  thf('2', plain,
% 0.21/0.54      (![X11 : $i, X12 : $i, X13 : $i, X14 : $i, X15 : $i]:
% 0.21/0.54         ((zip_tseitin_0 @ X11 @ X12 @ X13 @ X14)
% 0.21/0.54          | (r2_hidden @ X11 @ X15)
% 0.21/0.54          | ((X15) != (k1_enumset1 @ X14 @ X13 @ X12)))),
% 0.21/0.54      inference('cnf', [status(esa)], [zf_stmt_3])).
% 0.21/0.54  thf('3', plain,
% 0.21/0.54      (![X11 : $i, X12 : $i, X13 : $i, X14 : $i]:
% 0.21/0.54         ((r2_hidden @ X11 @ (k1_enumset1 @ X14 @ X13 @ X12))
% 0.21/0.54          | (zip_tseitin_0 @ X11 @ X12 @ X13 @ X14))),
% 0.21/0.54      inference('simplify', [status(thm)], ['2'])).
% 0.21/0.54  thf('4', plain,
% 0.21/0.54      (![X0 : $i, X1 : $i]:
% 0.21/0.54         ((r2_hidden @ X1 @ (k1_tarski @ X0))
% 0.21/0.54          | (zip_tseitin_0 @ X1 @ X0 @ X0 @ X0))),
% 0.21/0.54      inference('sup+', [status(thm)], ['1', '3'])).
% 0.21/0.54  thf('5', plain,
% 0.21/0.54      (![X6 : $i, X7 : $i, X8 : $i, X9 : $i]:
% 0.21/0.54         (((X7) != (X6)) | ~ (zip_tseitin_0 @ X7 @ X8 @ X9 @ X6))),
% 0.21/0.54      inference('cnf', [status(esa)], [zf_stmt_2])).
% 0.21/0.54  thf('6', plain,
% 0.21/0.54      (![X6 : $i, X8 : $i, X9 : $i]: ~ (zip_tseitin_0 @ X6 @ X8 @ X9 @ X6)),
% 0.21/0.54      inference('simplify', [status(thm)], ['5'])).
% 0.21/0.54  thf('7', plain, (![X0 : $i]: (r2_hidden @ X0 @ (k1_tarski @ X0))),
% 0.21/0.54      inference('sup-', [status(thm)], ['4', '6'])).
% 0.21/0.54  thf('8', plain,
% 0.21/0.54      (![X7 : $i, X8 : $i, X9 : $i, X10 : $i]:
% 0.21/0.54         ((zip_tseitin_0 @ X7 @ X8 @ X9 @ X10)
% 0.21/0.54          | ((X7) = (X8))
% 0.21/0.54          | ((X7) = (X9))
% 0.21/0.54          | ((X7) = (X10)))),
% 0.21/0.54      inference('cnf', [status(esa)], [zf_stmt_2])).
% 0.21/0.54  thf(d4_xboole_0, axiom,
% 0.21/0.54    (![A:$i,B:$i,C:$i]:
% 0.21/0.54     ( ( ( C ) = ( k3_xboole_0 @ A @ B ) ) <=>
% 0.21/0.54       ( ![D:$i]:
% 0.21/0.54         ( ( r2_hidden @ D @ C ) <=>
% 0.21/0.54           ( ( r2_hidden @ D @ A ) & ( r2_hidden @ D @ B ) ) ) ) ))).
% 0.21/0.54  thf('9', plain,
% 0.21/0.54      (![X1 : $i, X2 : $i, X5 : $i]:
% 0.21/0.54         (((X5) = (k3_xboole_0 @ X1 @ X2))
% 0.21/0.54          | (r2_hidden @ (sk_D @ X5 @ X2 @ X1) @ X2)
% 0.21/0.54          | (r2_hidden @ (sk_D @ X5 @ X2 @ X1) @ X5))),
% 0.21/0.54      inference('cnf', [status(esa)], [d4_xboole_0])).
% 0.21/0.54  thf('10', plain,
% 0.21/0.54      (![X0 : $i, X1 : $i]:
% 0.21/0.54         ((r2_hidden @ (sk_D @ X0 @ X0 @ X1) @ X0)
% 0.21/0.54          | ((X0) = (k3_xboole_0 @ X1 @ X0)))),
% 0.21/0.54      inference('eq_fact', [status(thm)], ['9'])).
% 0.21/0.54  thf('11', plain,
% 0.21/0.54      (![X18 : $i]: ((k1_enumset1 @ X18 @ X18 @ X18) = (k1_tarski @ X18))),
% 0.21/0.54      inference('cnf', [status(esa)], [t76_enumset1])).
% 0.21/0.54  thf('12', plain,
% 0.21/0.54      (![X12 : $i, X13 : $i, X14 : $i, X15 : $i, X16 : $i]:
% 0.21/0.54         (~ (r2_hidden @ X16 @ X15)
% 0.21/0.54          | ~ (zip_tseitin_0 @ X16 @ X12 @ X13 @ X14)
% 0.21/0.54          | ((X15) != (k1_enumset1 @ X14 @ X13 @ X12)))),
% 0.21/0.54      inference('cnf', [status(esa)], [zf_stmt_3])).
% 0.21/0.54  thf('13', plain,
% 0.21/0.54      (![X12 : $i, X13 : $i, X14 : $i, X16 : $i]:
% 0.21/0.54         (~ (zip_tseitin_0 @ X16 @ X12 @ X13 @ X14)
% 0.21/0.54          | ~ (r2_hidden @ X16 @ (k1_enumset1 @ X14 @ X13 @ X12)))),
% 0.21/0.54      inference('simplify', [status(thm)], ['12'])).
% 0.21/0.54  thf('14', plain,
% 0.21/0.54      (![X0 : $i, X1 : $i]:
% 0.21/0.54         (~ (r2_hidden @ X1 @ (k1_tarski @ X0))
% 0.21/0.54          | ~ (zip_tseitin_0 @ X1 @ X0 @ X0 @ X0))),
% 0.21/0.54      inference('sup-', [status(thm)], ['11', '13'])).
% 0.21/0.54  thf('15', plain,
% 0.21/0.54      (![X0 : $i, X1 : $i]:
% 0.21/0.54         (((k1_tarski @ X0) = (k3_xboole_0 @ X1 @ (k1_tarski @ X0)))
% 0.21/0.54          | ~ (zip_tseitin_0 @ 
% 0.21/0.54               (sk_D @ (k1_tarski @ X0) @ (k1_tarski @ X0) @ X1) @ X0 @ X0 @ X0))),
% 0.21/0.54      inference('sup-', [status(thm)], ['10', '14'])).
% 0.21/0.54  thf('16', plain,
% 0.21/0.54      (![X0 : $i, X1 : $i]:
% 0.21/0.54         (((sk_D @ (k1_tarski @ X0) @ (k1_tarski @ X0) @ X1) = (X0))
% 0.21/0.54          | ((sk_D @ (k1_tarski @ X0) @ (k1_tarski @ X0) @ X1) = (X0))
% 0.21/0.54          | ((sk_D @ (k1_tarski @ X0) @ (k1_tarski @ X0) @ X1) = (X0))
% 0.21/0.54          | ((k1_tarski @ X0) = (k3_xboole_0 @ X1 @ (k1_tarski @ X0))))),
% 0.21/0.54      inference('sup-', [status(thm)], ['8', '15'])).
% 0.21/0.54  thf('17', plain,
% 0.21/0.54      (![X0 : $i, X1 : $i]:
% 0.21/0.54         (((k1_tarski @ X0) = (k3_xboole_0 @ X1 @ (k1_tarski @ X0)))
% 0.21/0.54          | ((sk_D @ (k1_tarski @ X0) @ (k1_tarski @ X0) @ X1) = (X0)))),
% 0.21/0.54      inference('simplify', [status(thm)], ['16'])).
% 0.21/0.54  thf('18', plain,
% 0.21/0.54      (![X0 : $i, X1 : $i]:
% 0.21/0.54         ((r2_hidden @ (sk_D @ X0 @ X0 @ X1) @ X0)
% 0.21/0.54          | ((X0) = (k3_xboole_0 @ X1 @ X0)))),
% 0.21/0.54      inference('eq_fact', [status(thm)], ['9'])).
% 0.21/0.54  thf('19', plain,
% 0.21/0.54      (((k3_xboole_0 @ sk_A @ (k1_tarski @ sk_B)) = (k1_tarski @ sk_B))),
% 0.21/0.54      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.54  thf('20', plain,
% 0.21/0.54      (![X1 : $i, X2 : $i, X3 : $i, X4 : $i]:
% 0.21/0.54         (~ (r2_hidden @ X4 @ X3)
% 0.21/0.54          | (r2_hidden @ X4 @ X1)
% 0.21/0.54          | ((X3) != (k3_xboole_0 @ X1 @ X2)))),
% 0.21/0.54      inference('cnf', [status(esa)], [d4_xboole_0])).
% 0.21/0.54  thf('21', plain,
% 0.21/0.54      (![X1 : $i, X2 : $i, X4 : $i]:
% 0.21/0.54         ((r2_hidden @ X4 @ X1) | ~ (r2_hidden @ X4 @ (k3_xboole_0 @ X1 @ X2)))),
% 0.21/0.54      inference('simplify', [status(thm)], ['20'])).
% 0.21/0.54  thf('22', plain,
% 0.21/0.54      (![X0 : $i]:
% 0.21/0.54         (~ (r2_hidden @ X0 @ (k1_tarski @ sk_B)) | (r2_hidden @ X0 @ sk_A))),
% 0.21/0.54      inference('sup-', [status(thm)], ['19', '21'])).
% 0.21/0.54  thf('23', plain,
% 0.21/0.54      (![X0 : $i]:
% 0.21/0.54         (((k1_tarski @ sk_B) = (k3_xboole_0 @ X0 @ (k1_tarski @ sk_B)))
% 0.21/0.54          | (r2_hidden @ 
% 0.21/0.54             (sk_D @ (k1_tarski @ sk_B) @ (k1_tarski @ sk_B) @ X0) @ sk_A))),
% 0.21/0.54      inference('sup-', [status(thm)], ['18', '22'])).
% 0.21/0.54  thf('24', plain,
% 0.21/0.54      (![X0 : $i]:
% 0.21/0.54         ((r2_hidden @ sk_B @ sk_A)
% 0.21/0.54          | ((k1_tarski @ sk_B) = (k3_xboole_0 @ X0 @ (k1_tarski @ sk_B)))
% 0.21/0.54          | ((k1_tarski @ sk_B) = (k3_xboole_0 @ X0 @ (k1_tarski @ sk_B))))),
% 0.21/0.54      inference('sup+', [status(thm)], ['17', '23'])).
% 0.21/0.54  thf('25', plain,
% 0.21/0.54      (![X0 : $i]:
% 0.21/0.54         (((k1_tarski @ sk_B) = (k3_xboole_0 @ X0 @ (k1_tarski @ sk_B)))
% 0.21/0.54          | (r2_hidden @ sk_B @ sk_A))),
% 0.21/0.54      inference('simplify', [status(thm)], ['24'])).
% 0.21/0.54  thf('26', plain, (~ (r2_hidden @ sk_B @ sk_A)),
% 0.21/0.54      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.54  thf('27', plain,
% 0.21/0.54      (![X0 : $i]:
% 0.21/0.54         ((k1_tarski @ sk_B) = (k3_xboole_0 @ X0 @ (k1_tarski @ sk_B)))),
% 0.21/0.54      inference('clc', [status(thm)], ['25', '26'])).
% 0.21/0.54  thf('28', plain,
% 0.21/0.54      (![X1 : $i, X2 : $i, X4 : $i]:
% 0.21/0.54         ((r2_hidden @ X4 @ X1) | ~ (r2_hidden @ X4 @ (k3_xboole_0 @ X1 @ X2)))),
% 0.21/0.54      inference('simplify', [status(thm)], ['20'])).
% 0.21/0.54  thf('29', plain,
% 0.21/0.54      (![X0 : $i, X1 : $i]:
% 0.21/0.54         (~ (r2_hidden @ X1 @ (k1_tarski @ sk_B)) | (r2_hidden @ X1 @ X0))),
% 0.21/0.54      inference('sup-', [status(thm)], ['27', '28'])).
% 0.21/0.54  thf('30', plain, (![X0 : $i]: (r2_hidden @ sk_B @ X0)),
% 0.21/0.54      inference('sup-', [status(thm)], ['7', '29'])).
% 0.21/0.54  thf('31', plain, ($false), inference('demod', [status(thm)], ['0', '30'])).
% 0.21/0.54  
% 0.21/0.54  % SZS output end Refutation
% 0.21/0.54  
% 0.21/0.54  % Zipperpin 1.5 exiting
%------------------------------------------------------------------------------
