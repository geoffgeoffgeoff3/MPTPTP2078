%------------------------------------------------------------------------------
% File       : Zipperpin---2.0
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_portfolio.sh /export/starexec/sandbox2/benchmark/theBenchmark.p /export/starexec/sandbox2/tmp/tmp.Bcstevjwlr

% Computer   : n002.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 13:30:12 EST 2020

% Result     : Theorem 0.20s
% Output     : Refutation 0.20s
% Verified   : 
% Statistics : Number of formulae       :   26 (  31 expanded)
%              Number of leaves         :   11 (  14 expanded)
%              Depth                    :    6
%              Number of atoms          :  146 ( 208 expanded)
%              Number of equality atoms :   20 (  31 expanded)
%              Maximal formula depth    :   12 (   6 average)

% Comments   : 
%------------------------------------------------------------------------------
thf(r1_tarski_type,type,(
    r1_tarski: $i > $i > $o )).

thf(sk_C_1_type,type,(
    sk_C_1: $i )).

thf(k2_tarski_type,type,(
    k2_tarski: $i > $i > $i )).

thf(k1_tarski_type,type,(
    k1_tarski: $i > $i )).

thf(r2_hidden_type,type,(
    r2_hidden: $i > $i > $o )).

thf(sk_A_type,type,(
    sk_A: $i )).

thf(sk_B_type,type,(
    sk_B: $i )).

thf(t69_enumset1,axiom,(
    ! [A: $i] :
      ( ( k2_tarski @ A @ A )
      = ( k1_tarski @ A ) ) )).

thf('0',plain,(
    ! [X42: $i] :
      ( ( k2_tarski @ X42 @ X42 )
      = ( k1_tarski @ X42 ) ) ),
    inference(cnf,[status(esa)],[t69_enumset1])).

thf(d2_tarski,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( C
        = ( k2_tarski @ A @ B ) )
    <=> ! [D: $i] :
          ( ( r2_hidden @ D @ C )
        <=> ( ( D = A )
            | ( D = B ) ) ) ) )).

thf('1',plain,(
    ! [X11: $i,X12: $i,X13: $i,X14: $i] :
      ( ( X12 != X11 )
      | ( r2_hidden @ X12 @ X13 )
      | ( X13
       != ( k2_tarski @ X14 @ X11 ) ) ) ),
    inference(cnf,[status(esa)],[d2_tarski])).

thf('2',plain,(
    ! [X11: $i,X14: $i] :
      ( r2_hidden @ X11 @ ( k2_tarski @ X14 @ X11 ) ) ),
    inference(simplify,[status(thm)],['1'])).

thf('3',plain,(
    ! [X0: $i] :
      ( r2_hidden @ X0 @ ( k1_tarski @ X0 ) ) ),
    inference('sup+',[status(thm)],['0','2'])).

thf(t25_zfmisc_1,conjecture,(
    ! [A: $i,B: $i,C: $i] :
      ~ ( ( r1_tarski @ ( k1_tarski @ A ) @ ( k2_tarski @ B @ C ) )
        & ( A != B )
        & ( A != C ) ) )).

thf(zf_stmt_0,negated_conjecture,(
    ~ ! [A: $i,B: $i,C: $i] :
        ~ ( ( r1_tarski @ ( k1_tarski @ A ) @ ( k2_tarski @ B @ C ) )
          & ( A != B )
          & ( A != C ) ) ),
    inference('cnf.neg',[status(esa)],[t25_zfmisc_1])).

