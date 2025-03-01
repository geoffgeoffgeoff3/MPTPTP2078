%------------------------------------------------------------------------------
% File       : Zipperpin---2.0
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_portfolio.sh /export/starexec/sandbox/benchmark/theBenchmark.p /export/starexec/sandbox/tmp/tmp.Ip8n7Ie8p7

% Computer   : n002.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 13:50:37 EST 2020

% Result     : Theorem 0.22s
% Output     : Refutation 0.22s
% Verified   : 
% Statistics : Number of formulae       :   41 (  45 expanded)
%              Number of leaves         :   19 (  22 expanded)
%              Depth                    :    8
%              Number of atoms          :  222 ( 270 expanded)
%              Number of equality atoms :   12 (  14 expanded)
%              Maximal formula depth    :   13 (   6 average)

% Comments   : 
%------------------------------------------------------------------------------
thf(sk_C_type,type,(
    sk_C: $i > $i > $i )).

thf(sk_A_type,type,(
    sk_A: $i )).

thf(r2_hidden_type,type,(
    r2_hidden: $i > $i > $o )).

thf(k2_relat_1_type,type,(
    k2_relat_1: $i > $i )).

thf(k4_tarski_type,type,(
    k4_tarski: $i > $i > $i )).

thf(r1_xboole_0_type,type,(
    r1_xboole_0: $i > $i > $o )).

thf(sk_C_1_type,type,(
    sk_C_1: $i > $i )).

thf(sk_C_2_type,type,(
    sk_C_2: $i > $i > $i )).

thf(k2_tarski_type,type,(
    k2_tarski: $i > $i > $i )).

thf(sk_D_type,type,(
    sk_D: $i > $i > $i )).

thf(k1_xboole_0_type,type,(
    k1_xboole_0: $i )).

thf(k1_relat_1_type,type,(
    k1_relat_1: $i > $i )).

thf(d4_relat_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( B
        = ( k1_relat_1 @ A ) )
    <=> ! [C: $i] :
          ( ( r2_hidden @ C @ B )
        <=> ? [D: $i] :
              ( r2_hidden @ ( k4_tarski @ C @ D ) @ A ) ) ) )).

thf('0',plain,(
    ! [X13: $i,X16: $i] :
      ( ( X16
        = ( k1_relat_1 @ X13 ) )
      | ( r2_hidden @ ( k4_tarski @ ( sk_C_2 @ X16 @ X13 ) @ ( sk_D @ X16 @ X13 ) ) @ X13 )
      | ( r2_hidden @ ( sk_C_2 @ X16 @ X13 ) @ X16 ) ) ),
    inference(cnf,[status(esa)],[d4_relat_1])).

thf(t65_xboole_1,axiom,(
    ! [A: $i] :
      ( r1_xboole_0 @ A @ k1_xboole_0 ) )).

thf('1',plain,(
    ! [X4: $i] :
      ( r1_xboole_0 @ X4 @ k1_xboole_0 ) ),
    inference(cnf,[status(esa)],[t65_xboole_1])).

thf(t55_zfmisc_1,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ~ ( ( r1_xboole_0 @ ( k2_tarski @ A @ B ) @ C )
        & ( r2_hidden @ A @ C ) ) )).

thf('2',plain,(
    ! [X5: $i,X6: $i,X7: $i] :
      ( ~ ( r1_xboole_0 @ ( k2_tarski @ X5 @ X6 ) @ X7 )
      | ~ ( r2_hidden @ X5 @ X7 ) ) ),
    inference(cnf,[status(esa)],[t55_zfmisc_1])).

thf('3',plain,(
    ! [X1: $i] :
      ~ ( r2_hidden @ X1 @ k1_xboole_0 ) ),
    inference('sup-',[status(thm)],['1','2'])).

thf('4',plain,(
    ! [X0: $i] :
      ( ( r2_hidden @ ( sk_C_2 @ X0 @ k1_xboole_0 ) @ X0 )
      | ( X0
        = ( k1_relat_1 @ k1_xboole_0 ) ) ) ),
    inference('sup-',[status(thm)],['0','3'])).

thf(t60_relat_1,axiom,
    ( ( ( k2_relat_1 @ k1_xboole_0 )
      = k1_xboole_0 )
    & ( ( k1_relat_1 @ k1_xboole_0 )
      = k1_xboole_0 ) )).

thf('5',plain,
    ( ( k1_relat_1 @ k1_xboole_0 )
    = k1_xboole_0 ),
    inference(cnf,[status(esa)],[t60_relat_1])).

