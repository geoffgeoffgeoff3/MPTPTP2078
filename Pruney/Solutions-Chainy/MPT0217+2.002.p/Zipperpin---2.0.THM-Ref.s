%------------------------------------------------------------------------------
% File       : Zipperpin---2.0
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_portfolio.sh /export/starexec/sandbox/benchmark/theBenchmark.p /export/starexec/sandbox/tmp/tmp.I9jlaVZssq

% Computer   : n023.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 13:28:59 EST 2020

% Result     : Theorem 0.21s
% Output     : Refutation 0.21s
% Verified   : 
% Statistics : Number of formulae       :   35 (  42 expanded)
%              Number of leaves         :   14 (  19 expanded)
%              Depth                    :    9
%              Number of atoms          :  237 ( 325 expanded)
%              Number of equality atoms :   31 (  48 expanded)
%              Maximal formula depth    :   13 (   7 average)

% Comments   : 
%------------------------------------------------------------------------------
thf(r2_hidden_type,type,(
    r2_hidden: $i > $i > $o )).

thf(k2_tarski_type,type,(
    k2_tarski: $i > $i > $i )).

thf(sk_A_type,type,(
    sk_A: $i )).

thf(sk_C_type,type,(
    sk_C: $i )).

thf(sk_B_type,type,(
    sk_B: $i )).

thf(sk_D_type,type,(
    sk_D: $i )).

thf(zip_tseitin_0_type,type,(
    zip_tseitin_0: $i > $i > $i > $i > $o )).

thf(k1_enumset1_type,type,(
    k1_enumset1: $i > $i > $i > $i )).

thf(d1_enumset1,axiom,(
    ! [A: $i,B: $i,C: $i,D: $i] :
      ( ( D
        = ( k1_enumset1 @ A @ B @ C ) )
    <=> ! [E: $i] :
          ( ( r2_hidden @ E @ D )
        <=> ~ ( ( E != C )
              & ( E != B )
              & ( E != A ) ) ) ) )).

thf(zf_stmt_0,axiom,(
    ! [E: $i,C: $i,B: $i,A: $i] :
      ( ( zip_tseitin_0 @ E @ C @ B @ A )
    <=> ( ( E != A )
        & ( E != B )
        & ( E != C ) ) ) )).

