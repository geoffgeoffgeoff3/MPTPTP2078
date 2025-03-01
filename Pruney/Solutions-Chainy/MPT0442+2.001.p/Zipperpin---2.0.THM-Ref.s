%------------------------------------------------------------------------------
% File       : Zipperpin---2.0
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_portfolio.sh /export/starexec/sandbox2/benchmark/theBenchmark.p /export/starexec/sandbox2/tmp/tmp.Pd20YCTzqD

% Computer   : n016.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 13:39:44 EST 2020

% Result     : Theorem 0.71s
% Output     : Refutation 0.71s
% Verified   : 
% Statistics : Number of formulae       :   50 (  67 expanded)
%              Number of leaves         :   17 (  26 expanded)
%              Depth                    :    9
%              Number of atoms          :  342 ( 596 expanded)
%              Number of equality atoms :    8 (   9 expanded)
%              Maximal formula depth    :   12 (   6 average)

% Comments   : 
%------------------------------------------------------------------------------
thf(k2_relat_1_type,type,(
    k2_relat_1: $i > $i )).

thf(r2_hidden_type,type,(
    r2_hidden: $i > $i > $o )).

thf(sk_C_type,type,(
    sk_C: $i > $i > $i )).

thf(k4_tarski_type,type,(
    k4_tarski: $i > $i > $i )).

thf(k2_xboole_0_type,type,(
    k2_xboole_0: $i > $i > $i )).

thf(sk_A_type,type,(
    sk_A: $i )).

thf(r1_tarski_type,type,(
    r1_tarski: $i > $i > $o )).

thf(sk_D_1_type,type,(
    sk_D_1: $i > $i > $i )).

thf(k1_relat_1_type,type,(
    k1_relat_1: $i > $i )).

thf(sk_B_type,type,(
    sk_B: $i )).

thf(v1_relat_1_type,type,(
    v1_relat_1: $i > $o )).

thf(t25_relat_1,conjecture,(
    ! [A: $i] :
      ( ( v1_relat_1 @ A )
     => ! [B: $i] :
          ( ( v1_relat_1 @ B )
         => ( ( r1_tarski @ A @ B )
           => ( ( r1_tarski @ ( k1_relat_1 @ A ) @ ( k1_relat_1 @ B ) )
              & ( r1_tarski @ ( k2_relat_1 @ A ) @ ( k2_relat_1 @ B ) ) ) ) ) ) )).

thf(zf_stmt_0,negated_conjecture,(
    ~ ! [A: $i] :
        ( ( v1_relat_1 @ A )
       => ! [B: $i] :
            ( ( v1_relat_1 @ B )
           => ( ( r1_tarski @ A @ B )
             => ( ( r1_tarski @ ( k1_relat_1 @ A ) @ ( k1_relat_1 @ B ) )
                & ( r1_tarski @ ( k2_relat_1 @ A ) @ ( k2_relat_1 @ B ) ) ) ) ) ) ),
    inference('cnf.neg',[status(esa)],[t25_relat_1])).