thf('6',plain,(
    ! [X0: $i] :
      ( ( r2_hidden @ ( sk_C_2 @ X0 @ k1_xboole_0 ) @ X0 )
      | ( X0 = k1_xboole_0 ) ) ),
    inference(demod,[status(thm)],['4','5'])).

thf(t7_tarski,axiom,(
    ! [A: $i,B: $i] :
      ~ ( ( r2_hidden @ A @ B )
        & ! [C: $i] :
            ~ ( ( r2_hidden @ C @ B )
              & ! [D: $i] :
                  ~ ( ( r2_hidden @ D @ B )
                    & ( r2_hidden @ D @ C ) ) ) ) )).

thf('7',plain,(
    ! [X8: $i,X9: $i] :
      ( ~ ( r2_hidden @ X8 @ X9 )
      | ( r2_hidden @ ( sk_C_1 @ X9 ) @ X9 ) ) ),
    inference(cnf,[status(esa)],[t7_tarski])).

thf('8',plain,(
    ! [X0: $i] :
      ( ( X0 = k1_xboole_0 )
      | ( r2_hidden @ ( sk_C_1 @ X0 ) @ X0 ) ) ),
    inference('sup-',[status(thm)],['6','7'])).

thf(t1_mcart_1,conjecture,(
    ! [A: $i] :
      ~ ( ( A != k1_xboole_0 )
        & ! [B: $i] :
            ~ ( ( r2_hidden @ B @ A )
              & ( r1_xboole_0 @ B @ A ) ) ) )).

thf(zf_stmt_0,negated_conjecture,(
    ~ ! [A: $i] :
        ~ ( ( A != k1_xboole_0 )
          & ! [B: $i] :
              ~ ( ( r2_hidden @ B @ A )
                & ( r1_xboole_0 @ B @ A ) ) ) ),
    inference('cnf.neg',[status(esa)],[t1_mcart_1])).

