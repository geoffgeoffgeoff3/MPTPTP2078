%------------------------------------------------------------------------------
% File       : Zipperpin---2.0
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_portfolio.sh /export/starexec/sandbox2/benchmark/theBenchmark.p /export/starexec/sandbox2/tmp/tmp.vh1Hyyrl4m

% Computer   : n016.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 13:50:54 EST 2020

% Result     : Theorem 0.22s
% Output     : Refutation 0.22s
% Verified   : 
% Statistics : Number of formulae       :   47 (  62 expanded)
%              Number of leaves         :   18 (  24 expanded)
%              Depth                    :    9
%              Number of atoms          :  336 ( 600 expanded)
%              Number of equality atoms :   55 (  97 expanded)
%              Maximal formula depth    :   14 (   6 average)

% Comments   : 
%------------------------------------------------------------------------------
thf(sk_B_type,type,(
    sk_B: $i )).

thf(k1_tarski_type,type,(
    k1_tarski: $i > $i )).

thf(k2_tarski_type,type,(
    k2_tarski: $i > $i > $i )).

thf(k4_xboole_0_type,type,(
    k4_xboole_0: $i > $i > $i )).

thf(k2_zfmisc_1_type,type,(
    k2_zfmisc_1: $i > $i > $i )).

thf(k2_mcart_1_type,type,(
    k2_mcart_1: $i > $i )).

thf(k1_mcart_1_type,type,(
    k1_mcart_1: $i > $i )).

thf(sk_C_type,type,(
    sk_C: $i )).

thf(sk_D_type,type,(
    sk_D: $i )).

thf(r2_hidden_type,type,(
    r2_hidden: $i > $i > $o )).

thf(k1_enumset1_type,type,(
    k1_enumset1: $i > $i > $i > $i )).

thf(sk_A_type,type,(
    sk_A: $i )).

thf(t17_mcart_1,conjecture,(
    ! [A: $i,B: $i,C: $i,D: $i] :
      ( ( r2_hidden @ A @ ( k2_zfmisc_1 @ ( k2_tarski @ B @ C ) @ ( k1_tarski @ D ) ) )
     => ( ( ( ( k1_mcart_1 @ A )
            = B )
          | ( ( k1_mcart_1 @ A )
            = C ) )
        & ( ( k2_mcart_1 @ A )
          = D ) ) ) )).

thf(zf_stmt_0,negated_conjecture,(
    ~ ! [A: $i,B: $i,C: $i,D: $i] :
        ( ( r2_hidden @ A @ ( k2_zfmisc_1 @ ( k2_tarski @ B @ C ) @ ( k1_tarski @ D ) ) )
       => ( ( ( ( k1_mcart_1 @ A )
              = B )
            | ( ( k1_mcart_1 @ A )
              = C ) )
          & ( ( k2_mcart_1 @ A )
            = D ) ) ) ),
    inference('cnf.neg',[status(esa)],[t17_mcart_1])).