thf('0',plain,
    ( ~ ( r1_tarski @ ( k1_relat_1 @ sk_A ) @ ( k1_relat_1 @ sk_B ) )
    | ~ ( r1_tarski @ ( k2_relat_1 @ sk_A ) @ ( k2_relat_1 @ sk_B ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('1',plain,
    ( ~ ( r1_tarski @ ( k2_relat_1 @ sk_A ) @ ( k2_relat_1 @ sk_B ) )
   <= ~ ( r1_tarski @ ( k2_relat_1 @ sk_A ) @ ( k2_relat_1 @ sk_B ) ) ),
    inference(split,[status(esa)],['0'])).

thf('2',plain,(
    r1_tarski @ sk_A @ sk_B ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(t12_xboole_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( r1_tarski @ A @ B )
     => ( ( k2_xboole_0 @ A @ B )
        = B ) ) )).

thf('3',plain,(
    ! [X4: $i,X5: $i] :
      ( ( ( k2_xboole_0 @ X5 @ X4 )
        = X4 )
      | ~ ( r1_tarski @ X5 @ X4 ) ) ),
    inference(cnf,[status(esa)],[t12_xboole_1])).

thf('4',plain,
    ( ( k2_xboole_0 @ sk_A @ sk_B )
    = sk_B ),
    inference('sup-',[status(thm)],['2','3'])).

thf(t13_relat_1,axiom,(
    ! [A: $i] :
      ( ( v1_relat_1 @ A )
     => ! [B: $i] :
          ( ( v1_relat_1 @ B )
         => ( ( k1_relat_1 @ ( k2_xboole_0 @ A @ B ) )
            = ( k2_xboole_0 @ ( k1_relat_1 @ A ) @ ( k1_relat_1 @ B ) ) ) ) ) )).

thf('5',plain,(
    ! [X20: $i,X21: $i] :
      ( ~ ( v1_relat_1 @ X20 )
      | ( ( k1_relat_1 @ ( k2_xboole_0 @ X21 @ X20 ) )
        = ( k2_xboole_0 @ ( k1_relat_1 @ X21 ) @ ( k1_relat_1 @ X20 ) ) )
      | ~ ( v1_relat_1 @ X21 ) ) ),
    inference(cnf,[status(esa)],[t13_relat_1])).

thf(t7_xboole_1,axiom,(
    ! [A: $i,B: $i] :
      ( r1_tarski @ A @ ( k2_xboole_0 @ A @ B ) ) )).

thf('6',plain,(
    ! [X6: $i,X7: $i] :
      ( r1_tarski @ X6 @ ( k2_xboole_0 @ X6 @ X7 ) ) ),
    inference(cnf,[status(esa)],[t7_xboole_1])).

thf('7',plain,(
    ! [X0: $i,X1: $i] :
      ( ( r1_tarski @ ( k1_relat_1 @ X1 ) @ ( k1_relat_1 @ ( k2_xboole_0 @ X1 @ X0 ) ) )
      | ~ ( v1_relat_1 @ X1 )
      | ~ ( v1_relat_1 @ X0 ) ) ),
    inference('sup+',[status(thm)],['5','6'])).

thf('8',plain,
    ( ( r1_tarski @ ( k1_relat_1 @ sk_A ) @ ( k1_relat_1 @ sk_B ) )
    | ~ ( v1_relat_1 @ sk_B )
    | ~ ( v1_relat_1 @ sk_A ) ),
    inference('sup+',[status(thm)],['4','7'])).

thf('9',plain,(
    v1_relat_1 @ sk_B ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('10',plain,(
    v1_relat_1 @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('11',plain,(
    r1_tarski @ ( k1_relat_1 @ sk_A ) @ ( k1_relat_1 @ sk_B ) ),
    inference(demod,[status(thm)],['8','9','10'])).

thf('12',plain,
    ( ~ ( r1_tarski @ ( k1_relat_1 @ sk_A ) @ ( k1_relat_1 @ sk_B ) )
   <= ~ ( r1_tarski @ ( k1_relat_1 @ sk_A ) @ ( k1_relat_1 @ sk_B ) ) ),
    inference(split,[status(esa)],['0'])).

thf('13',plain,(
    r1_tarski @ ( k1_relat_1 @ sk_A ) @ ( k1_relat_1 @ sk_B ) ),
    inference('sup-',[status(thm)],['11','12'])).

thf('14',plain,
    ( ~ ( r1_tarski @ ( k2_relat_1 @ sk_A ) @ ( k2_relat_1 @ sk_B ) )
    | ~ ( r1_tarski @ ( k1_relat_1 @ sk_A ) @ ( k1_relat_1 @ sk_B ) ) ),
    inference(split,[status(esa)],['0'])).

thf('15',plain,(
    ~ ( r1_tarski @ ( k2_relat_1 @ sk_A ) @ ( k2_relat_1 @ sk_B ) ) ),
    inference('sat_resolution*',[status(thm)],['13','14'])).

thf('16',plain,(
    ~ ( r1_tarski @ ( k2_relat_1 @ sk_A ) @ ( k2_relat_1 @ sk_B ) ) ),
    inference(simpl_trail,[status(thm)],['1','15'])).

thf(d3_tarski,axiom,(
    ! [A: $i,B: $i] :
      ( ( r1_tarski @ A @ B )
    <=> ! [C: $i] :
          ( ( r2_hidden @ C @ A )
         => ( r2_hidden @ C @ B ) ) ) )).

thf('17',plain,(
    ! [X1: $i,X3: $i] :
      ( ( r1_tarski @ X1 @ X3 )
      | ( r2_hidden @ ( sk_C @ X3 @ X1 ) @ X1 ) ) ),
    inference(cnf,[status(esa)],[d3_tarski])).

thf(d5_relat_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( B
        = ( k2_relat_1 @ A ) )
    <=> ! [C: $i] :
          ( ( r2_hidden @ C @ B )
        <=> ? [D: $i] :
              ( r2_hidden @ ( k4_tarski @ D @ C ) @ A ) ) ) )).

thf('18',plain,(
    ! [X15: $i,X16: $i,X17: $i] :
      ( ~ ( r2_hidden @ X17 @ X16 )
      | ( r2_hidden @ ( k4_tarski @ ( sk_D_1 @ X17 @ X15 ) @ X17 ) @ X15 )
      | ( X16
       != ( k2_relat_1 @ X15 ) ) ) ),
    inference(cnf,[status(esa)],[d5_relat_1])).

thf('19',plain,(
    ! [X15: $i,X17: $i] :
      ( ( r2_hidden @ ( k4_tarski @ ( sk_D_1 @ X17 @ X15 ) @ X17 ) @ X15 )
      | ~ ( r2_hidden @ X17 @ ( k2_relat_1 @ X15 ) ) ) ),
    inference(simplify,[status(thm)],['18'])).

thf('20',plain,(
    ! [X0: $i,X1: $i] :
      ( ( r1_tarski @ ( k2_relat_1 @ X0 ) @ X1 )
      | ( r2_hidden @ ( k4_tarski @ ( sk_D_1 @ ( sk_C @ X1 @ ( k2_relat_1 @ X0 ) ) @ X0 ) @ ( sk_C @ X1 @ ( k2_relat_1 @ X0 ) ) ) @ X0 ) ) ),
    inference('sup-',[status(thm)],['17','19'])).

thf('21',plain,(
    r1_tarski @ sk_A @ sk_B ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('22',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( ~ ( r2_hidden @ X0 @ X1 )
      | ( r2_hidden @ X0 @ X2 )
      | ~ ( r1_tarski @ X1 @ X2 ) ) ),
    inference(cnf,[status(esa)],[d3_tarski])).

thf('23',plain,(
    ! [X0: $i] :
      ( ( r2_hidden @ X0 @ sk_B )
      | ~ ( r2_hidden @ X0 @ sk_A ) ) ),
    inference('sup-',[status(thm)],['21','22'])).

thf('24',plain,(
    ! [X0: $i] :
      ( ( r1_tarski @ ( k2_relat_1 @ sk_A ) @ X0 )
      | ( r2_hidden @ ( k4_tarski @ ( sk_D_1 @ ( sk_C @ X0 @ ( k2_relat_1 @ sk_A ) ) @ sk_A ) @ ( sk_C @ X0 @ ( k2_relat_1 @ sk_A ) ) ) @ sk_B ) ) ),
    inference('sup-',[status(thm)],['20','23'])).

thf('25',plain,(
    ! [X13: $i,X14: $i,X15: $i,X16: $i] :
      ( ~ ( r2_hidden @ ( k4_tarski @ X13 @ X14 ) @ X15 )
      | ( r2_hidden @ X14 @ X16 )
      | ( X16
       != ( k2_relat_1 @ X15 ) ) ) ),
    inference(cnf,[status(esa)],[d5_relat_1])).

thf('26',plain,(
    ! [X13: $i,X14: $i,X15: $i] :
      ( ( r2_hidden @ X14 @ ( k2_relat_1 @ X15 ) )
      | ~ ( r2_hidden @ ( k4_tarski @ X13 @ X14 ) @ X15 ) ) ),
    inference(simplify,[status(thm)],['25'])).

thf('27',plain,(
    ! [X0: $i] :
      ( ( r1_tarski @ ( k2_relat_1 @ sk_A ) @ X0 )
      | ( r2_hidden @ ( sk_C @ X0 @ ( k2_relat_1 @ sk_A ) ) @ ( k2_relat_1 @ sk_B ) ) ) ),
    inference('sup-',[status(thm)],['24','26'])).

thf('28',plain,(
    ! [X1: $i,X3: $i] :
      ( ( r1_tarski @ X1 @ X3 )
      | ~ ( r2_hidden @ ( sk_C @ X3 @ X1 ) @ X3 ) ) ),
    inference(cnf,[status(esa)],[d3_tarski])).

thf('29',plain,
    ( ( r1_tarski @ ( k2_relat_1 @ sk_A ) @ ( k2_relat_1 @ sk_B ) )
    | ( r1_tarski @ ( k2_relat_1 @ sk_A ) @ ( k2_relat_1 @ sk_B ) ) ),
    inference('sup-',[status(thm)],['27','28'])).

thf('30',plain,(
    r1_tarski @ ( k2_relat_1 @ sk_A ) @ ( k2_relat_1 @ sk_B ) ),
    inference(simplify,[status(thm)],['29'])).

thf('31',plain,(
    $false ),
    inference(demod,[status(thm)],['16','30'])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.11/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.11/0.13  % Command    : run_portfolio.sh /export/starexec/sandbox2/benchmark/theBenchmark.p /export/starexec/sandbox2/tmp/tmp.Pd20YCTzqD
% 0.13/0.34  % Computer   : n016.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % DateTime   : Tue Dec  1 19:09:04 EST 2020
% 0.13/0.34  % CPUTime    : 
% 0.13/0.34  % Running portfolio for 600 s
% 0.13/0.34  % File         : /export/starexec/sandbox2/benchmark/theBenchmark.p
% 0.13/0.35  % Number of cores: 8
% 0.13/0.35  % Python version: Python 3.6.8
% 0.13/0.35  % Running in FO mode
% 0.71/0.90  % Running /export/starexec/sandbox2/solver/bin/fo/fo7.sh for 78
% 0.71/0.90  % Solved by: fo/fo7.sh
% 0.71/0.90  To remain in the chosen logic fragment, unification with booleans has been disabled.
% 0.71/0.90  % done 779 iterations in 0.449s
% 0.71/0.90  % SZS status Theorem for '/export/starexec/sandbox2/benchmark/theBenchmark.p'
% 0.71/0.90  % SZS output start Refutation
% 0.71/0.90  thf(k2_relat_1_type, type, k2_relat_1: $i > $i).
% 0.71/0.90  thf(r2_hidden_type, type, r2_hidden: $i > $i > $o).
% 0.71/0.90  thf(sk_C_type, type, sk_C: $i > $i > $i).
% 0.71/0.90  thf(k4_tarski_type, type, k4_tarski: $i > $i > $i).
% 0.71/0.90  thf(k2_xboole_0_type, type, k2_xboole_0: $i > $i > $i).
% 0.71/0.90  thf(sk_A_type, type, sk_A: $i).
% 0.71/0.90  thf(r1_tarski_type, type, r1_tarski: $i > $i > $o).
% 0.71/0.90  thf(sk_D_1_type, type, sk_D_1: $i > $i > $i).
% 0.71/0.90  thf(k1_relat_1_type, type, k1_relat_1: $i > $i).
% 0.71/0.90  thf(sk_B_type, type, sk_B: $i).
% 0.71/0.90  thf(v1_relat_1_type, type, v1_relat_1: $i > $o).
% 0.71/0.90  thf(t25_relat_1, conjecture,
% 0.71/0.90    (![A:$i]:
% 0.71/0.90     ( ( v1_relat_1 @ A ) =>
% 0.71/0.90       ( ![B:$i]:
% 0.71/0.90         ( ( v1_relat_1 @ B ) =>
% 0.71/0.90           ( ( r1_tarski @ A @ B ) =>
% 0.71/0.90             ( ( r1_tarski @ ( k1_relat_1 @ A ) @ ( k1_relat_1 @ B ) ) & 
% 0.71/0.90               ( r1_tarski @ ( k2_relat_1 @ A ) @ ( k2_relat_1 @ B ) ) ) ) ) ) ))).
% 0.71/0.90  thf(zf_stmt_0, negated_conjecture,
% 0.71/0.90    (~( ![A:$i]:
% 0.71/0.90        ( ( v1_relat_1 @ A ) =>
% 0.71/0.90          ( ![B:$i]:
% 0.71/0.90            ( ( v1_relat_1 @ B ) =>
% 0.71/0.90              ( ( r1_tarski @ A @ B ) =>
% 0.71/0.90                ( ( r1_tarski @ ( k1_relat_1 @ A ) @ ( k1_relat_1 @ B ) ) & 
% 0.71/0.90                  ( r1_tarski @ ( k2_relat_1 @ A ) @ ( k2_relat_1 @ B ) ) ) ) ) ) ) )),
% 0.71/0.90    inference('cnf.neg', [status(esa)], [t25_relat_1])).
% 0.71/0.90  thf('0', plain,
% 0.71/0.90      ((~ (r1_tarski @ (k1_relat_1 @ sk_A) @ (k1_relat_1 @ sk_B))
% 0.71/0.90        | ~ (r1_tarski @ (k2_relat_1 @ sk_A) @ (k2_relat_1 @ sk_B)))),
% 0.71/0.90      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.71/0.90  thf('1', plain,
% 0.71/0.90      ((~ (r1_tarski @ (k2_relat_1 @ sk_A) @ (k2_relat_1 @ sk_B)))
% 0.71/0.90         <= (~ ((r1_tarski @ (k2_relat_1 @ sk_A) @ (k2_relat_1 @ sk_B))))),
% 0.71/0.90      inference('split', [status(esa)], ['0'])).
% 0.71/0.90  thf('2', plain, ((r1_tarski @ sk_A @ sk_B)),
% 0.71/0.90      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.71/0.90  thf(t12_xboole_1, axiom,
% 0.71/0.90    (![A:$i,B:$i]:
% 0.71/0.90     ( ( r1_tarski @ A @ B ) => ( ( k2_xboole_0 @ A @ B ) = ( B ) ) ))).
% 0.71/0.90  thf('3', plain,
% 0.71/0.90      (![X4 : $i, X5 : $i]:
% 0.71/0.90         (((k2_xboole_0 @ X5 @ X4) = (X4)) | ~ (r1_tarski @ X5 @ X4))),
% 0.71/0.90      inference('cnf', [status(esa)], [t12_xboole_1])).
% 0.71/0.90  thf('4', plain, (((k2_xboole_0 @ sk_A @ sk_B) = (sk_B))),
% 0.71/0.90      inference('sup-', [status(thm)], ['2', '3'])).
% 0.71/0.90  thf(t13_relat_1, axiom,
% 0.71/0.90    (![A:$i]:
% 0.71/0.90     ( ( v1_relat_1 @ A ) =>
% 0.71/0.90       ( ![B:$i]:
% 0.71/0.90         ( ( v1_relat_1 @ B ) =>
% 0.71/0.90           ( ( k1_relat_1 @ ( k2_xboole_0 @ A @ B ) ) =
% 0.71/0.90             ( k2_xboole_0 @ ( k1_relat_1 @ A ) @ ( k1_relat_1 @ B ) ) ) ) ) ))).
% 0.71/0.90  thf('5', plain,
% 0.71/0.90      (![X20 : $i, X21 : $i]:
% 0.71/0.90         (~ (v1_relat_1 @ X20)
% 0.71/0.90          | ((k1_relat_1 @ (k2_xboole_0 @ X21 @ X20))
% 0.71/0.90              = (k2_xboole_0 @ (k1_relat_1 @ X21) @ (k1_relat_1 @ X20)))
% 0.71/0.90          | ~ (v1_relat_1 @ X21))),
% 0.71/0.90      inference('cnf', [status(esa)], [t13_relat_1])).
% 0.71/0.90  thf(t7_xboole_1, axiom,
% 0.71/0.90    (![A:$i,B:$i]: ( r1_tarski @ A @ ( k2_xboole_0 @ A @ B ) ))).
% 0.71/0.90  thf('6', plain,
% 0.71/0.90      (![X6 : $i, X7 : $i]: (r1_tarski @ X6 @ (k2_xboole_0 @ X6 @ X7))),
% 0.71/0.90      inference('cnf', [status(esa)], [t7_xboole_1])).
% 0.71/0.90  thf('7', plain,
% 0.71/0.90      (![X0 : $i, X1 : $i]:
% 0.71/0.90         ((r1_tarski @ (k1_relat_1 @ X1) @ 
% 0.71/0.90           (k1_relat_1 @ (k2_xboole_0 @ X1 @ X0)))
% 0.71/0.90          | ~ (v1_relat_1 @ X1)
% 0.71/0.90          | ~ (v1_relat_1 @ X0))),
% 0.71/0.90      inference('sup+', [status(thm)], ['5', '6'])).
% 0.71/0.90  thf('8', plain,
% 0.71/0.90      (((r1_tarski @ (k1_relat_1 @ sk_A) @ (k1_relat_1 @ sk_B))
% 0.71/0.90        | ~ (v1_relat_1 @ sk_B)
% 0.71/0.90        | ~ (v1_relat_1 @ sk_A))),
% 0.71/0.90      inference('sup+', [status(thm)], ['4', '7'])).
% 0.71/0.90  thf('9', plain, ((v1_relat_1 @ sk_B)),
% 0.71/0.90      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.71/0.90  thf('10', plain, ((v1_relat_1 @ sk_A)),
% 0.71/0.90      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.71/0.90  thf('11', plain, ((r1_tarski @ (k1_relat_1 @ sk_A) @ (k1_relat_1 @ sk_B))),
% 0.71/0.90      inference('demod', [status(thm)], ['8', '9', '10'])).
% 0.71/0.90  thf('12', plain,
% 0.71/0.90      ((~ (r1_tarski @ (k1_relat_1 @ sk_A) @ (k1_relat_1 @ sk_B)))
% 0.71/0.90         <= (~ ((r1_tarski @ (k1_relat_1 @ sk_A) @ (k1_relat_1 @ sk_B))))),
% 0.71/0.90      inference('split', [status(esa)], ['0'])).
% 0.71/0.90  thf('13', plain, (((r1_tarski @ (k1_relat_1 @ sk_A) @ (k1_relat_1 @ sk_B)))),
% 0.71/0.90      inference('sup-', [status(thm)], ['11', '12'])).
% 0.71/0.90  thf('14', plain,
% 0.71/0.90      (~ ((r1_tarski @ (k2_relat_1 @ sk_A) @ (k2_relat_1 @ sk_B))) | 
% 0.71/0.90       ~ ((r1_tarski @ (k1_relat_1 @ sk_A) @ (k1_relat_1 @ sk_B)))),
% 0.71/0.90      inference('split', [status(esa)], ['0'])).
% 0.71/0.90  thf('15', plain,
% 0.71/0.90      (~ ((r1_tarski @ (k2_relat_1 @ sk_A) @ (k2_relat_1 @ sk_B)))),
% 0.71/0.90      inference('sat_resolution*', [status(thm)], ['13', '14'])).
% 0.71/0.90  thf('16', plain, (~ (r1_tarski @ (k2_relat_1 @ sk_A) @ (k2_relat_1 @ sk_B))),
% 0.71/0.90      inference('simpl_trail', [status(thm)], ['1', '15'])).
% 0.71/0.90  thf(d3_tarski, axiom,
% 0.71/0.90    (![A:$i,B:$i]:
% 0.71/0.90     ( ( r1_tarski @ A @ B ) <=>
% 0.71/0.90       ( ![C:$i]: ( ( r2_hidden @ C @ A ) => ( r2_hidden @ C @ B ) ) ) ))).
% 0.71/0.90  thf('17', plain,
% 0.71/0.90      (![X1 : $i, X3 : $i]:
% 0.71/0.90         ((r1_tarski @ X1 @ X3) | (r2_hidden @ (sk_C @ X3 @ X1) @ X1))),
% 0.71/0.90      inference('cnf', [status(esa)], [d3_tarski])).
% 0.71/0.90  thf(d5_relat_1, axiom,
% 0.71/0.90    (![A:$i,B:$i]:
% 0.71/0.90     ( ( ( B ) = ( k2_relat_1 @ A ) ) <=>
% 0.71/0.90       ( ![C:$i]:
% 0.71/0.90         ( ( r2_hidden @ C @ B ) <=>
% 0.71/0.90           ( ?[D:$i]: ( r2_hidden @ ( k4_tarski @ D @ C ) @ A ) ) ) ) ))).
% 0.71/0.90  thf('18', plain,
% 0.71/0.90      (![X15 : $i, X16 : $i, X17 : $i]:
% 0.71/0.90         (~ (r2_hidden @ X17 @ X16)
% 0.71/0.90          | (r2_hidden @ (k4_tarski @ (sk_D_1 @ X17 @ X15) @ X17) @ X15)
% 0.71/0.90          | ((X16) != (k2_relat_1 @ X15)))),
% 0.71/0.90      inference('cnf', [status(esa)], [d5_relat_1])).
% 0.71/0.90  thf('19', plain,
% 0.71/0.90      (![X15 : $i, X17 : $i]:
% 0.71/0.90         ((r2_hidden @ (k4_tarski @ (sk_D_1 @ X17 @ X15) @ X17) @ X15)
% 0.71/0.90          | ~ (r2_hidden @ X17 @ (k2_relat_1 @ X15)))),
% 0.71/0.90      inference('simplify', [status(thm)], ['18'])).
% 0.71/0.90  thf('20', plain,
% 0.71/0.90      (![X0 : $i, X1 : $i]:
% 0.71/0.90         ((r1_tarski @ (k2_relat_1 @ X0) @ X1)
% 0.71/0.90          | (r2_hidden @ 
% 0.71/0.90             (k4_tarski @ (sk_D_1 @ (sk_C @ X1 @ (k2_relat_1 @ X0)) @ X0) @ 
% 0.71/0.90              (sk_C @ X1 @ (k2_relat_1 @ X0))) @ 
% 0.71/0.90             X0))),
% 0.71/0.90      inference('sup-', [status(thm)], ['17', '19'])).
% 0.71/0.90  thf('21', plain, ((r1_tarski @ sk_A @ sk_B)),
% 0.71/0.90      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.71/0.90  thf('22', plain,
% 0.71/0.90      (![X0 : $i, X1 : $i, X2 : $i]:
% 0.71/0.90         (~ (r2_hidden @ X0 @ X1)
% 0.71/0.90          | (r2_hidden @ X0 @ X2)
% 0.71/0.90          | ~ (r1_tarski @ X1 @ X2))),
% 0.71/0.90      inference('cnf', [status(esa)], [d3_tarski])).
% 0.71/0.90  thf('23', plain,
% 0.71/0.90      (![X0 : $i]: ((r2_hidden @ X0 @ sk_B) | ~ (r2_hidden @ X0 @ sk_A))),
% 0.71/0.90      inference('sup-', [status(thm)], ['21', '22'])).
% 0.71/0.90  thf('24', plain,
% 0.71/0.90      (![X0 : $i]:
% 0.71/0.90         ((r1_tarski @ (k2_relat_1 @ sk_A) @ X0)
% 0.71/0.90          | (r2_hidden @ 
% 0.71/0.90             (k4_tarski @ 
% 0.71/0.90              (sk_D_1 @ (sk_C @ X0 @ (k2_relat_1 @ sk_A)) @ sk_A) @ 
% 0.71/0.90              (sk_C @ X0 @ (k2_relat_1 @ sk_A))) @ 
% 0.71/0.90             sk_B))),
% 0.71/0.90      inference('sup-', [status(thm)], ['20', '23'])).
% 0.71/0.90  thf('25', plain,
% 0.71/0.90      (![X13 : $i, X14 : $i, X15 : $i, X16 : $i]:
% 0.71/0.90         (~ (r2_hidden @ (k4_tarski @ X13 @ X14) @ X15)
% 0.71/0.90          | (r2_hidden @ X14 @ X16)
% 0.71/0.90          | ((X16) != (k2_relat_1 @ X15)))),
% 0.71/0.90      inference('cnf', [status(esa)], [d5_relat_1])).
% 0.71/0.90  thf('26', plain,
% 0.71/0.90      (![X13 : $i, X14 : $i, X15 : $i]:
% 0.71/0.90         ((r2_hidden @ X14 @ (k2_relat_1 @ X15))
% 0.71/0.90          | ~ (r2_hidden @ (k4_tarski @ X13 @ X14) @ X15))),
% 0.71/0.90      inference('simplify', [status(thm)], ['25'])).
% 0.71/0.90  thf('27', plain,
% 0.71/0.90      (![X0 : $i]:
% 0.71/0.90         ((r1_tarski @ (k2_relat_1 @ sk_A) @ X0)
% 0.71/0.90          | (r2_hidden @ (sk_C @ X0 @ (k2_relat_1 @ sk_A)) @ 
% 0.71/0.90             (k2_relat_1 @ sk_B)))),
% 0.71/0.90      inference('sup-', [status(thm)], ['24', '26'])).
% 0.71/0.90  thf('28', plain,
% 0.71/0.90      (![X1 : $i, X3 : $i]:
% 0.71/0.90         ((r1_tarski @ X1 @ X3) | ~ (r2_hidden @ (sk_C @ X3 @ X1) @ X3))),
% 0.71/0.90      inference('cnf', [status(esa)], [d3_tarski])).
% 0.71/0.90  thf('29', plain,
% 0.71/0.90      (((r1_tarski @ (k2_relat_1 @ sk_A) @ (k2_relat_1 @ sk_B))
% 0.71/0.90        | (r1_tarski @ (k2_relat_1 @ sk_A) @ (k2_relat_1 @ sk_B)))),
% 0.71/0.90      inference('sup-', [status(thm)], ['27', '28'])).
% 0.71/0.90  thf('30', plain, ((r1_tarski @ (k2_relat_1 @ sk_A) @ (k2_relat_1 @ sk_B))),
% 0.71/0.90      inference('simplify', [status(thm)], ['29'])).
% 0.71/0.90  thf('31', plain, ($false), inference('demod', [status(thm)], ['16', '30'])).
% 0.71/0.90  
% 0.71/0.90  % SZS output end Refutation
% 0.71/0.90  
% 0.71/0.91  % Zipperpin 1.5 exiting
%------------------------------------------------------------------------------