thf('4',plain,(
    r1_tarski @ ( k1_tarski @ sk_A ) @ ( k2_tarski @ sk_B @ sk_C_1 ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(d3_tarski,axiom,(
    ! [A: $i,B: $i] :
      ( ( r1_tarski @ A @ B )
    <=> ! [C: $i] :
          ( ( r2_hidden @ C @ A )
         => ( r2_hidden @ C @ B ) ) ) )).

thf('5',plain,(
    ! [X2: $i,X3: $i,X4: $i] :
      ( ~ ( r2_hidden @ X2 @ X3 )
      | ( r2_hidden @ X2 @ X4 )
      | ~ ( r1_tarski @ X3 @ X4 ) ) ),
    inference(cnf,[status(esa)],[d3_tarski])).

thf('6',plain,(
    ! [X0: $i] :
      ( ( r2_hidden @ X0 @ ( k2_tarski @ sk_B @ sk_C_1 ) )
      | ~ ( r2_hidden @ X0 @ ( k1_tarski @ sk_A ) ) ) ),
    inference('sup-',[status(thm)],['4','5'])).

thf('7',plain,(
    r2_hidden @ sk_A @ ( k2_tarski @ sk_B @ sk_C_1 ) ),
    inference('sup-',[status(thm)],['3','6'])).

thf('8',plain,(
    ! [X11: $i,X13: $i,X14: $i,X15: $i] :
      ( ~ ( r2_hidden @ X15 @ X13 )
      | ( X15 = X14 )
      | ( X15 = X11 )
      | ( X13
       != ( k2_tarski @ X14 @ X11 ) ) ) ),
    inference(cnf,[status(esa)],[d2_tarski])).

thf('9',plain,(
    ! [X11: $i,X14: $i,X15: $i] :
      ( ( X15 = X11 )
      | ( X15 = X14 )
      | ~ ( r2_hidden @ X15 @ ( k2_tarski @ X14 @ X11 ) ) ) ),
    inference(simplify,[status(thm)],['8'])).

thf('10',plain,
    ( ( sk_A = sk_B )
    | ( sk_A = sk_C_1 ) ),
    inference('sup-',[status(thm)],['7','9'])).

thf('11',plain,(
    sk_A != sk_C_1 ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('12',plain,(
    sk_A != sk_B ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('13',plain,(
    $false ),
    inference('simplify_reflect-',[status(thm)],['10','11','12'])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.03/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.03/0.13  % Command    : run_portfolio.sh /export/starexec/sandbox2/benchmark/theBenchmark.p /export/starexec/sandbox2/tmp/tmp.Bcstevjwlr
% 0.12/0.34  % Computer   : n002.cluster.edu
% 0.12/0.34  % Model      : x86_64 x86_64
% 0.12/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.12/0.34  % Memory     : 8042.1875MB
% 0.12/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.12/0.34  % CPULimit   : 60
% 0.12/0.34  % DateTime   : Tue Dec  1 20:09:52 EST 2020
% 0.12/0.34  % CPUTime    : 
% 0.12/0.34  % Running portfolio for 600 s
% 0.12/0.34  % File         : /export/starexec/sandbox2/benchmark/theBenchmark.p
% 0.12/0.34  % Number of cores: 8
% 0.12/0.35  % Python version: Python 3.6.8
% 0.12/0.35  % Running in FO mode
% 0.20/0.47  % Running /export/starexec/sandbox2/solver/bin/fo/fo7.sh for 78
% 0.20/0.47  % Solved by: fo/fo7.sh
% 0.20/0.47  To remain in the chosen logic fragment, unification with booleans has been disabled.
% 0.20/0.47  % done 24 iterations in 0.017s
% 0.20/0.47  % SZS status Theorem for '/export/starexec/sandbox2/benchmark/theBenchmark.p'
% 0.20/0.47  % SZS output start Refutation
% 0.20/0.47  thf(r1_tarski_type, type, r1_tarski: $i > $i > $o).
% 0.20/0.47  thf(sk_C_1_type, type, sk_C_1: $i).
% 0.20/0.47  thf(k2_tarski_type, type, k2_tarski: $i > $i > $i).
% 0.20/0.47  thf(k1_tarski_type, type, k1_tarski: $i > $i).
% 0.20/0.47  thf(r2_hidden_type, type, r2_hidden: $i > $i > $o).
% 0.20/0.47  thf(sk_A_type, type, sk_A: $i).
% 0.20/0.47  thf(sk_B_type, type, sk_B: $i).
% 0.20/0.47  thf(t69_enumset1, axiom,
% 0.20/0.47    (![A:$i]: ( ( k2_tarski @ A @ A ) = ( k1_tarski @ A ) ))).
% 0.20/0.47  thf('0', plain, (![X42 : $i]: ((k2_tarski @ X42 @ X42) = (k1_tarski @ X42))),
% 0.20/0.47      inference('cnf', [status(esa)], [t69_enumset1])).
% 0.20/0.47  thf(d2_tarski, axiom,
% 0.20/0.47    (![A:$i,B:$i,C:$i]:
% 0.20/0.47     ( ( ( C ) = ( k2_tarski @ A @ B ) ) <=>
% 0.20/0.47       ( ![D:$i]:
% 0.20/0.47         ( ( r2_hidden @ D @ C ) <=> ( ( ( D ) = ( A ) ) | ( ( D ) = ( B ) ) ) ) ) ))).
% 0.20/0.47  thf('1', plain,
% 0.20/0.47      (![X11 : $i, X12 : $i, X13 : $i, X14 : $i]:
% 0.20/0.47         (((X12) != (X11))
% 0.20/0.47          | (r2_hidden @ X12 @ X13)
% 0.20/0.47          | ((X13) != (k2_tarski @ X14 @ X11)))),
% 0.20/0.47      inference('cnf', [status(esa)], [d2_tarski])).
% 0.20/0.47  thf('2', plain,
% 0.20/0.47      (![X11 : $i, X14 : $i]: (r2_hidden @ X11 @ (k2_tarski @ X14 @ X11))),
% 0.20/0.47      inference('simplify', [status(thm)], ['1'])).
% 0.20/0.47  thf('3', plain, (![X0 : $i]: (r2_hidden @ X0 @ (k1_tarski @ X0))),
% 0.20/0.47      inference('sup+', [status(thm)], ['0', '2'])).
% 0.20/0.47  thf(t25_zfmisc_1, conjecture,
% 0.20/0.47    (![A:$i,B:$i,C:$i]:
% 0.20/0.47     ( ~( ( r1_tarski @ ( k1_tarski @ A ) @ ( k2_tarski @ B @ C ) ) & 
% 0.20/0.47          ( ( A ) != ( B ) ) & ( ( A ) != ( C ) ) ) ))).
% 0.20/0.47  thf(zf_stmt_0, negated_conjecture,
% 0.20/0.47    (~( ![A:$i,B:$i,C:$i]:
% 0.20/0.47        ( ~( ( r1_tarski @ ( k1_tarski @ A ) @ ( k2_tarski @ B @ C ) ) & 
% 0.20/0.47             ( ( A ) != ( B ) ) & ( ( A ) != ( C ) ) ) ) )),
% 0.20/0.47    inference('cnf.neg', [status(esa)], [t25_zfmisc_1])).
% 0.20/0.47  thf('4', plain,
% 0.20/0.47      ((r1_tarski @ (k1_tarski @ sk_A) @ (k2_tarski @ sk_B @ sk_C_1))),
% 0.20/0.47      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.47  thf(d3_tarski, axiom,
% 0.20/0.47    (![A:$i,B:$i]:
% 0.20/0.47     ( ( r1_tarski @ A @ B ) <=>
% 0.20/0.47       ( ![C:$i]: ( ( r2_hidden @ C @ A ) => ( r2_hidden @ C @ B ) ) ) ))).
% 0.20/0.47  thf('5', plain,
% 0.20/0.47      (![X2 : $i, X3 : $i, X4 : $i]:
% 0.20/0.47         (~ (r2_hidden @ X2 @ X3)
% 0.20/0.47          | (r2_hidden @ X2 @ X4)
% 0.20/0.47          | ~ (r1_tarski @ X3 @ X4))),
% 0.20/0.47      inference('cnf', [status(esa)], [d3_tarski])).
% 0.20/0.47  thf('6', plain,
% 0.20/0.47      (![X0 : $i]:
% 0.20/0.47         ((r2_hidden @ X0 @ (k2_tarski @ sk_B @ sk_C_1))
% 0.20/0.47          | ~ (r2_hidden @ X0 @ (k1_tarski @ sk_A)))),
% 0.20/0.47      inference('sup-', [status(thm)], ['4', '5'])).
% 0.20/0.47  thf('7', plain, ((r2_hidden @ sk_A @ (k2_tarski @ sk_B @ sk_C_1))),
% 0.20/0.47      inference('sup-', [status(thm)], ['3', '6'])).
% 0.20/0.47  thf('8', plain,
% 0.20/0.47      (![X11 : $i, X13 : $i, X14 : $i, X15 : $i]:
% 0.20/0.47         (~ (r2_hidden @ X15 @ X13)
% 0.20/0.47          | ((X15) = (X14))
% 0.20/0.47          | ((X15) = (X11))
% 0.20/0.47          | ((X13) != (k2_tarski @ X14 @ X11)))),
% 0.20/0.47      inference('cnf', [status(esa)], [d2_tarski])).
% 0.20/0.47  thf('9', plain,
% 0.20/0.47      (![X11 : $i, X14 : $i, X15 : $i]:
% 0.20/0.47         (((X15) = (X11))
% 0.20/0.47          | ((X15) = (X14))
% 0.20/0.47          | ~ (r2_hidden @ X15 @ (k2_tarski @ X14 @ X11)))),
% 0.20/0.47      inference('simplify', [status(thm)], ['8'])).
% 0.20/0.47  thf('10', plain, ((((sk_A) = (sk_B)) | ((sk_A) = (sk_C_1)))),
% 0.20/0.47      inference('sup-', [status(thm)], ['7', '9'])).
% 0.20/0.47  thf('11', plain, (((sk_A) != (sk_C_1))),
% 0.20/0.47      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.47  thf('12', plain, (((sk_A) != (sk_B))),
% 0.20/0.47      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.47  thf('13', plain, ($false),
% 0.20/0.47      inference('simplify_reflect-', [status(thm)], ['10', '11', '12'])).
% 0.20/0.47  
% 0.20/0.47  % SZS output end Refutation
% 0.20/0.47  
% 0.20/0.48  % Zipperpin 1.5 exiting
%------------------------------------------------------------------------------