thf('0',plain,
    ( ( ( k1_mcart_1 @ sk_A )
     != sk_C )
    | ( ( k2_mcart_1 @ sk_A )
     != sk_D ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('1',plain,
    ( ( ( k1_mcart_1 @ sk_A )
     != sk_C )
    | ( ( k2_mcart_1 @ sk_A )
     != sk_D ) ),
    inference(split,[status(esa)],['0'])).

thf('2',plain,(
    r2_hidden @ sk_A @ ( k2_zfmisc_1 @ ( k2_tarski @ sk_B @ sk_C ) @ ( k1_tarski @ sk_D ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(t10_mcart_1,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( r2_hidden @ A @ ( k2_zfmisc_1 @ B @ C ) )
     => ( ( r2_hidden @ ( k1_mcart_1 @ A ) @ B )
        & ( r2_hidden @ ( k2_mcart_1 @ A ) @ C ) ) ) )).

thf('3',plain,(
    ! [X35: $i,X36: $i,X37: $i] :
      ( ( r2_hidden @ ( k2_mcart_1 @ X35 ) @ X37 )
      | ~ ( r2_hidden @ X35 @ ( k2_zfmisc_1 @ X36 @ X37 ) ) ) ),
    inference(cnf,[status(esa)],[t10_mcart_1])).

thf('4',plain,(
    r2_hidden @ ( k2_mcart_1 @ sk_A ) @ ( k1_tarski @ sk_D ) ),
    inference('sup-',[status(thm)],['2','3'])).

thf(t69_enumset1,axiom,(
    ! [A: $i] :
      ( ( k2_tarski @ A @ A )
      = ( k1_tarski @ A ) ) )).

thf('5',plain,(
    ! [X3: $i] :
      ( ( k2_tarski @ X3 @ X3 )
      = ( k1_tarski @ X3 ) ) ),
    inference(cnf,[status(esa)],[t69_enumset1])).

thf(t136_enumset1,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ~ ( ( A != B )
        & ( A != C )
        & ( ( k4_xboole_0 @ ( k1_enumset1 @ A @ B @ C ) @ ( k1_tarski @ A ) )
         != ( k2_tarski @ B @ C ) ) ) )).

thf('6',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( ( X1 = X0 )
      | ( ( k4_xboole_0 @ ( k1_enumset1 @ X1 @ X0 @ X2 ) @ ( k1_tarski @ X1 ) )
        = ( k2_tarski @ X0 @ X2 ) )
      | ( X1 = X2 ) ) ),
    inference(cnf,[status(esa)],[t136_enumset1])).

thf(t64_zfmisc_1,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( r2_hidden @ A @ ( k4_xboole_0 @ B @ ( k1_tarski @ C ) ) )
    <=> ( ( r2_hidden @ A @ B )
        & ( A != C ) ) ) )).

thf('7',plain,(
    ! [X31: $i,X32: $i,X33: $i] :
      ( ( X31 != X33 )
      | ~ ( r2_hidden @ X31 @ ( k4_xboole_0 @ X32 @ ( k1_tarski @ X33 ) ) ) ) ),
    inference(cnf,[status(esa)],[t64_zfmisc_1])).

thf('8',plain,(
    ! [X32: $i,X33: $i] :
      ~ ( r2_hidden @ X33 @ ( k4_xboole_0 @ X32 @ ( k1_tarski @ X33 ) ) ) ),
    inference(simplify,[status(thm)],['7'])).

thf('9',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( ~ ( r2_hidden @ X2 @ ( k2_tarski @ X1 @ X0 ) )
      | ( X2 = X0 )
      | ( X2 = X1 ) ) ),
    inference('sup-',[status(thm)],['6','8'])).

thf('10',plain,(
    ! [X0: $i,X1: $i] :
      ( ~ ( r2_hidden @ X1 @ ( k1_tarski @ X0 ) )
      | ( X1 = X0 )
      | ( X1 = X0 ) ) ),
    inference('sup-',[status(thm)],['5','9'])).

thf('11',plain,(
    ! [X0: $i,X1: $i] :
      ( ( X1 = X0 )
      | ~ ( r2_hidden @ X1 @ ( k1_tarski @ X0 ) ) ) ),
    inference(simplify,[status(thm)],['10'])).

thf('12',plain,
    ( ( k2_mcart_1 @ sk_A )
    = sk_D ),
    inference('sup-',[status(thm)],['4','11'])).

