%------------------------------------------------------------------------------
% File       : Zipperpin---2.0
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_portfolio.sh /export/starexec/sandbox2/benchmark/theBenchmark.p /export/starexec/sandbox2/tmp/tmp.Qh7TOZogXF

% Computer   : n005.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 13:34:08 EST 2020

% Result     : Theorem 0.21s
% Output     : Refutation 0.21s
% Verified   : 
% Statistics : Number of formulae       :   36 (  43 expanded)
%              Number of leaves         :   14 (  18 expanded)
%              Depth                    :    9
%              Number of atoms          :  189 ( 275 expanded)
%              Number of equality atoms :   24 (  43 expanded)
%              Maximal formula depth    :   10 (   5 average)

% Comments   : 
%------------------------------------------------------------------------------
thf(sk_A_type,type,(
    sk_A: $i )).

thf(r1_tarski_type,type,(
    r1_tarski: $i > $i > $o )).

thf(k1_xboole_0_type,type,(
    k1_xboole_0: $i )).

thf(sk_B_type,type,(
    sk_B: $i )).

thf(r2_xboole_0_type,type,(
    r2_xboole_0: $i > $i > $o )).

thf(k1_tarski_type,type,(
    k1_tarski: $i > $i )).

thf(k4_xboole_0_type,type,(
    k4_xboole_0: $i > $i > $i )).

thf(r2_hidden_type,type,(
    r2_hidden: $i > $i > $o )).

thf(t66_zfmisc_1,conjecture,(
    ! [A: $i,B: $i] :
      ~ ( ( ( k4_xboole_0 @ A @ ( k1_tarski @ B ) )
          = k1_xboole_0 )
        & ( A != k1_xboole_0 )
        & ( A
         != ( k1_tarski @ B ) ) ) )).

thf(zf_stmt_0,negated_conjecture,(
    ~ ! [A: $i,B: $i] :
        ~ ( ( ( k4_xboole_0 @ A @ ( k1_tarski @ B ) )
            = k1_xboole_0 )
          & ( A != k1_xboole_0 )
          & ( A
           != ( k1_tarski @ B ) ) ) ),
    inference('cnf.neg',[status(esa)],[t66_zfmisc_1])).

thf('0',plain,
    ( ( k4_xboole_0 @ sk_A @ ( k1_tarski @ sk_B ) )
    = k1_xboole_0 ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(t65_zfmisc_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( ( k4_xboole_0 @ A @ ( k1_tarski @ B ) )
        = A )
    <=> ~ ( r2_hidden @ B @ A ) ) )).

thf('1',plain,(
    ! [X35: $i,X36: $i] :
      ( ( ( k4_xboole_0 @ X35 @ ( k1_tarski @ X36 ) )
        = X35 )
      | ( r2_hidden @ X36 @ X35 ) ) ),
    inference(cnf,[status(esa)],[t65_zfmisc_1])).

thf('2',plain,
    ( ( k1_xboole_0 = sk_A )
    | ( r2_hidden @ sk_B @ sk_A ) ),
    inference('sup+',[status(thm)],['0','1'])).

thf('3',plain,(
    sk_A != k1_xboole_0 ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('4',plain,(
    r2_hidden @ sk_B @ sk_A ),
    inference('simplify_reflect-',[status(thm)],['2','3'])).

thf(l35_zfmisc_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( ( k4_xboole_0 @ ( k1_tarski @ A ) @ B )
        = k1_xboole_0 )
    <=> ( r2_hidden @ A @ B ) ) )).

thf('5',plain,(
    ! [X31: $i,X33: $i] :
      ( ( ( k4_xboole_0 @ ( k1_tarski @ X31 ) @ X33 )
        = k1_xboole_0 )
      | ~ ( r2_hidden @ X31 @ X33 ) ) ),
    inference(cnf,[status(esa)],[l35_zfmisc_1])).

thf('6',plain,
    ( ( k4_xboole_0 @ ( k1_tarski @ sk_B ) @ sk_A )
    = k1_xboole_0 ),
    inference('sup-',[status(thm)],['4','5'])).

thf(l32_xboole_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( ( k4_xboole_0 @ A @ B )
        = k1_xboole_0 )
    <=> ( r1_tarski @ A @ B ) ) )).

thf('7',plain,(
    ! [X3: $i,X4: $i] :
      ( ( r1_tarski @ X3 @ X4 )
      | ( ( k4_xboole_0 @ X3 @ X4 )
       != k1_xboole_0 ) ) ),
    inference(cnf,[status(esa)],[l32_xboole_1])).