thf('0',plain,(
    ! [X1: $i,X2: $i,X3: $i,X4: $i] :
      ( ( zip_tseitin_0 @ X1 @ X2 @ X3 @ X4 )
      | ( X1 = X2 )
      | ( X1 = X3 )
      | ( X1 = X4 ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(t10_zfmisc_1,conjecture,(
    ! [A: $i,B: $i,C: $i,D: $i] :
      ~ ( ( ( k2_tarski @ A @ B )
          = ( k2_tarski @ C @ D ) )
        & ( A != C )
        & ( A != D ) ) )).

thf(zf_stmt_1,negated_conjecture,(
    ~ ! [A: $i,B: $i,C: $i,D: $i] :
        ~ ( ( ( k2_tarski @ A @ B )
            = ( k2_tarski @ C @ D ) )
          & ( A != C )
          & ( A != D ) ) ),
    inference('cnf.neg',[status(esa)],[t10_zfmisc_1])).

thf('1',plain,
    ( ( k2_tarski @ sk_A @ sk_B )
    = ( k2_tarski @ sk_C @ sk_D ) ),
    inference(cnf,[status(esa)],[zf_stmt_1])).

thf(t70_enumset1,axiom,(
    ! [A: $i,B: $i] :
      ( ( k1_enumset1 @ A @ A @ B )
      = ( k2_tarski @ A @ B ) ) )).

thf('2',plain,(
    ! [X12: $i,X13: $i] :
      ( ( k1_enumset1 @ X12 @ X12 @ X13 )
      = ( k2_tarski @ X12 @ X13 ) ) ),
    inference(cnf,[status(esa)],[t70_enumset1])).

thf(zf_stmt_2,type,(
    zip_tseitin_0: $i > $i > $i > $i > $o )).

thf(zf_stmt_3,axiom,(
    ! [A: $i,B: $i,C: $i,D: $i] :
      ( ( D
        = ( k1_enumset1 @ A @ B @ C ) )
    <=> ! [E: $i] :
          ( ( r2_hidden @ E @ D )
        <=> ~ ( zip_tseitin_0 @ E @ C @ B @ A ) ) ) )).

thf('3',plain,(
    ! [X5: $i,X6: $i,X7: $i,X8: $i,X9: $i] :
      ( ( zip_tseitin_0 @ X5 @ X6 @ X7 @ X8 )
      | ( r2_hidden @ X5 @ X9 )
      | ( X9
       != ( k1_enumset1 @ X8 @ X7 @ X6 ) ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_3])).

thf('4',plain,(
    ! [X5: $i,X6: $i,X7: $i,X8: $i] :
      ( ( r2_hidden @ X5 @ ( k1_enumset1 @ X8 @ X7 @ X6 ) )
      | ( zip_tseitin_0 @ X5 @ X6 @ X7 @ X8 ) ) ),
    inference(simplify,[status(thm)],['3'])).

thf('5',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( ( r2_hidden @ X2 @ ( k2_tarski @ X1 @ X0 ) )
      | ( zip_tseitin_0 @ X2 @ X0 @ X1 @ X1 ) ) ),
    inference('sup+',[status(thm)],['2','4'])).

thf('6',plain,(
    ! [X0: $i,X1: $i,X2: $i,X3: $i] :
      ( ( X1 != X0 )
      | ~ ( zip_tseitin_0 @ X1 @ X2 @ X3 @ X0 ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('7',plain,(
    ! [X0: $i,X2: $i,X3: $i] :
      ~ ( zip_tseitin_0 @ X0 @ X2 @ X3 @ X0 ) ),
    inference(simplify,[status(thm)],['6'])).

thf('8',plain,(
    ! [X0: $i,X1: $i] :
      ( r2_hidden @ X0 @ ( k2_tarski @ X0 @ X1 ) ) ),
    inference('sup-',[status(thm)],['5','7'])).

thf('9',plain,(
    r2_hidden @ sk_A @ ( k2_tarski @ sk_C @ sk_D ) ),
    inference('sup+',[status(thm)],['1','8'])).

thf('10',plain,(
    ! [X12: $i,X13: $i] :
      ( ( k1_enumset1 @ X12 @ X12 @ X13 )
      = ( k2_tarski @ X12 @ X13 ) ) ),
    inference(cnf,[status(esa)],[t70_enumset1])).

thf('11',plain,(
    ! [X6: $i,X7: $i,X8: $i,X9: $i,X10: $i] :
      ( ~ ( r2_hidden @ X10 @ X9 )
      | ~ ( zip_tseitin_0 @ X10 @ X6 @ X7 @ X8 )
      | ( X9
       != ( k1_enumset1 @ X8 @ X7 @ X6 ) ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_3])).

thf('12',plain,(
    ! [X6: $i,X7: $i,X8: $i,X10: $i] :
      ( ~ ( zip_tseitin_0 @ X10 @ X6 @ X7 @ X8 )
      | ~ ( r2_hidden @ X10 @ ( k1_enumset1 @ X8 @ X7 @ X6 ) ) ) ),
    inference(simplify,[status(thm)],['11'])).

thf('13',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( ~ ( r2_hidden @ X2 @ ( k2_tarski @ X1 @ X0 ) )
      | ~ ( zip_tseitin_0 @ X2 @ X0 @ X1 @ X1 ) ) ),
    inference('sup-',[status(thm)],['10','12'])).

thf('14',plain,(
    ~ ( zip_tseitin_0 @ sk_A @ sk_D @ sk_C @ sk_C ) ),
    inference('sup-',[status(thm)],['9','13'])).

thf('15',plain,
    ( ( sk_A = sk_C )
    | ( sk_A = sk_C )
    | ( sk_A = sk_D ) ),
    inference('sup-',[status(thm)],['0','14'])).

thf('16',plain,
    ( ( sk_A = sk_D )
    | ( sk_A = sk_C ) ),
    inference(simplify,[status(thm)],['15'])).

thf('17',plain,(
    sk_A != sk_C ),
    inference(cnf,[status(esa)],[zf_stmt_1])).

thf('18',plain,(
    sk_A != sk_D ),
    inference(cnf,[status(esa)],[zf_stmt_1])).

thf('19',plain,(
    $false ),
    inference('simplify_reflect-',[status(thm)],['16','17','18'])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.12/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.12/0.13  % Command    : run_portfolio.sh /export/starexec/sandbox/benchmark/theBenchmark.p /export/starexec/sandbox/tmp/tmp.I9jlaVZssq
% 0.13/0.34  % Computer   : n023.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % DateTime   : Tue Dec  1 11:41:21 EST 2020
% 0.13/0.34  % CPUTime    : 
% 0.13/0.34  % Running portfolio for 600 s
% 0.13/0.34  % File         : /export/starexec/sandbox/benchmark/theBenchmark.p
% 0.13/0.35  % Number of cores: 8
% 0.13/0.35  % Python version: Python 3.6.8
% 0.13/0.35  % Running in FO mode
% 0.21/0.48  % Running /export/starexec/sandbox/solver/bin/fo/fo7.sh for 78
% 0.21/0.48  % Solved by: fo/fo7.sh
% 0.21/0.48  To remain in the chosen logic fragment, unification with booleans has been disabled.
% 0.21/0.48  % done 38 iterations in 0.022s
% 0.21/0.48  % SZS status Theorem for '/export/starexec/sandbox/benchmark/theBenchmark.p'
% 0.21/0.48  % SZS output start Refutation
% 0.21/0.48  thf(r2_hidden_type, type, r2_hidden: $i > $i > $o).
% 0.21/0.48  thf(k2_tarski_type, type, k2_tarski: $i > $i > $i).
% 0.21/0.48  thf(sk_A_type, type, sk_A: $i).
% 0.21/0.48  thf(sk_C_type, type, sk_C: $i).
% 0.21/0.48  thf(sk_B_type, type, sk_B: $i).
% 0.21/0.48  thf(sk_D_type, type, sk_D: $i).
% 0.21/0.48  thf(zip_tseitin_0_type, type, zip_tseitin_0: $i > $i > $i > $i > $o).
% 0.21/0.48  thf(k1_enumset1_type, type, k1_enumset1: $i > $i > $i > $i).
% 0.21/0.48  thf(d1_enumset1, axiom,
% 0.21/0.48    (![A:$i,B:$i,C:$i,D:$i]:
% 0.21/0.48     ( ( ( D ) = ( k1_enumset1 @ A @ B @ C ) ) <=>
% 0.21/0.48       ( ![E:$i]:
% 0.21/0.48         ( ( r2_hidden @ E @ D ) <=>
% 0.21/0.48           ( ~( ( ( E ) != ( C ) ) & ( ( E ) != ( B ) ) & ( ( E ) != ( A ) ) ) ) ) ) ))).
% 0.21/0.48  thf(zf_stmt_0, axiom,
% 0.21/0.48    (![E:$i,C:$i,B:$i,A:$i]:
% 0.21/0.48     ( ( zip_tseitin_0 @ E @ C @ B @ A ) <=>
% 0.21/0.48       ( ( ( E ) != ( A ) ) & ( ( E ) != ( B ) ) & ( ( E ) != ( C ) ) ) ))).
% 0.21/0.48  thf('0', plain,
% 0.21/0.48      (![X1 : $i, X2 : $i, X3 : $i, X4 : $i]:
% 0.21/0.48         ((zip_tseitin_0 @ X1 @ X2 @ X3 @ X4)
% 0.21/0.48          | ((X1) = (X2))
% 0.21/0.48          | ((X1) = (X3))
% 0.21/0.48          | ((X1) = (X4)))),
% 0.21/0.48      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.48  thf(t10_zfmisc_1, conjecture,
% 0.21/0.48    (![A:$i,B:$i,C:$i,D:$i]:
% 0.21/0.48     ( ~( ( ( k2_tarski @ A @ B ) = ( k2_tarski @ C @ D ) ) & 
% 0.21/0.48          ( ( A ) != ( C ) ) & ( ( A ) != ( D ) ) ) ))).
% 0.21/0.48  thf(zf_stmt_1, negated_conjecture,
% 0.21/0.48    (~( ![A:$i,B:$i,C:$i,D:$i]:
% 0.21/0.48        ( ~( ( ( k2_tarski @ A @ B ) = ( k2_tarski @ C @ D ) ) & 
% 0.21/0.48             ( ( A ) != ( C ) ) & ( ( A ) != ( D ) ) ) ) )),
% 0.21/0.48    inference('cnf.neg', [status(esa)], [t10_zfmisc_1])).
% 0.21/0.48  thf('1', plain, (((k2_tarski @ sk_A @ sk_B) = (k2_tarski @ sk_C @ sk_D))),
% 0.21/0.48      inference('cnf', [status(esa)], [zf_stmt_1])).
% 0.21/0.48  thf(t70_enumset1, axiom,
% 0.21/0.48    (![A:$i,B:$i]: ( ( k1_enumset1 @ A @ A @ B ) = ( k2_tarski @ A @ B ) ))).
% 0.21/0.48  thf('2', plain,
% 0.21/0.48      (![X12 : $i, X13 : $i]:
% 0.21/0.48         ((k1_enumset1 @ X12 @ X12 @ X13) = (k2_tarski @ X12 @ X13))),
% 0.21/0.48      inference('cnf', [status(esa)], [t70_enumset1])).
% 0.21/0.48  thf(zf_stmt_2, type, zip_tseitin_0 : $i > $i > $i > $i > $o).
% 0.21/0.48  thf(zf_stmt_3, axiom,
% 0.21/0.48    (![A:$i,B:$i,C:$i,D:$i]:
% 0.21/0.48     ( ( ( D ) = ( k1_enumset1 @ A @ B @ C ) ) <=>
% 0.21/0.48       ( ![E:$i]:
% 0.21/0.48         ( ( r2_hidden @ E @ D ) <=> ( ~( zip_tseitin_0 @ E @ C @ B @ A ) ) ) ) ))).
% 0.21/0.48  thf('3', plain,
% 0.21/0.48      (![X5 : $i, X6 : $i, X7 : $i, X8 : $i, X9 : $i]:
% 0.21/0.48         ((zip_tseitin_0 @ X5 @ X6 @ X7 @ X8)
% 0.21/0.48          | (r2_hidden @ X5 @ X9)
% 0.21/0.48          | ((X9) != (k1_enumset1 @ X8 @ X7 @ X6)))),
% 0.21/0.48      inference('cnf', [status(esa)], [zf_stmt_3])).
% 0.21/0.48  thf('4', plain,
% 0.21/0.48      (![X5 : $i, X6 : $i, X7 : $i, X8 : $i]:
% 0.21/0.48         ((r2_hidden @ X5 @ (k1_enumset1 @ X8 @ X7 @ X6))
% 0.21/0.48          | (zip_tseitin_0 @ X5 @ X6 @ X7 @ X8))),
% 0.21/0.48      inference('simplify', [status(thm)], ['3'])).
% 0.21/0.48  thf('5', plain,
% 0.21/0.48      (![X0 : $i, X1 : $i, X2 : $i]:
% 0.21/0.48         ((r2_hidden @ X2 @ (k2_tarski @ X1 @ X0))
% 0.21/0.48          | (zip_tseitin_0 @ X2 @ X0 @ X1 @ X1))),
% 0.21/0.48      inference('sup+', [status(thm)], ['2', '4'])).
% 0.21/0.48  thf('6', plain,
% 0.21/0.48      (![X0 : $i, X1 : $i, X2 : $i, X3 : $i]:
% 0.21/0.48         (((X1) != (X0)) | ~ (zip_tseitin_0 @ X1 @ X2 @ X3 @ X0))),
% 0.21/0.48      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.48  thf('7', plain,
% 0.21/0.48      (![X0 : $i, X2 : $i, X3 : $i]: ~ (zip_tseitin_0 @ X0 @ X2 @ X3 @ X0)),
% 0.21/0.48      inference('simplify', [status(thm)], ['6'])).
% 0.21/0.48  thf('8', plain,
% 0.21/0.48      (![X0 : $i, X1 : $i]: (r2_hidden @ X0 @ (k2_tarski @ X0 @ X1))),
% 0.21/0.48      inference('sup-', [status(thm)], ['5', '7'])).
% 0.21/0.48  thf('9', plain, ((r2_hidden @ sk_A @ (k2_tarski @ sk_C @ sk_D))),
% 0.21/0.48      inference('sup+', [status(thm)], ['1', '8'])).
% 0.21/0.48  thf('10', plain,
% 0.21/0.48      (![X12 : $i, X13 : $i]:
% 0.21/0.48         ((k1_enumset1 @ X12 @ X12 @ X13) = (k2_tarski @ X12 @ X13))),
% 0.21/0.48      inference('cnf', [status(esa)], [t70_enumset1])).
% 0.21/0.48  thf('11', plain,
% 0.21/0.48      (![X6 : $i, X7 : $i, X8 : $i, X9 : $i, X10 : $i]:
% 0.21/0.48         (~ (r2_hidden @ X10 @ X9)
% 0.21/0.48          | ~ (zip_tseitin_0 @ X10 @ X6 @ X7 @ X8)
% 0.21/0.48          | ((X9) != (k1_enumset1 @ X8 @ X7 @ X6)))),
% 0.21/0.48      inference('cnf', [status(esa)], [zf_stmt_3])).
% 0.21/0.48  thf('12', plain,
% 0.21/0.48      (![X6 : $i, X7 : $i, X8 : $i, X10 : $i]:
% 0.21/0.48         (~ (zip_tseitin_0 @ X10 @ X6 @ X7 @ X8)
% 0.21/0.48          | ~ (r2_hidden @ X10 @ (k1_enumset1 @ X8 @ X7 @ X6)))),
% 0.21/0.48      inference('simplify', [status(thm)], ['11'])).
% 0.21/0.48  thf('13', plain,
% 0.21/0.48      (![X0 : $i, X1 : $i, X2 : $i]:
% 0.21/0.48         (~ (r2_hidden @ X2 @ (k2_tarski @ X1 @ X0))
% 0.21/0.48          | ~ (zip_tseitin_0 @ X2 @ X0 @ X1 @ X1))),
% 0.21/0.48      inference('sup-', [status(thm)], ['10', '12'])).
% 0.21/0.48  thf('14', plain, (~ (zip_tseitin_0 @ sk_A @ sk_D @ sk_C @ sk_C)),
% 0.21/0.48      inference('sup-', [status(thm)], ['9', '13'])).
% 0.21/0.48  thf('15', plain,
% 0.21/0.48      ((((sk_A) = (sk_C)) | ((sk_A) = (sk_C)) | ((sk_A) = (sk_D)))),
% 0.21/0.48      inference('sup-', [status(thm)], ['0', '14'])).
% 0.21/0.48  thf('16', plain, ((((sk_A) = (sk_D)) | ((sk_A) = (sk_C)))),
% 0.21/0.48      inference('simplify', [status(thm)], ['15'])).
% 0.21/0.48  thf('17', plain, (((sk_A) != (sk_C))),
% 0.21/0.48      inference('cnf', [status(esa)], [zf_stmt_1])).
% 0.21/0.48  thf('18', plain, (((sk_A) != (sk_D))),
% 0.21/0.48      inference('cnf', [status(esa)], [zf_stmt_1])).
% 0.21/0.48  thf('19', plain, ($false),
% 0.21/0.48      inference('simplify_reflect-', [status(thm)], ['16', '17', '18'])).
% 0.21/0.48  
% 0.21/0.48  % SZS output end Refutation
% 0.21/0.48  
% 0.21/0.49  % Zipperpin 1.5 exiting
%------------------------------------------------------------------------------