thf('9',plain,(
    ! [X18: $i] :
      ( ~ ( r2_hidden @ X18 @ sk_A )
      | ~ ( r1_xboole_0 @ X18 @ sk_A ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('10',plain,
    ( ( sk_A = k1_xboole_0 )
    | ~ ( r1_xboole_0 @ ( sk_C_1 @ sk_A ) @ sk_A ) ),
    inference('sup-',[status(thm)],['8','9'])).

thf('11',plain,(
    sk_A != k1_xboole_0 ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('12',plain,(
    ~ ( r1_xboole_0 @ ( sk_C_1 @ sk_A ) @ sk_A ) ),
    inference('simplify_reflect-',[status(thm)],['10','11'])).

thf(t3_xboole_0,axiom,(
    ! [A: $i,B: $i] :
      ( ~ ( ? [C: $i] :
              ( ( r2_hidden @ C @ B )
              & ( r2_hidden @ C @ A ) )
          & ( r1_xboole_0 @ A @ B ) )
      & ~ ( ~ ( r1_xboole_0 @ A @ B )
          & ! [C: $i] :
              ~ ( ( r2_hidden @ C @ A )
                & ( r2_hidden @ C @ B ) ) ) ) )).

thf('13',plain,(
    ! [X0: $i,X1: $i] :
      ( ( r1_xboole_0 @ X0 @ X1 )
      | ( r2_hidden @ ( sk_C @ X1 @ X0 ) @ X1 ) ) ),
    inference(cnf,[status(esa)],[t3_xboole_0])).

thf('14',plain,(
    ! [X0: $i,X1: $i] :
      ( ( r1_xboole_0 @ X0 @ X1 )
      | ( r2_hidden @ ( sk_C @ X1 @ X0 ) @ X0 ) ) ),
    inference(cnf,[status(esa)],[t3_xboole_0])).

thf('15',plain,(
    ! [X8: $i,X9: $i,X10: $i] :
      ( ~ ( r2_hidden @ X8 @ X9 )
      | ~ ( r2_hidden @ X10 @ X9 )
      | ~ ( r2_hidden @ X10 @ ( sk_C_1 @ X9 ) ) ) ),
    inference(cnf,[status(esa)],[t7_tarski])).

thf('16',plain,(
    ! [X0: $i,X1: $i] :
      ( ~ ( r2_hidden @ X1 @ ( sk_C_1 @ X0 ) )
      | ~ ( r2_hidden @ X1 @ X0 ) ) ),
    inference(condensation,[status(thm)],['15'])).

thf('17',plain,(
    ! [X0: $i,X1: $i] :
      ( ( r1_xboole_0 @ ( sk_C_1 @ X0 ) @ X1 )
      | ~ ( r2_hidden @ ( sk_C @ X1 @ ( sk_C_1 @ X0 ) ) @ X0 ) ) ),
    inference('sup-',[status(thm)],['14','16'])).

thf('18',plain,(
    ! [X0: $i] :
      ( ( r1_xboole_0 @ ( sk_C_1 @ X0 ) @ X0 )
      | ( r1_xboole_0 @ ( sk_C_1 @ X0 ) @ X0 ) ) ),
    inference('sup-',[status(thm)],['13','17'])).

thf('19',plain,(
    ! [X0: $i] :
      ( r1_xboole_0 @ ( sk_C_1 @ X0 ) @ X0 ) ),
    inference(simplify,[status(thm)],['18'])).

thf('20',plain,(
    $false ),
    inference(demod,[status(thm)],['12','19'])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.03/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.03/0.13  % Command    : run_portfolio.sh /export/starexec/sandbox/benchmark/theBenchmark.p /export/starexec/sandbox/tmp/tmp.Ip8n7Ie8p7
% 0.14/0.34  % Computer   : n002.cluster.edu
% 0.14/0.34  % Model      : x86_64 x86_64
% 0.14/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.14/0.34  % Memory     : 8042.1875MB
% 0.14/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.14/0.34  % CPULimit   : 60
% 0.14/0.34  % DateTime   : Tue Dec  1 14:08:37 EST 2020
% 0.14/0.35  % CPUTime    : 
% 0.14/0.35  % Running portfolio for 600 s
% 0.14/0.35  % File         : /export/starexec/sandbox/benchmark/theBenchmark.p
% 0.14/0.35  % Number of cores: 8
% 0.14/0.35  % Python version: Python 3.6.8
% 0.14/0.35  % Running in FO mode
% 0.22/0.45  % Running /export/starexec/sandbox/solver/bin/fo/fo7.sh for 78
% 0.22/0.45  % Solved by: fo/fo7.sh
% 0.22/0.45  To remain in the chosen logic fragment, unification with booleans has been disabled.
% 0.22/0.45  % done 51 iterations in 0.017s
% 0.22/0.45  % SZS status Theorem for '/export/starexec/sandbox/benchmark/theBenchmark.p'
% 0.22/0.45  % SZS output start Refutation
% 0.22/0.45  thf(sk_C_type, type, sk_C: $i > $i > $i).
% 0.22/0.45  thf(sk_A_type, type, sk_A: $i).
% 0.22/0.45  thf(r2_hidden_type, type, r2_hidden: $i > $i > $o).
% 0.22/0.45  thf(k2_relat_1_type, type, k2_relat_1: $i > $i).
% 0.22/0.45  thf(k4_tarski_type, type, k4_tarski: $i > $i > $i).
% 0.22/0.45  thf(r1_xboole_0_type, type, r1_xboole_0: $i > $i > $o).
% 0.22/0.45  thf(sk_C_1_type, type, sk_C_1: $i > $i).
% 0.22/0.45  thf(sk_C_2_type, type, sk_C_2: $i > $i > $i).
% 0.22/0.45  thf(k2_tarski_type, type, k2_tarski: $i > $i > $i).
% 0.22/0.45  thf(sk_D_type, type, sk_D: $i > $i > $i).
% 0.22/0.45  thf(k1_xboole_0_type, type, k1_xboole_0: $i).
% 0.22/0.45  thf(k1_relat_1_type, type, k1_relat_1: $i > $i).
% 0.22/0.45  thf(d4_relat_1, axiom,
% 0.22/0.45    (![A:$i,B:$i]:
% 0.22/0.45     ( ( ( B ) = ( k1_relat_1 @ A ) ) <=>
% 0.22/0.45       ( ![C:$i]:
% 0.22/0.45         ( ( r2_hidden @ C @ B ) <=>
% 0.22/0.45           ( ?[D:$i]: ( r2_hidden @ ( k4_tarski @ C @ D ) @ A ) ) ) ) ))).
% 0.22/0.45  thf('0', plain,
% 0.22/0.45      (![X13 : $i, X16 : $i]:
% 0.22/0.45         (((X16) = (k1_relat_1 @ X13))
% 0.22/0.45          | (r2_hidden @ 
% 0.22/0.45             (k4_tarski @ (sk_C_2 @ X16 @ X13) @ (sk_D @ X16 @ X13)) @ X13)
% 0.22/0.45          | (r2_hidden @ (sk_C_2 @ X16 @ X13) @ X16))),
% 0.22/0.45      inference('cnf', [status(esa)], [d4_relat_1])).
% 0.22/0.45  thf(t65_xboole_1, axiom, (![A:$i]: ( r1_xboole_0 @ A @ k1_xboole_0 ))).
% 0.22/0.45  thf('1', plain, (![X4 : $i]: (r1_xboole_0 @ X4 @ k1_xboole_0)),
% 0.22/0.45      inference('cnf', [status(esa)], [t65_xboole_1])).
% 0.22/0.45  thf(t55_zfmisc_1, axiom,
% 0.22/0.45    (![A:$i,B:$i,C:$i]:
% 0.22/0.45     ( ~( ( r1_xboole_0 @ ( k2_tarski @ A @ B ) @ C ) & ( r2_hidden @ A @ C ) ) ))).
% 0.22/0.45  thf('2', plain,
% 0.22/0.45      (![X5 : $i, X6 : $i, X7 : $i]:
% 0.22/0.45         (~ (r1_xboole_0 @ (k2_tarski @ X5 @ X6) @ X7)
% 0.22/0.45          | ~ (r2_hidden @ X5 @ X7))),
% 0.22/0.45      inference('cnf', [status(esa)], [t55_zfmisc_1])).
% 0.22/0.45  thf('3', plain, (![X1 : $i]: ~ (r2_hidden @ X1 @ k1_xboole_0)),
% 0.22/0.45      inference('sup-', [status(thm)], ['1', '2'])).
% 0.22/0.45  thf('4', plain,
% 0.22/0.45      (![X0 : $i]:
% 0.22/0.45         ((r2_hidden @ (sk_C_2 @ X0 @ k1_xboole_0) @ X0)
% 0.22/0.45          | ((X0) = (k1_relat_1 @ k1_xboole_0)))),
% 0.22/0.45      inference('sup-', [status(thm)], ['0', '3'])).
% 0.22/0.45  thf(t60_relat_1, axiom,
% 0.22/0.45    (( ( k2_relat_1 @ k1_xboole_0 ) = ( k1_xboole_0 ) ) & 
% 0.22/0.45     ( ( k1_relat_1 @ k1_xboole_0 ) = ( k1_xboole_0 ) ))).
% 0.22/0.45  thf('5', plain, (((k1_relat_1 @ k1_xboole_0) = (k1_xboole_0))),
% 0.22/0.45      inference('cnf', [status(esa)], [t60_relat_1])).
% 0.22/0.45  thf('6', plain,
% 0.22/0.45      (![X0 : $i]:
% 0.22/0.45         ((r2_hidden @ (sk_C_2 @ X0 @ k1_xboole_0) @ X0)
% 0.22/0.45          | ((X0) = (k1_xboole_0)))),
% 0.22/0.45      inference('demod', [status(thm)], ['4', '5'])).
% 0.22/0.45  thf(t7_tarski, axiom,
% 0.22/0.45    (![A:$i,B:$i]:
% 0.22/0.45     ( ~( ( r2_hidden @ A @ B ) & 
% 0.22/0.45          ( ![C:$i]:
% 0.22/0.45            ( ~( ( r2_hidden @ C @ B ) & 
% 0.22/0.45                 ( ![D:$i]:
% 0.22/0.45                   ( ~( ( r2_hidden @ D @ B ) & ( r2_hidden @ D @ C ) ) ) ) ) ) ) ) ))).
% 0.22/0.45  thf('7', plain,
% 0.22/0.45      (![X8 : $i, X9 : $i]:
% 0.22/0.45         (~ (r2_hidden @ X8 @ X9) | (r2_hidden @ (sk_C_1 @ X9) @ X9))),
% 0.22/0.45      inference('cnf', [status(esa)], [t7_tarski])).
% 0.22/0.45  thf('8', plain,
% 0.22/0.45      (![X0 : $i]: (((X0) = (k1_xboole_0)) | (r2_hidden @ (sk_C_1 @ X0) @ X0))),
% 0.22/0.45      inference('sup-', [status(thm)], ['6', '7'])).
% 0.22/0.45  thf(t1_mcart_1, conjecture,
% 0.22/0.45    (![A:$i]:
% 0.22/0.45     ( ~( ( ( A ) != ( k1_xboole_0 ) ) & 
% 0.22/0.45          ( ![B:$i]: ( ~( ( r2_hidden @ B @ A ) & ( r1_xboole_0 @ B @ A ) ) ) ) ) ))).
% 0.22/0.45  thf(zf_stmt_0, negated_conjecture,
% 0.22/0.45    (~( ![A:$i]:
% 0.22/0.45        ( ~( ( ( A ) != ( k1_xboole_0 ) ) & 
% 0.22/0.45             ( ![B:$i]:
% 0.22/0.45               ( ~( ( r2_hidden @ B @ A ) & ( r1_xboole_0 @ B @ A ) ) ) ) ) ) )),
% 0.22/0.45    inference('cnf.neg', [status(esa)], [t1_mcart_1])).
% 0.22/0.45  thf('9', plain,
% 0.22/0.45      (![X18 : $i]: (~ (r2_hidden @ X18 @ sk_A) | ~ (r1_xboole_0 @ X18 @ sk_A))),
% 0.22/0.45      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.22/0.45  thf('10', plain,
% 0.22/0.45      ((((sk_A) = (k1_xboole_0)) | ~ (r1_xboole_0 @ (sk_C_1 @ sk_A) @ sk_A))),
% 0.22/0.45      inference('sup-', [status(thm)], ['8', '9'])).
% 0.22/0.45  thf('11', plain, (((sk_A) != (k1_xboole_0))),
% 0.22/0.45      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.22/0.45  thf('12', plain, (~ (r1_xboole_0 @ (sk_C_1 @ sk_A) @ sk_A)),
% 0.22/0.45      inference('simplify_reflect-', [status(thm)], ['10', '11'])).
% 0.22/0.45  thf(t3_xboole_0, axiom,
% 0.22/0.45    (![A:$i,B:$i]:
% 0.22/0.45     ( ( ~( ( ?[C:$i]: ( ( r2_hidden @ C @ B ) & ( r2_hidden @ C @ A ) ) ) & 
% 0.22/0.45            ( r1_xboole_0 @ A @ B ) ) ) & 
% 0.22/0.45       ( ~( ( ~( r1_xboole_0 @ A @ B ) ) & 
% 0.22/0.45            ( ![C:$i]: ( ~( ( r2_hidden @ C @ A ) & ( r2_hidden @ C @ B ) ) ) ) ) ) ))).
% 0.22/0.45  thf('13', plain,
% 0.22/0.45      (![X0 : $i, X1 : $i]:
% 0.22/0.45         ((r1_xboole_0 @ X0 @ X1) | (r2_hidden @ (sk_C @ X1 @ X0) @ X1))),
% 0.22/0.45      inference('cnf', [status(esa)], [t3_xboole_0])).
% 0.22/0.45  thf('14', plain,
% 0.22/0.45      (![X0 : $i, X1 : $i]:
% 0.22/0.45         ((r1_xboole_0 @ X0 @ X1) | (r2_hidden @ (sk_C @ X1 @ X0) @ X0))),
% 0.22/0.45      inference('cnf', [status(esa)], [t3_xboole_0])).
% 0.22/0.45  thf('15', plain,
% 0.22/0.45      (![X8 : $i, X9 : $i, X10 : $i]:
% 0.22/0.45         (~ (r2_hidden @ X8 @ X9)
% 0.22/0.45          | ~ (r2_hidden @ X10 @ X9)
% 0.22/0.45          | ~ (r2_hidden @ X10 @ (sk_C_1 @ X9)))),
% 0.22/0.45      inference('cnf', [status(esa)], [t7_tarski])).
% 0.22/0.45  thf('16', plain,
% 0.22/0.45      (![X0 : $i, X1 : $i]:
% 0.22/0.45         (~ (r2_hidden @ X1 @ (sk_C_1 @ X0)) | ~ (r2_hidden @ X1 @ X0))),
% 0.22/0.45      inference('condensation', [status(thm)], ['15'])).
% 0.22/0.45  thf('17', plain,
% 0.22/0.45      (![X0 : $i, X1 : $i]:
% 0.22/0.45         ((r1_xboole_0 @ (sk_C_1 @ X0) @ X1)
% 0.22/0.45          | ~ (r2_hidden @ (sk_C @ X1 @ (sk_C_1 @ X0)) @ X0))),
% 0.22/0.45      inference('sup-', [status(thm)], ['14', '16'])).
% 0.22/0.45  thf('18', plain,
% 0.22/0.45      (![X0 : $i]:
% 0.22/0.45         ((r1_xboole_0 @ (sk_C_1 @ X0) @ X0)
% 0.22/0.45          | (r1_xboole_0 @ (sk_C_1 @ X0) @ X0))),
% 0.22/0.45      inference('sup-', [status(thm)], ['13', '17'])).
% 0.22/0.45  thf('19', plain, (![X0 : $i]: (r1_xboole_0 @ (sk_C_1 @ X0) @ X0)),
% 0.22/0.45      inference('simplify', [status(thm)], ['18'])).
% 0.22/0.45  thf('20', plain, ($false), inference('demod', [status(thm)], ['12', '19'])).
% 0.22/0.45  
% 0.22/0.45  % SZS output end Refutation
% 0.22/0.45  
% 0.22/0.46  % Zipperpin 1.5 exiting
%------------------------------------------------------------------------------