thf('8',plain,
    ( ( k1_xboole_0 != k1_xboole_0 )
    | ( r1_tarski @ ( k1_tarski @ sk_B ) @ sk_A ) ),
    inference('sup-',[status(thm)],['6','7'])).

thf('9',plain,(
    r1_tarski @ ( k1_tarski @ sk_B ) @ sk_A ),
    inference(simplify,[status(thm)],['8'])).

thf(t60_xboole_1,axiom,(
    ! [A: $i,B: $i] :
      ~ ( ( r1_tarski @ A @ B )
        & ( r2_xboole_0 @ B @ A ) ) )).

thf('10',plain,(
    ! [X8: $i,X9: $i] :
      ( ~ ( r1_tarski @ X8 @ X9 )
      | ~ ( r2_xboole_0 @ X9 @ X8 ) ) ),
    inference(cnf,[status(esa)],[t60_xboole_1])).

thf('11',plain,(
    ~ ( r2_xboole_0 @ sk_A @ ( k1_tarski @ sk_B ) ) ),
    inference('sup-',[status(thm)],['9','10'])).

thf('12',plain,
    ( ( k4_xboole_0 @ sk_A @ ( k1_tarski @ sk_B ) )
    = k1_xboole_0 ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('13',plain,(
    ! [X3: $i,X4: $i] :
      ( ( r1_tarski @ X3 @ X4 )
      | ( ( k4_xboole_0 @ X3 @ X4 )
       != k1_xboole_0 ) ) ),
    inference(cnf,[status(esa)],[l32_xboole_1])).

thf('14',plain,
    ( ( k1_xboole_0 != k1_xboole_0 )
    | ( r1_tarski @ sk_A @ ( k1_tarski @ sk_B ) ) ),
    inference('sup-',[status(thm)],['12','13'])).

thf('15',plain,(
    r1_tarski @ sk_A @ ( k1_tarski @ sk_B ) ),
    inference(simplify,[status(thm)],['14'])).

thf(d8_xboole_0,axiom,(
    ! [A: $i,B: $i] :
      ( ( r2_xboole_0 @ A @ B )
    <=> ( ( r1_tarski @ A @ B )
        & ( A != B ) ) ) )).

thf('16',plain,(
    ! [X0: $i,X2: $i] :
      ( ( r2_xboole_0 @ X0 @ X2 )
      | ( X0 = X2 )
      | ~ ( r1_tarski @ X0 @ X2 ) ) ),
    inference(cnf,[status(esa)],[d8_xboole_0])).

thf('17',plain,
    ( ( sk_A
      = ( k1_tarski @ sk_B ) )
    | ( r2_xboole_0 @ sk_A @ ( k1_tarski @ sk_B ) ) ),
    inference('sup-',[status(thm)],['15','16'])).

thf('18',plain,(
    sk_A
 != ( k1_tarski @ sk_B ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('19',plain,(
    r2_xboole_0 @ sk_A @ ( k1_tarski @ sk_B ) ),
    inference('simplify_reflect-',[status(thm)],['17','18'])).

thf('20',plain,(
    $false ),
    inference(demod,[status(thm)],['11','19'])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.07/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.07/0.13  % Command    : run_portfolio.sh /export/starexec/sandbox2/benchmark/theBenchmark.p /export/starexec/sandbox2/tmp/tmp.Qh7TOZogXF
% 0.13/0.34  % Computer   : n005.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % DateTime   : Tue Dec  1 09:26:18 EST 2020
% 0.13/0.34  % CPUTime    : 
% 0.13/0.34  % Running portfolio for 600 s
% 0.13/0.34  % File         : /export/starexec/sandbox2/benchmark/theBenchmark.p
% 0.13/0.34  % Number of cores: 8
% 0.13/0.34  % Python version: Python 3.6.8
% 0.13/0.35  % Running in FO mode
% 0.21/0.45  % Running /export/starexec/sandbox2/solver/bin/fo/fo7.sh for 78
% 0.21/0.45  % Solved by: fo/fo7.sh
% 0.21/0.45  To remain in the chosen logic fragment, unification with booleans has been disabled.
% 0.21/0.45  % done 41 iterations in 0.013s
% 0.21/0.45  % SZS status Theorem for '/export/starexec/sandbox2/benchmark/theBenchmark.p'
% 0.21/0.45  % SZS output start Refutation
% 0.21/0.45  thf(sk_A_type, type, sk_A: $i).
% 0.21/0.45  thf(r1_tarski_type, type, r1_tarski: $i > $i > $o).
% 0.21/0.45  thf(k1_xboole_0_type, type, k1_xboole_0: $i).
% 0.21/0.45  thf(sk_B_type, type, sk_B: $i).
% 0.21/0.45  thf(r2_xboole_0_type, type, r2_xboole_0: $i > $i > $o).
% 0.21/0.45  thf(k1_tarski_type, type, k1_tarski: $i > $i).
% 0.21/0.45  thf(k4_xboole_0_type, type, k4_xboole_0: $i > $i > $i).
% 0.21/0.45  thf(r2_hidden_type, type, r2_hidden: $i > $i > $o).
% 0.21/0.45  thf(t66_zfmisc_1, conjecture,
% 0.21/0.45    (![A:$i,B:$i]:
% 0.21/0.45     ( ~( ( ( k4_xboole_0 @ A @ ( k1_tarski @ B ) ) = ( k1_xboole_0 ) ) & 
% 0.21/0.45          ( ( A ) != ( k1_xboole_0 ) ) & ( ( A ) != ( k1_tarski @ B ) ) ) ))).
% 0.21/0.45  thf(zf_stmt_0, negated_conjecture,
% 0.21/0.45    (~( ![A:$i,B:$i]:
% 0.21/0.45        ( ~( ( ( k4_xboole_0 @ A @ ( k1_tarski @ B ) ) = ( k1_xboole_0 ) ) & 
% 0.21/0.45             ( ( A ) != ( k1_xboole_0 ) ) & ( ( A ) != ( k1_tarski @ B ) ) ) ) )),
% 0.21/0.45    inference('cnf.neg', [status(esa)], [t66_zfmisc_1])).
% 0.21/0.45  thf('0', plain,
% 0.21/0.45      (((k4_xboole_0 @ sk_A @ (k1_tarski @ sk_B)) = (k1_xboole_0))),
% 0.21/0.45      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.45  thf(t65_zfmisc_1, axiom,
% 0.21/0.45    (![A:$i,B:$i]:
% 0.21/0.45     ( ( ( k4_xboole_0 @ A @ ( k1_tarski @ B ) ) = ( A ) ) <=>
% 0.21/0.45       ( ~( r2_hidden @ B @ A ) ) ))).
% 0.21/0.45  thf('1', plain,
% 0.21/0.45      (![X35 : $i, X36 : $i]:
% 0.21/0.45         (((k4_xboole_0 @ X35 @ (k1_tarski @ X36)) = (X35))
% 0.21/0.45          | (r2_hidden @ X36 @ X35))),
% 0.21/0.45      inference('cnf', [status(esa)], [t65_zfmisc_1])).
% 0.21/0.45  thf('2', plain, ((((k1_xboole_0) = (sk_A)) | (r2_hidden @ sk_B @ sk_A))),
% 0.21/0.45      inference('sup+', [status(thm)], ['0', '1'])).
% 0.21/0.45  thf('3', plain, (((sk_A) != (k1_xboole_0))),
% 0.21/0.45      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.45  thf('4', plain, ((r2_hidden @ sk_B @ sk_A)),
% 0.21/0.45      inference('simplify_reflect-', [status(thm)], ['2', '3'])).
% 0.21/0.45  thf(l35_zfmisc_1, axiom,
% 0.21/0.45    (![A:$i,B:$i]:
% 0.21/0.45     ( ( ( k4_xboole_0 @ ( k1_tarski @ A ) @ B ) = ( k1_xboole_0 ) ) <=>
% 0.21/0.45       ( r2_hidden @ A @ B ) ))).
% 0.21/0.45  thf('5', plain,
% 0.21/0.45      (![X31 : $i, X33 : $i]:
% 0.21/0.45         (((k4_xboole_0 @ (k1_tarski @ X31) @ X33) = (k1_xboole_0))
% 0.21/0.45          | ~ (r2_hidden @ X31 @ X33))),
% 0.21/0.45      inference('cnf', [status(esa)], [l35_zfmisc_1])).
% 0.21/0.45  thf('6', plain,
% 0.21/0.45      (((k4_xboole_0 @ (k1_tarski @ sk_B) @ sk_A) = (k1_xboole_0))),
% 0.21/0.45      inference('sup-', [status(thm)], ['4', '5'])).
% 0.21/0.45  thf(l32_xboole_1, axiom,
% 0.21/0.45    (![A:$i,B:$i]:
% 0.21/0.45     ( ( ( k4_xboole_0 @ A @ B ) = ( k1_xboole_0 ) ) <=> ( r1_tarski @ A @ B ) ))).
% 0.21/0.45  thf('7', plain,
% 0.21/0.45      (![X3 : $i, X4 : $i]:
% 0.21/0.45         ((r1_tarski @ X3 @ X4) | ((k4_xboole_0 @ X3 @ X4) != (k1_xboole_0)))),
% 0.21/0.45      inference('cnf', [status(esa)], [l32_xboole_1])).
% 0.21/0.45  thf('8', plain,
% 0.21/0.45      ((((k1_xboole_0) != (k1_xboole_0))
% 0.21/0.45        | (r1_tarski @ (k1_tarski @ sk_B) @ sk_A))),
% 0.21/0.45      inference('sup-', [status(thm)], ['6', '7'])).
% 0.21/0.45  thf('9', plain, ((r1_tarski @ (k1_tarski @ sk_B) @ sk_A)),
% 0.21/0.45      inference('simplify', [status(thm)], ['8'])).
% 0.21/0.45  thf(t60_xboole_1, axiom,
% 0.21/0.45    (![A:$i,B:$i]: ( ~( ( r1_tarski @ A @ B ) & ( r2_xboole_0 @ B @ A ) ) ))).
% 0.21/0.45  thf('10', plain,
% 0.21/0.45      (![X8 : $i, X9 : $i]:
% 0.21/0.45         (~ (r1_tarski @ X8 @ X9) | ~ (r2_xboole_0 @ X9 @ X8))),
% 0.21/0.45      inference('cnf', [status(esa)], [t60_xboole_1])).
% 0.21/0.45  thf('11', plain, (~ (r2_xboole_0 @ sk_A @ (k1_tarski @ sk_B))),
% 0.21/0.45      inference('sup-', [status(thm)], ['9', '10'])).
% 0.21/0.45  thf('12', plain,
% 0.21/0.45      (((k4_xboole_0 @ sk_A @ (k1_tarski @ sk_B)) = (k1_xboole_0))),
% 0.21/0.45      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.45  thf('13', plain,
% 0.21/0.45      (![X3 : $i, X4 : $i]:
% 0.21/0.45         ((r1_tarski @ X3 @ X4) | ((k4_xboole_0 @ X3 @ X4) != (k1_xboole_0)))),
% 0.21/0.45      inference('cnf', [status(esa)], [l32_xboole_1])).
% 0.21/0.45  thf('14', plain,
% 0.21/0.45      ((((k1_xboole_0) != (k1_xboole_0))
% 0.21/0.45        | (r1_tarski @ sk_A @ (k1_tarski @ sk_B)))),
% 0.21/0.45      inference('sup-', [status(thm)], ['12', '13'])).
% 0.21/0.45  thf('15', plain, ((r1_tarski @ sk_A @ (k1_tarski @ sk_B))),
% 0.21/0.45      inference('simplify', [status(thm)], ['14'])).
% 0.21/0.45  thf(d8_xboole_0, axiom,
% 0.21/0.45    (![A:$i,B:$i]:
% 0.21/0.45     ( ( r2_xboole_0 @ A @ B ) <=>
% 0.21/0.45       ( ( r1_tarski @ A @ B ) & ( ( A ) != ( B ) ) ) ))).
% 0.21/0.45  thf('16', plain,
% 0.21/0.45      (![X0 : $i, X2 : $i]:
% 0.21/0.45         ((r2_xboole_0 @ X0 @ X2) | ((X0) = (X2)) | ~ (r1_tarski @ X0 @ X2))),
% 0.21/0.45      inference('cnf', [status(esa)], [d8_xboole_0])).
% 0.21/0.45  thf('17', plain,
% 0.21/0.45      ((((sk_A) = (k1_tarski @ sk_B))
% 0.21/0.45        | (r2_xboole_0 @ sk_A @ (k1_tarski @ sk_B)))),
% 0.21/0.45      inference('sup-', [status(thm)], ['15', '16'])).
% 0.21/0.45  thf('18', plain, (((sk_A) != (k1_tarski @ sk_B))),
% 0.21/0.45      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.45  thf('19', plain, ((r2_xboole_0 @ sk_A @ (k1_tarski @ sk_B))),
% 0.21/0.45      inference('simplify_reflect-', [status(thm)], ['17', '18'])).
% 0.21/0.45  thf('20', plain, ($false), inference('demod', [status(thm)], ['11', '19'])).
% 0.21/0.45  
% 0.21/0.45  % SZS output end Refutation
% 0.21/0.45  
% 0.21/0.46  % Zipperpin 1.5 exiting
%------------------------------------------------------------------------------