thf('13',plain,
    ( ( ( k1_mcart_1 @ sk_A )
     != sk_B )
    | ( ( k2_mcart_1 @ sk_A )
     != sk_D ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('14',plain,
    ( ( ( k2_mcart_1 @ sk_A )
     != sk_D )
   <= ( ( k2_mcart_1 @ sk_A )
     != sk_D ) ),
    inference(split,[status(esa)],['13'])).

thf('15',plain,
    ( ( sk_D != sk_D )
   <= ( ( k2_mcart_1 @ sk_A )
     != sk_D ) ),
    inference('sup-',[status(thm)],['12','14'])).

thf('16',plain,
    ( ( k2_mcart_1 @ sk_A )
    = sk_D ),
    inference(simplify,[status(thm)],['15'])).

thf('17',plain,
    ( ( ( k1_mcart_1 @ sk_A )
     != sk_B )
    | ( ( k2_mcart_1 @ sk_A )
     != sk_D ) ),
    inference(split,[status(esa)],['13'])).

thf('18',plain,(
    r2_hidden @ sk_A @ ( k2_zfmisc_1 @ ( k2_tarski @ sk_B @ sk_C ) @ ( k1_tarski @ sk_D ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(t15_mcart_1,axiom,(
    ! [A: $i,B: $i,C: $i,D: $i] :
      ( ( r2_hidden @ A @ ( k2_zfmisc_1 @ ( k2_tarski @ B @ C ) @ D ) )
     => ( ( ( ( k1_mcart_1 @ A )
            = B )
          | ( ( k1_mcart_1 @ A )
            = C ) )
        & ( r2_hidden @ ( k2_mcart_1 @ A ) @ D ) ) ) )).

thf('19',plain,(
    ! [X38: $i,X39: $i,X40: $i,X41: $i] :
      ( ( ( k1_mcart_1 @ X39 )
        = X38 )
      | ( ( k1_mcart_1 @ X39 )
        = X40 )
      | ~ ( r2_hidden @ X39 @ ( k2_zfmisc_1 @ ( k2_tarski @ X40 @ X38 ) @ X41 ) ) ) ),
    inference(cnf,[status(esa)],[t15_mcart_1])).

thf('20',plain,
    ( ( ( k1_mcart_1 @ sk_A )
      = sk_B )
    | ( ( k1_mcart_1 @ sk_A )
      = sk_C ) ),
    inference('sup-',[status(thm)],['18','19'])).

thf('21',plain,
    ( ( ( k1_mcart_1 @ sk_A )
     != sk_C )
   <= ( ( k1_mcart_1 @ sk_A )
     != sk_C ) ),
    inference(split,[status(esa)],['0'])).

thf('22',plain,
    ( ( ( sk_C != sk_C )
      | ( ( k1_mcart_1 @ sk_A )
        = sk_B ) )
   <= ( ( k1_mcart_1 @ sk_A )
     != sk_C ) ),
    inference('sup-',[status(thm)],['20','21'])).

thf('23',plain,
    ( ( ( k1_mcart_1 @ sk_A )
      = sk_B )
   <= ( ( k1_mcart_1 @ sk_A )
     != sk_C ) ),
    inference(simplify,[status(thm)],['22'])).

thf('24',plain,
    ( ( ( k1_mcart_1 @ sk_A )
     != sk_B )
   <= ( ( k1_mcart_1 @ sk_A )
     != sk_B ) ),
    inference(split,[status(esa)],['13'])).

thf('25',plain,
    ( ( sk_B != sk_B )
   <= ( ( ( k1_mcart_1 @ sk_A )
       != sk_C )
      & ( ( k1_mcart_1 @ sk_A )
       != sk_B ) ) ),
    inference('sup-',[status(thm)],['23','24'])).

thf('26',plain,
    ( ( ( k1_mcart_1 @ sk_A )
      = sk_B )
    | ( ( k1_mcart_1 @ sk_A )
      = sk_C ) ),
    inference(simplify,[status(thm)],['25'])).

thf('27',plain,(
    $false ),
    inference('sat_resolution*',[status(thm)],['1','16','17','26'])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.10/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.10/0.13  % Command    : run_portfolio.sh /export/starexec/sandbox2/benchmark/theBenchmark.p /export/starexec/sandbox2/tmp/tmp.vh1Hyyrl4m
% 0.14/0.34  % Computer   : n016.cluster.edu
% 0.14/0.34  % Model      : x86_64 x86_64
% 0.14/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.14/0.34  % Memory     : 8042.1875MB
% 0.14/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.14/0.34  % CPULimit   : 60
% 0.14/0.34  % DateTime   : Tue Dec  1 13:15:19 EST 2020
% 0.14/0.34  % CPUTime    : 
% 0.14/0.34  % Running portfolio for 600 s
% 0.14/0.34  % File         : /export/starexec/sandbox2/benchmark/theBenchmark.p
% 0.14/0.35  % Number of cores: 8
% 0.14/0.35  % Python version: Python 3.6.8
% 0.14/0.35  % Running in FO mode
% 0.22/0.48  % Running /export/starexec/sandbox2/solver/bin/fo/fo7.sh for 78
% 0.22/0.48  % Solved by: fo/fo7.sh
% 0.22/0.48  To remain in the chosen logic fragment, unification with booleans has been disabled.
% 0.22/0.48  % done 39 iterations in 0.024s
% 0.22/0.48  % SZS status Theorem for '/export/starexec/sandbox2/benchmark/theBenchmark.p'
% 0.22/0.48  % SZS output start Refutation
% 0.22/0.48  thf(sk_B_type, type, sk_B: $i).
% 0.22/0.48  thf(k1_tarski_type, type, k1_tarski: $i > $i).
% 0.22/0.48  thf(k2_tarski_type, type, k2_tarski: $i > $i > $i).
% 0.22/0.48  thf(k4_xboole_0_type, type, k4_xboole_0: $i > $i > $i).
% 0.22/0.48  thf(k2_zfmisc_1_type, type, k2_zfmisc_1: $i > $i > $i).
% 0.22/0.48  thf(k2_mcart_1_type, type, k2_mcart_1: $i > $i).
% 0.22/0.48  thf(k1_mcart_1_type, type, k1_mcart_1: $i > $i).
% 0.22/0.48  thf(sk_C_type, type, sk_C: $i).
% 0.22/0.48  thf(sk_D_type, type, sk_D: $i).
% 0.22/0.48  thf(r2_hidden_type, type, r2_hidden: $i > $i > $o).
% 0.22/0.48  thf(k1_enumset1_type, type, k1_enumset1: $i > $i > $i > $i).
% 0.22/0.48  thf(sk_A_type, type, sk_A: $i).
% 0.22/0.48  thf(t17_mcart_1, conjecture,
% 0.22/0.48    (![A:$i,B:$i,C:$i,D:$i]:
% 0.22/0.48     ( ( r2_hidden @
% 0.22/0.48         A @ ( k2_zfmisc_1 @ ( k2_tarski @ B @ C ) @ ( k1_tarski @ D ) ) ) =>
% 0.22/0.48       ( ( ( ( k1_mcart_1 @ A ) = ( B ) ) | ( ( k1_mcart_1 @ A ) = ( C ) ) ) & 
% 0.22/0.48         ( ( k2_mcart_1 @ A ) = ( D ) ) ) ))).
% 0.22/0.48  thf(zf_stmt_0, negated_conjecture,
% 0.22/0.48    (~( ![A:$i,B:$i,C:$i,D:$i]:
% 0.22/0.48        ( ( r2_hidden @
% 0.22/0.48            A @ ( k2_zfmisc_1 @ ( k2_tarski @ B @ C ) @ ( k1_tarski @ D ) ) ) =>
% 0.22/0.48          ( ( ( ( k1_mcart_1 @ A ) = ( B ) ) | ( ( k1_mcart_1 @ A ) = ( C ) ) ) & 
% 0.22/0.48            ( ( k2_mcart_1 @ A ) = ( D ) ) ) ) )),
% 0.22/0.48    inference('cnf.neg', [status(esa)], [t17_mcart_1])).
% 0.22/0.48  thf('0', plain,
% 0.22/0.48      ((((k1_mcart_1 @ sk_A) != (sk_C)) | ((k2_mcart_1 @ sk_A) != (sk_D)))),
% 0.22/0.48      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.22/0.48  thf('1', plain,
% 0.22/0.48      (~ (((k1_mcart_1 @ sk_A) = (sk_C))) | ~ (((k2_mcart_1 @ sk_A) = (sk_D)))),
% 0.22/0.48      inference('split', [status(esa)], ['0'])).
% 0.22/0.48  thf('2', plain,
% 0.22/0.48      ((r2_hidden @ sk_A @ 
% 0.22/0.48        (k2_zfmisc_1 @ (k2_tarski @ sk_B @ sk_C) @ (k1_tarski @ sk_D)))),
% 0.22/0.48      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.22/0.48  thf(t10_mcart_1, axiom,
% 0.22/0.48    (![A:$i,B:$i,C:$i]:
% 0.22/0.48     ( ( r2_hidden @ A @ ( k2_zfmisc_1 @ B @ C ) ) =>
% 0.22/0.48       ( ( r2_hidden @ ( k1_mcart_1 @ A ) @ B ) & 
% 0.22/0.48         ( r2_hidden @ ( k2_mcart_1 @ A ) @ C ) ) ))).
% 0.22/0.48  thf('3', plain,
% 0.22/0.48      (![X35 : $i, X36 : $i, X37 : $i]:
% 0.22/0.48         ((r2_hidden @ (k2_mcart_1 @ X35) @ X37)
% 0.22/0.48          | ~ (r2_hidden @ X35 @ (k2_zfmisc_1 @ X36 @ X37)))),
% 0.22/0.48      inference('cnf', [status(esa)], [t10_mcart_1])).
% 0.22/0.48  thf('4', plain, ((r2_hidden @ (k2_mcart_1 @ sk_A) @ (k1_tarski @ sk_D))),
% 0.22/0.48      inference('sup-', [status(thm)], ['2', '3'])).
% 0.22/0.48  thf(t69_enumset1, axiom,
% 0.22/0.48    (![A:$i]: ( ( k2_tarski @ A @ A ) = ( k1_tarski @ A ) ))).
% 0.22/0.48  thf('5', plain, (![X3 : $i]: ((k2_tarski @ X3 @ X3) = (k1_tarski @ X3))),
% 0.22/0.48      inference('cnf', [status(esa)], [t69_enumset1])).
% 0.22/0.48  thf(t136_enumset1, axiom,
% 0.22/0.48    (![A:$i,B:$i,C:$i]:
% 0.22/0.48     ( ~( ( ( A ) != ( B ) ) & ( ( A ) != ( C ) ) & 
% 0.22/0.48          ( ( k4_xboole_0 @ ( k1_enumset1 @ A @ B @ C ) @ ( k1_tarski @ A ) ) !=
% 0.22/0.48            ( k2_tarski @ B @ C ) ) ) ))).
% 0.22/0.48  thf('6', plain,
% 0.22/0.48      (![X0 : $i, X1 : $i, X2 : $i]:
% 0.22/0.48         (((X1) = (X0))
% 0.22/0.48          | ((k4_xboole_0 @ (k1_enumset1 @ X1 @ X0 @ X2) @ (k1_tarski @ X1))
% 0.22/0.48              = (k2_tarski @ X0 @ X2))
% 0.22/0.48          | ((X1) = (X2)))),
% 0.22/0.48      inference('cnf', [status(esa)], [t136_enumset1])).
% 0.22/0.48  thf(t64_zfmisc_1, axiom,
% 0.22/0.48    (![A:$i,B:$i,C:$i]:
% 0.22/0.48     ( ( r2_hidden @ A @ ( k4_xboole_0 @ B @ ( k1_tarski @ C ) ) ) <=>
% 0.22/0.48       ( ( r2_hidden @ A @ B ) & ( ( A ) != ( C ) ) ) ))).
% 0.22/0.48  thf('7', plain,
% 0.22/0.48      (![X31 : $i, X32 : $i, X33 : $i]:
% 0.22/0.48         (((X31) != (X33))
% 0.22/0.48          | ~ (r2_hidden @ X31 @ (k4_xboole_0 @ X32 @ (k1_tarski @ X33))))),
% 0.22/0.48      inference('cnf', [status(esa)], [t64_zfmisc_1])).
% 0.22/0.48  thf('8', plain,
% 0.22/0.48      (![X32 : $i, X33 : $i]:
% 0.22/0.48         ~ (r2_hidden @ X33 @ (k4_xboole_0 @ X32 @ (k1_tarski @ X33)))),
% 0.22/0.48      inference('simplify', [status(thm)], ['7'])).
% 0.22/0.48  thf('9', plain,
% 0.22/0.48      (![X0 : $i, X1 : $i, X2 : $i]:
% 0.22/0.48         (~ (r2_hidden @ X2 @ (k2_tarski @ X1 @ X0))
% 0.22/0.48          | ((X2) = (X0))
% 0.22/0.48          | ((X2) = (X1)))),
% 0.22/0.48      inference('sup-', [status(thm)], ['6', '8'])).
% 0.22/0.48  thf('10', plain,
% 0.22/0.48      (![X0 : $i, X1 : $i]:
% 0.22/0.48         (~ (r2_hidden @ X1 @ (k1_tarski @ X0)) | ((X1) = (X0)) | ((X1) = (X0)))),
% 0.22/0.48      inference('sup-', [status(thm)], ['5', '9'])).
% 0.22/0.48  thf('11', plain,
% 0.22/0.48      (![X0 : $i, X1 : $i]:
% 0.22/0.48         (((X1) = (X0)) | ~ (r2_hidden @ X1 @ (k1_tarski @ X0)))),
% 0.22/0.48      inference('simplify', [status(thm)], ['10'])).
% 0.22/0.48  thf('12', plain, (((k2_mcart_1 @ sk_A) = (sk_D))),
% 0.22/0.48      inference('sup-', [status(thm)], ['4', '11'])).
% 0.22/0.48  thf('13', plain,
% 0.22/0.48      ((((k1_mcart_1 @ sk_A) != (sk_B)) | ((k2_mcart_1 @ sk_A) != (sk_D)))),
% 0.22/0.48      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.22/0.48  thf('14', plain,
% 0.22/0.48      ((((k2_mcart_1 @ sk_A) != (sk_D)))
% 0.22/0.48         <= (~ (((k2_mcart_1 @ sk_A) = (sk_D))))),
% 0.22/0.48      inference('split', [status(esa)], ['13'])).
% 0.22/0.48  thf('15', plain,
% 0.22/0.48      ((((sk_D) != (sk_D))) <= (~ (((k2_mcart_1 @ sk_A) = (sk_D))))),
% 0.22/0.48      inference('sup-', [status(thm)], ['12', '14'])).
% 0.22/0.48  thf('16', plain, ((((k2_mcart_1 @ sk_A) = (sk_D)))),
% 0.22/0.48      inference('simplify', [status(thm)], ['15'])).
% 0.22/0.48  thf('17', plain,
% 0.22/0.48      (~ (((k1_mcart_1 @ sk_A) = (sk_B))) | ~ (((k2_mcart_1 @ sk_A) = (sk_D)))),
% 0.22/0.48      inference('split', [status(esa)], ['13'])).
% 0.22/0.48  thf('18', plain,
% 0.22/0.48      ((r2_hidden @ sk_A @ 
% 0.22/0.48        (k2_zfmisc_1 @ (k2_tarski @ sk_B @ sk_C) @ (k1_tarski @ sk_D)))),
% 0.22/0.48      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.22/0.48  thf(t15_mcart_1, axiom,
% 0.22/0.48    (![A:$i,B:$i,C:$i,D:$i]:
% 0.22/0.48     ( ( r2_hidden @ A @ ( k2_zfmisc_1 @ ( k2_tarski @ B @ C ) @ D ) ) =>
% 0.22/0.48       ( ( ( ( k1_mcart_1 @ A ) = ( B ) ) | ( ( k1_mcart_1 @ A ) = ( C ) ) ) & 
% 0.22/0.48         ( r2_hidden @ ( k2_mcart_1 @ A ) @ D ) ) ))).
% 0.22/0.48  thf('19', plain,
% 0.22/0.48      (![X38 : $i, X39 : $i, X40 : $i, X41 : $i]:
% 0.22/0.48         (((k1_mcart_1 @ X39) = (X38))
% 0.22/0.48          | ((k1_mcart_1 @ X39) = (X40))
% 0.22/0.48          | ~ (r2_hidden @ X39 @ (k2_zfmisc_1 @ (k2_tarski @ X40 @ X38) @ X41)))),
% 0.22/0.48      inference('cnf', [status(esa)], [t15_mcart_1])).
% 0.22/0.48  thf('20', plain,
% 0.22/0.48      ((((k1_mcart_1 @ sk_A) = (sk_B)) | ((k1_mcart_1 @ sk_A) = (sk_C)))),
% 0.22/0.48      inference('sup-', [status(thm)], ['18', '19'])).
% 0.22/0.48  thf('21', plain,
% 0.22/0.48      ((((k1_mcart_1 @ sk_A) != (sk_C)))
% 0.22/0.48         <= (~ (((k1_mcart_1 @ sk_A) = (sk_C))))),
% 0.22/0.48      inference('split', [status(esa)], ['0'])).
% 0.22/0.48  thf('22', plain,
% 0.22/0.48      (((((sk_C) != (sk_C)) | ((k1_mcart_1 @ sk_A) = (sk_B))))
% 0.22/0.48         <= (~ (((k1_mcart_1 @ sk_A) = (sk_C))))),
% 0.22/0.48      inference('sup-', [status(thm)], ['20', '21'])).
% 0.22/0.48  thf('23', plain,
% 0.22/0.48      ((((k1_mcart_1 @ sk_A) = (sk_B))) <= (~ (((k1_mcart_1 @ sk_A) = (sk_C))))),
% 0.22/0.48      inference('simplify', [status(thm)], ['22'])).
% 0.22/0.48  thf('24', plain,
% 0.22/0.48      ((((k1_mcart_1 @ sk_A) != (sk_B)))
% 0.22/0.48         <= (~ (((k1_mcart_1 @ sk_A) = (sk_B))))),
% 0.22/0.48      inference('split', [status(esa)], ['13'])).
% 0.22/0.48  thf('25', plain,
% 0.22/0.48      ((((sk_B) != (sk_B)))
% 0.22/0.48         <= (~ (((k1_mcart_1 @ sk_A) = (sk_C))) & 
% 0.22/0.48             ~ (((k1_mcart_1 @ sk_A) = (sk_B))))),
% 0.22/0.48      inference('sup-', [status(thm)], ['23', '24'])).
% 0.22/0.48  thf('26', plain,
% 0.22/0.48      ((((k1_mcart_1 @ sk_A) = (sk_B))) | (((k1_mcart_1 @ sk_A) = (sk_C)))),
% 0.22/0.48      inference('simplify', [status(thm)], ['25'])).
% 0.22/0.48  thf('27', plain, ($false),
% 0.22/0.48      inference('sat_resolution*', [status(thm)], ['1', '16', '17', '26'])).
% 0.22/0.48  
% 0.22/0.48  % SZS output end Refutation
% 0.22/0.48  
% 0.22/0.49  % Zipperpin 1.5 exiting
%------------------------------------------------------------------------------
