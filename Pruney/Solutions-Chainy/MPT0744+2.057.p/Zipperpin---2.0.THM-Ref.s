%------------------------------------------------------------------------------
% File       : Zipperpin---2.0
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_portfolio.sh /export/starexec/sandbox/benchmark/theBenchmark.p /export/starexec/sandbox/tmp/tmp.lgTr9O5NZs

% Computer   : n011.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 13:48:07 EST 2020

% Result     : Theorem 0.21s
% Output     : Refutation 0.21s
% Verified   : 
% Statistics : Number of formulae       :   66 ( 110 expanded)
%              Number of leaves         :   14 (  34 expanded)
%              Depth                    :   12
%              Number of atoms          :  445 ( 887 expanded)
%              Number of equality atoms :   12 (  13 expanded)
%              Maximal formula depth    :   11 (   5 average)

% Comments   : 
%------------------------------------------------------------------------------
thf(k1_ordinal1_type,type,(
    k1_ordinal1: $i > $i )).

thf(v3_ordinal1_type,type,(
    v3_ordinal1: $i > $o )).

thf(r1_ordinal1_type,type,(
    r1_ordinal1: $i > $i > $o )).

thf(sk_A_type,type,(
    sk_A: $i )).

thf(sk_B_type,type,(
    sk_B: $i )).

thf(r1_tarski_type,type,(
    r1_tarski: $i > $i > $o )).

thf(r2_hidden_type,type,(
    r2_hidden: $i > $i > $o )).

thf(t34_ordinal1,conjecture,(
    ! [A: $i] :
      ( ( v3_ordinal1 @ A )
     => ! [B: $i] :
          ( ( v3_ordinal1 @ B )
         => ( ( r2_hidden @ A @ ( k1_ordinal1 @ B ) )
          <=> ( r1_ordinal1 @ A @ B ) ) ) ) )).

thf(zf_stmt_0,negated_conjecture,(
    ~ ! [A: $i] :
        ( ( v3_ordinal1 @ A )
       => ! [B: $i] :
            ( ( v3_ordinal1 @ B )
           => ( ( r2_hidden @ A @ ( k1_ordinal1 @ B ) )
            <=> ( r1_ordinal1 @ A @ B ) ) ) ) ),
    inference('cnf.neg',[status(esa)],[t34_ordinal1])).

thf('0',plain,
    ( ~ ( r1_ordinal1 @ sk_A @ sk_B )
    | ~ ( r2_hidden @ sk_A @ ( k1_ordinal1 @ sk_B ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('1',plain,
    ( ~ ( r1_ordinal1 @ sk_A @ sk_B )
    | ~ ( r2_hidden @ sk_A @ ( k1_ordinal1 @ sk_B ) ) ),
    inference(split,[status(esa)],['0'])).

thf('2',plain,(
    v3_ordinal1 @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(connectedness_r1_ordinal1,axiom,(
    ! [A: $i,B: $i] :
      ( ( ( v3_ordinal1 @ A )
        & ( v3_ordinal1 @ B ) )
     => ( ( r1_ordinal1 @ A @ B )
        | ( r1_ordinal1 @ B @ A ) ) ) )).

thf('3',plain,(
    ! [X0: $i,X1: $i] :
      ( ~ ( v3_ordinal1 @ X0 )
      | ~ ( v3_ordinal1 @ X1 )
      | ( r1_ordinal1 @ X0 @ X1 )
      | ( r1_ordinal1 @ X1 @ X0 ) ) ),
    inference(cnf,[status(esa)],[connectedness_r1_ordinal1])).

thf('4',plain,(
    ! [X0: $i] :
      ( ( r1_ordinal1 @ X0 @ sk_A )
      | ( r1_ordinal1 @ sk_A @ X0 )
      | ~ ( v3_ordinal1 @ X0 ) ) ),
    inference('sup-',[status(thm)],['2','3'])).

thf(redefinition_r1_ordinal1,axiom,(
    ! [A: $i,B: $i] :
      ( ( ( v3_ordinal1 @ A )
        & ( v3_ordinal1 @ B ) )
     => ( ( r1_ordinal1 @ A @ B )
      <=> ( r1_tarski @ A @ B ) ) ) )).

thf('5',plain,(
    ! [X3: $i,X4: $i] :
      ( ~ ( v3_ordinal1 @ X3 )
      | ~ ( v3_ordinal1 @ X4 )
      | ( r1_tarski @ X3 @ X4 )
      | ~ ( r1_ordinal1 @ X3 @ X4 ) ) ),
    inference(cnf,[status(esa)],[redefinition_r1_ordinal1])).

thf('6',plain,(
    ! [X0: $i] :
      ( ~ ( v3_ordinal1 @ X0 )
      | ( r1_ordinal1 @ sk_A @ X0 )
      | ( r1_tarski @ X0 @ sk_A )
      | ~ ( v3_ordinal1 @ sk_A )
      | ~ ( v3_ordinal1 @ X0 ) ) ),
    inference('sup-',[status(thm)],['4','5'])).

thf('7',plain,(
    v3_ordinal1 @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('8',plain,(
    ! [X0: $i] :
      ( ~ ( v3_ordinal1 @ X0 )
      | ( r1_ordinal1 @ sk_A @ X0 )
      | ( r1_tarski @ X0 @ sk_A )
      | ~ ( v3_ordinal1 @ X0 ) ) ),
    inference(demod,[status(thm)],['6','7'])).

thf('9',plain,(
    ! [X0: $i] :
      ( ( r1_tarski @ X0 @ sk_A )
      | ( r1_ordinal1 @ sk_A @ X0 )
      | ~ ( v3_ordinal1 @ X0 ) ) ),
    inference(simplify,[status(thm)],['8'])).

thf('10',plain,
    ( ~ ( r1_ordinal1 @ sk_A @ sk_B )
   <= ~ ( r1_ordinal1 @ sk_A @ sk_B ) ),
    inference(split,[status(esa)],['0'])).

thf('11',plain,
    ( ( ~ ( v3_ordinal1 @ sk_B )
      | ( r1_tarski @ sk_B @ sk_A ) )
   <= ~ ( r1_ordinal1 @ sk_A @ sk_B ) ),
    inference('sup-',[status(thm)],['9','10'])).

thf('12',plain,(
    v3_ordinal1 @ sk_B ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('13',plain,
    ( ( r1_tarski @ sk_B @ sk_A )
   <= ~ ( r1_ordinal1 @ sk_A @ sk_B ) ),
    inference(demod,[status(thm)],['11','12'])).

thf('14',plain,
    ( ( r1_ordinal1 @ sk_A @ sk_B )
    | ( r2_hidden @ sk_A @ ( k1_ordinal1 @ sk_B ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('15',plain,
    ( ( r2_hidden @ sk_A @ ( k1_ordinal1 @ sk_B ) )
   <= ( r2_hidden @ sk_A @ ( k1_ordinal1 @ sk_B ) ) ),
    inference(split,[status(esa)],['14'])).

thf(t13_ordinal1,axiom,(
    ! [A: $i,B: $i] :
      ( ( r2_hidden @ A @ ( k1_ordinal1 @ B ) )
    <=> ( ( r2_hidden @ A @ B )
        | ( A = B ) ) ) )).

thf('16',plain,(
    ! [X6: $i,X7: $i] :
      ( ( X7 = X6 )
      | ( r2_hidden @ X7 @ X6 )
      | ~ ( r2_hidden @ X7 @ ( k1_ordinal1 @ X6 ) ) ) ),
    inference(cnf,[status(esa)],[t13_ordinal1])).

thf('17',plain,
    ( ( ( r2_hidden @ sk_A @ sk_B )
      | ( sk_A = sk_B ) )
   <= ( r2_hidden @ sk_A @ ( k1_ordinal1 @ sk_B ) ) ),
    inference('sup-',[status(thm)],['15','16'])).

thf(t7_ordinal1,axiom,(
    ! [A: $i,B: $i] :
      ~ ( ( r2_hidden @ A @ B )
        & ( r1_tarski @ B @ A ) ) )).

thf('18',plain,(
    ! [X11: $i,X12: $i] :
      ( ~ ( r2_hidden @ X11 @ X12 )
      | ~ ( r1_tarski @ X12 @ X11 ) ) ),
    inference(cnf,[status(esa)],[t7_ordinal1])).

thf('19',plain,
    ( ( ( sk_A = sk_B )
      | ~ ( r1_tarski @ sk_B @ sk_A ) )
   <= ( r2_hidden @ sk_A @ ( k1_ordinal1 @ sk_B ) ) ),
    inference('sup-',[status(thm)],['17','18'])).

thf('20',plain,
    ( ( sk_A = sk_B )
   <= ( ~ ( r1_ordinal1 @ sk_A @ sk_B )
      & ( r2_hidden @ sk_A @ ( k1_ordinal1 @ sk_B ) ) ) ),
    inference('sup-',[status(thm)],['13','19'])).

thf('21',plain,
    ( ~ ( r1_ordinal1 @ sk_A @ sk_B )
   <= ~ ( r1_ordinal1 @ sk_A @ sk_B ) ),
    inference(split,[status(esa)],['0'])).

thf('22',plain,
    ( ~ ( r1_ordinal1 @ sk_A @ sk_A )
   <= ( ~ ( r1_ordinal1 @ sk_A @ sk_B )
      & ( r2_hidden @ sk_A @ ( k1_ordinal1 @ sk_B ) ) ) ),
    inference('sup-',[status(thm)],['20','21'])).

thf('23',plain,(
    ! [X0: $i] :
      ( ( r1_ordinal1 @ X0 @ sk_A )
      | ( r1_ordinal1 @ sk_A @ X0 )
      | ~ ( v3_ordinal1 @ X0 ) ) ),
    inference('sup-',[status(thm)],['2','3'])).

thf('24',plain,
    ( ~ ( v3_ordinal1 @ sk_A )
    | ( r1_ordinal1 @ sk_A @ sk_A ) ),
    inference(eq_fact,[status(thm)],['23'])).

thf('25',plain,(
    v3_ordinal1 @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('26',plain,(
    r1_ordinal1 @ sk_A @ sk_A ),
    inference(demod,[status(thm)],['24','25'])).

thf('27',plain,
    ( ( r1_ordinal1 @ sk_A @ sk_B )
    | ~ ( r2_hidden @ sk_A @ ( k1_ordinal1 @ sk_B ) ) ),
    inference(demod,[status(thm)],['22','26'])).

thf('28',plain,
    ( ( r1_ordinal1 @ sk_A @ sk_B )
    | ( r2_hidden @ sk_A @ ( k1_ordinal1 @ sk_B ) ) ),
    inference(split,[status(esa)],['14'])).

thf('29',plain,
    ( ( r1_ordinal1 @ sk_A @ sk_B )
   <= ( r1_ordinal1 @ sk_A @ sk_B ) ),
    inference(split,[status(esa)],['14'])).

thf('30',plain,(
    ! [X3: $i,X4: $i] :
      ( ~ ( v3_ordinal1 @ X3 )
      | ~ ( v3_ordinal1 @ X4 )
      | ( r1_tarski @ X3 @ X4 )
      | ~ ( r1_ordinal1 @ X3 @ X4 ) ) ),
    inference(cnf,[status(esa)],[redefinition_r1_ordinal1])).

thf('31',plain,
    ( ( ( r1_tarski @ sk_A @ sk_B )
      | ~ ( v3_ordinal1 @ sk_B )
      | ~ ( v3_ordinal1 @ sk_A ) )
   <= ( r1_ordinal1 @ sk_A @ sk_B ) ),
    inference('sup-',[status(thm)],['29','30'])).

thf('32',plain,(
    v3_ordinal1 @ sk_B ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('33',plain,(
    v3_ordinal1 @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('34',plain,
    ( ( r1_tarski @ sk_A @ sk_B )
   <= ( r1_ordinal1 @ sk_A @ sk_B ) ),
    inference(demod,[status(thm)],['31','32','33'])).

thf(t24_ordinal1,axiom,(
    ! [A: $i] :
      ( ( v3_ordinal1 @ A )
     => ! [B: $i] :
          ( ( v3_ordinal1 @ B )
         => ~ ( ~ ( r2_hidden @ A @ B )
              & ( A != B )
              & ~ ( r2_hidden @ B @ A ) ) ) ) )).

thf('35',plain,(
    ! [X9: $i,X10: $i] :
      ( ~ ( v3_ordinal1 @ X9 )
      | ( r2_hidden @ X10 @ X9 )
      | ( X10 = X9 )
      | ( r2_hidden @ X9 @ X10 )
      | ~ ( v3_ordinal1 @ X10 ) ) ),
    inference(cnf,[status(esa)],[t24_ordinal1])).

thf('36',plain,(
    ! [X7: $i,X8: $i] :
      ( ( r2_hidden @ X7 @ ( k1_ordinal1 @ X8 ) )
      | ~ ( r2_hidden @ X7 @ X8 ) ) ),
    inference(cnf,[status(esa)],[t13_ordinal1])).

thf('37',plain,(
    ! [X0: $i,X1: $i] :
      ( ~ ( v3_ordinal1 @ X1 )
      | ( r2_hidden @ X0 @ X1 )
      | ( X1 = X0 )
      | ~ ( v3_ordinal1 @ X0 )
      | ( r2_hidden @ X1 @ ( k1_ordinal1 @ X0 ) ) ) ),
    inference('sup-',[status(thm)],['35','36'])).

thf('38',plain,
    ( ~ ( r2_hidden @ sk_A @ ( k1_ordinal1 @ sk_B ) )
   <= ~ ( r2_hidden @ sk_A @ ( k1_ordinal1 @ sk_B ) ) ),
    inference(split,[status(esa)],['0'])).

thf('39',plain,
    ( ( ~ ( v3_ordinal1 @ sk_B )
      | ( sk_A = sk_B )
      | ( r2_hidden @ sk_B @ sk_A )
      | ~ ( v3_ordinal1 @ sk_A ) )
   <= ~ ( r2_hidden @ sk_A @ ( k1_ordinal1 @ sk_B ) ) ),
    inference('sup-',[status(thm)],['37','38'])).

thf('40',plain,(
    v3_ordinal1 @ sk_B ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('41',plain,(
    v3_ordinal1 @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('42',plain,
    ( ( ( sk_A = sk_B )
      | ( r2_hidden @ sk_B @ sk_A ) )
   <= ~ ( r2_hidden @ sk_A @ ( k1_ordinal1 @ sk_B ) ) ),
    inference(demod,[status(thm)],['39','40','41'])).

thf('43',plain,(
    ! [X11: $i,X12: $i] :
      ( ~ ( r2_hidden @ X11 @ X12 )
      | ~ ( r1_tarski @ X12 @ X11 ) ) ),
    inference(cnf,[status(esa)],[t7_ordinal1])).

thf('44',plain,
    ( ( ( sk_A = sk_B )
      | ~ ( r1_tarski @ sk_A @ sk_B ) )
   <= ~ ( r2_hidden @ sk_A @ ( k1_ordinal1 @ sk_B ) ) ),
    inference('sup-',[status(thm)],['42','43'])).

thf('45',plain,
    ( ( sk_A = sk_B )
   <= ( ~ ( r2_hidden @ sk_A @ ( k1_ordinal1 @ sk_B ) )
      & ( r1_ordinal1 @ sk_A @ sk_B ) ) ),
    inference('sup-',[status(thm)],['34','44'])).

thf('46',plain,
    ( ~ ( r2_hidden @ sk_A @ ( k1_ordinal1 @ sk_B ) )
   <= ~ ( r2_hidden @ sk_A @ ( k1_ordinal1 @ sk_B ) ) ),
    inference(split,[status(esa)],['0'])).

thf('47',plain,
    ( ~ ( r2_hidden @ sk_A @ ( k1_ordinal1 @ sk_A ) )
   <= ( ~ ( r2_hidden @ sk_A @ ( k1_ordinal1 @ sk_B ) )
      & ( r1_ordinal1 @ sk_A @ sk_B ) ) ),
    inference('sup-',[status(thm)],['45','46'])).

thf(t10_ordinal1,axiom,(
    ! [A: $i] :
      ( r2_hidden @ A @ ( k1_ordinal1 @ A ) ) )).

thf('48',plain,(
    ! [X5: $i] :
      ( r2_hidden @ X5 @ ( k1_ordinal1 @ X5 ) ) ),
    inference(cnf,[status(esa)],[t10_ordinal1])).

thf('49',plain,
    ( ~ ( r1_ordinal1 @ sk_A @ sk_B )
    | ( r2_hidden @ sk_A @ ( k1_ordinal1 @ sk_B ) ) ),
    inference(demod,[status(thm)],['47','48'])).

thf('50',plain,(
    $false ),
    inference('sat_resolution*',[status(thm)],['1','27','28','49'])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.07/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.07/0.13  % Command    : run_portfolio.sh /export/starexec/sandbox/benchmark/theBenchmark.p /export/starexec/sandbox/tmp/tmp.lgTr9O5NZs
% 0.13/0.34  % Computer   : n011.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % DateTime   : Tue Dec  1 13:19:42 EST 2020
% 0.13/0.34  % CPUTime    : 
% 0.13/0.34  % Running portfolio for 600 s
% 0.13/0.34  % File         : /export/starexec/sandbox/benchmark/theBenchmark.p
% 0.13/0.34  % Number of cores: 8
% 0.13/0.34  % Python version: Python 3.6.8
% 0.13/0.35  % Running in FO mode
% 0.21/0.49  % Running /export/starexec/sandbox/solver/bin/fo/fo7.sh for 78
% 0.21/0.49  % Solved by: fo/fo7.sh
% 0.21/0.49  To remain in the chosen logic fragment, unification with booleans has been disabled.
% 0.21/0.49  % done 102 iterations in 0.040s
% 0.21/0.49  % SZS status Theorem for '/export/starexec/sandbox/benchmark/theBenchmark.p'
% 0.21/0.49  % SZS output start Refutation
% 0.21/0.49  thf(k1_ordinal1_type, type, k1_ordinal1: $i > $i).
% 0.21/0.49  thf(v3_ordinal1_type, type, v3_ordinal1: $i > $o).
% 0.21/0.49  thf(r1_ordinal1_type, type, r1_ordinal1: $i > $i > $o).
% 0.21/0.49  thf(sk_A_type, type, sk_A: $i).
% 0.21/0.49  thf(sk_B_type, type, sk_B: $i).
% 0.21/0.49  thf(r1_tarski_type, type, r1_tarski: $i > $i > $o).
% 0.21/0.49  thf(r2_hidden_type, type, r2_hidden: $i > $i > $o).
% 0.21/0.49  thf(t34_ordinal1, conjecture,
% 0.21/0.49    (![A:$i]:
% 0.21/0.49     ( ( v3_ordinal1 @ A ) =>
% 0.21/0.49       ( ![B:$i]:
% 0.21/0.49         ( ( v3_ordinal1 @ B ) =>
% 0.21/0.49           ( ( r2_hidden @ A @ ( k1_ordinal1 @ B ) ) <=>
% 0.21/0.49             ( r1_ordinal1 @ A @ B ) ) ) ) ))).
% 0.21/0.49  thf(zf_stmt_0, negated_conjecture,
% 0.21/0.49    (~( ![A:$i]:
% 0.21/0.49        ( ( v3_ordinal1 @ A ) =>
% 0.21/0.49          ( ![B:$i]:
% 0.21/0.49            ( ( v3_ordinal1 @ B ) =>
% 0.21/0.49              ( ( r2_hidden @ A @ ( k1_ordinal1 @ B ) ) <=>
% 0.21/0.49                ( r1_ordinal1 @ A @ B ) ) ) ) ) )),
% 0.21/0.49    inference('cnf.neg', [status(esa)], [t34_ordinal1])).
% 0.21/0.49  thf('0', plain,
% 0.21/0.49      ((~ (r1_ordinal1 @ sk_A @ sk_B)
% 0.21/0.49        | ~ (r2_hidden @ sk_A @ (k1_ordinal1 @ sk_B)))),
% 0.21/0.49      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.49  thf('1', plain,
% 0.21/0.49      (~ ((r1_ordinal1 @ sk_A @ sk_B)) | 
% 0.21/0.49       ~ ((r2_hidden @ sk_A @ (k1_ordinal1 @ sk_B)))),
% 0.21/0.49      inference('split', [status(esa)], ['0'])).
% 0.21/0.49  thf('2', plain, ((v3_ordinal1 @ sk_A)),
% 0.21/0.49      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.49  thf(connectedness_r1_ordinal1, axiom,
% 0.21/0.49    (![A:$i,B:$i]:
% 0.21/0.49     ( ( ( v3_ordinal1 @ A ) & ( v3_ordinal1 @ B ) ) =>
% 0.21/0.49       ( ( r1_ordinal1 @ A @ B ) | ( r1_ordinal1 @ B @ A ) ) ))).
% 0.21/0.49  thf('3', plain,
% 0.21/0.49      (![X0 : $i, X1 : $i]:
% 0.21/0.49         (~ (v3_ordinal1 @ X0)
% 0.21/0.49          | ~ (v3_ordinal1 @ X1)
% 0.21/0.49          | (r1_ordinal1 @ X0 @ X1)
% 0.21/0.49          | (r1_ordinal1 @ X1 @ X0))),
% 0.21/0.49      inference('cnf', [status(esa)], [connectedness_r1_ordinal1])).
% 0.21/0.49  thf('4', plain,
% 0.21/0.49      (![X0 : $i]:
% 0.21/0.49         ((r1_ordinal1 @ X0 @ sk_A)
% 0.21/0.49          | (r1_ordinal1 @ sk_A @ X0)
% 0.21/0.49          | ~ (v3_ordinal1 @ X0))),
% 0.21/0.49      inference('sup-', [status(thm)], ['2', '3'])).
% 0.21/0.49  thf(redefinition_r1_ordinal1, axiom,
% 0.21/0.49    (![A:$i,B:$i]:
% 0.21/0.49     ( ( ( v3_ordinal1 @ A ) & ( v3_ordinal1 @ B ) ) =>
% 0.21/0.49       ( ( r1_ordinal1 @ A @ B ) <=> ( r1_tarski @ A @ B ) ) ))).
% 0.21/0.49  thf('5', plain,
% 0.21/0.49      (![X3 : $i, X4 : $i]:
% 0.21/0.49         (~ (v3_ordinal1 @ X3)
% 0.21/0.49          | ~ (v3_ordinal1 @ X4)
% 0.21/0.49          | (r1_tarski @ X3 @ X4)
% 0.21/0.49          | ~ (r1_ordinal1 @ X3 @ X4))),
% 0.21/0.49      inference('cnf', [status(esa)], [redefinition_r1_ordinal1])).
% 0.21/0.49  thf('6', plain,
% 0.21/0.49      (![X0 : $i]:
% 0.21/0.49         (~ (v3_ordinal1 @ X0)
% 0.21/0.49          | (r1_ordinal1 @ sk_A @ X0)
% 0.21/0.49          | (r1_tarski @ X0 @ sk_A)
% 0.21/0.49          | ~ (v3_ordinal1 @ sk_A)
% 0.21/0.49          | ~ (v3_ordinal1 @ X0))),
% 0.21/0.49      inference('sup-', [status(thm)], ['4', '5'])).
% 0.21/0.49  thf('7', plain, ((v3_ordinal1 @ sk_A)),
% 0.21/0.49      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.49  thf('8', plain,
% 0.21/0.49      (![X0 : $i]:
% 0.21/0.49         (~ (v3_ordinal1 @ X0)
% 0.21/0.49          | (r1_ordinal1 @ sk_A @ X0)
% 0.21/0.49          | (r1_tarski @ X0 @ sk_A)
% 0.21/0.49          | ~ (v3_ordinal1 @ X0))),
% 0.21/0.49      inference('demod', [status(thm)], ['6', '7'])).
% 0.21/0.49  thf('9', plain,
% 0.21/0.49      (![X0 : $i]:
% 0.21/0.49         ((r1_tarski @ X0 @ sk_A)
% 0.21/0.49          | (r1_ordinal1 @ sk_A @ X0)
% 0.21/0.49          | ~ (v3_ordinal1 @ X0))),
% 0.21/0.49      inference('simplify', [status(thm)], ['8'])).
% 0.21/0.49  thf('10', plain,
% 0.21/0.49      ((~ (r1_ordinal1 @ sk_A @ sk_B)) <= (~ ((r1_ordinal1 @ sk_A @ sk_B)))),
% 0.21/0.49      inference('split', [status(esa)], ['0'])).
% 0.21/0.49  thf('11', plain,
% 0.21/0.49      (((~ (v3_ordinal1 @ sk_B) | (r1_tarski @ sk_B @ sk_A)))
% 0.21/0.49         <= (~ ((r1_ordinal1 @ sk_A @ sk_B)))),
% 0.21/0.49      inference('sup-', [status(thm)], ['9', '10'])).
% 0.21/0.49  thf('12', plain, ((v3_ordinal1 @ sk_B)),
% 0.21/0.49      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.49  thf('13', plain,
% 0.21/0.49      (((r1_tarski @ sk_B @ sk_A)) <= (~ ((r1_ordinal1 @ sk_A @ sk_B)))),
% 0.21/0.49      inference('demod', [status(thm)], ['11', '12'])).
% 0.21/0.49  thf('14', plain,
% 0.21/0.49      (((r1_ordinal1 @ sk_A @ sk_B) | (r2_hidden @ sk_A @ (k1_ordinal1 @ sk_B)))),
% 0.21/0.49      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.49  thf('15', plain,
% 0.21/0.49      (((r2_hidden @ sk_A @ (k1_ordinal1 @ sk_B)))
% 0.21/0.49         <= (((r2_hidden @ sk_A @ (k1_ordinal1 @ sk_B))))),
% 0.21/0.49      inference('split', [status(esa)], ['14'])).
% 0.21/0.49  thf(t13_ordinal1, axiom,
% 0.21/0.49    (![A:$i,B:$i]:
% 0.21/0.49     ( ( r2_hidden @ A @ ( k1_ordinal1 @ B ) ) <=>
% 0.21/0.49       ( ( r2_hidden @ A @ B ) | ( ( A ) = ( B ) ) ) ))).
% 0.21/0.49  thf('16', plain,
% 0.21/0.49      (![X6 : $i, X7 : $i]:
% 0.21/0.49         (((X7) = (X6))
% 0.21/0.49          | (r2_hidden @ X7 @ X6)
% 0.21/0.49          | ~ (r2_hidden @ X7 @ (k1_ordinal1 @ X6)))),
% 0.21/0.49      inference('cnf', [status(esa)], [t13_ordinal1])).
% 0.21/0.49  thf('17', plain,
% 0.21/0.49      ((((r2_hidden @ sk_A @ sk_B) | ((sk_A) = (sk_B))))
% 0.21/0.49         <= (((r2_hidden @ sk_A @ (k1_ordinal1 @ sk_B))))),
% 0.21/0.49      inference('sup-', [status(thm)], ['15', '16'])).
% 0.21/0.49  thf(t7_ordinal1, axiom,
% 0.21/0.49    (![A:$i,B:$i]: ( ~( ( r2_hidden @ A @ B ) & ( r1_tarski @ B @ A ) ) ))).
% 0.21/0.49  thf('18', plain,
% 0.21/0.49      (![X11 : $i, X12 : $i]:
% 0.21/0.49         (~ (r2_hidden @ X11 @ X12) | ~ (r1_tarski @ X12 @ X11))),
% 0.21/0.49      inference('cnf', [status(esa)], [t7_ordinal1])).
% 0.21/0.49  thf('19', plain,
% 0.21/0.49      (((((sk_A) = (sk_B)) | ~ (r1_tarski @ sk_B @ sk_A)))
% 0.21/0.49         <= (((r2_hidden @ sk_A @ (k1_ordinal1 @ sk_B))))),
% 0.21/0.49      inference('sup-', [status(thm)], ['17', '18'])).
% 0.21/0.49  thf('20', plain,
% 0.21/0.49      ((((sk_A) = (sk_B)))
% 0.21/0.49         <= (~ ((r1_ordinal1 @ sk_A @ sk_B)) & 
% 0.21/0.49             ((r2_hidden @ sk_A @ (k1_ordinal1 @ sk_B))))),
% 0.21/0.49      inference('sup-', [status(thm)], ['13', '19'])).
% 0.21/0.49  thf('21', plain,
% 0.21/0.49      ((~ (r1_ordinal1 @ sk_A @ sk_B)) <= (~ ((r1_ordinal1 @ sk_A @ sk_B)))),
% 0.21/0.49      inference('split', [status(esa)], ['0'])).
% 0.21/0.49  thf('22', plain,
% 0.21/0.49      ((~ (r1_ordinal1 @ sk_A @ sk_A))
% 0.21/0.49         <= (~ ((r1_ordinal1 @ sk_A @ sk_B)) & 
% 0.21/0.49             ((r2_hidden @ sk_A @ (k1_ordinal1 @ sk_B))))),
% 0.21/0.49      inference('sup-', [status(thm)], ['20', '21'])).
% 0.21/0.49  thf('23', plain,
% 0.21/0.49      (![X0 : $i]:
% 0.21/0.49         ((r1_ordinal1 @ X0 @ sk_A)
% 0.21/0.49          | (r1_ordinal1 @ sk_A @ X0)
% 0.21/0.49          | ~ (v3_ordinal1 @ X0))),
% 0.21/0.49      inference('sup-', [status(thm)], ['2', '3'])).
% 0.21/0.49  thf('24', plain, ((~ (v3_ordinal1 @ sk_A) | (r1_ordinal1 @ sk_A @ sk_A))),
% 0.21/0.49      inference('eq_fact', [status(thm)], ['23'])).
% 0.21/0.49  thf('25', plain, ((v3_ordinal1 @ sk_A)),
% 0.21/0.49      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.49  thf('26', plain, ((r1_ordinal1 @ sk_A @ sk_A)),
% 0.21/0.49      inference('demod', [status(thm)], ['24', '25'])).
% 0.21/0.49  thf('27', plain,
% 0.21/0.49      (((r1_ordinal1 @ sk_A @ sk_B)) | 
% 0.21/0.49       ~ ((r2_hidden @ sk_A @ (k1_ordinal1 @ sk_B)))),
% 0.21/0.49      inference('demod', [status(thm)], ['22', '26'])).
% 0.21/0.49  thf('28', plain,
% 0.21/0.49      (((r1_ordinal1 @ sk_A @ sk_B)) | 
% 0.21/0.49       ((r2_hidden @ sk_A @ (k1_ordinal1 @ sk_B)))),
% 0.21/0.49      inference('split', [status(esa)], ['14'])).
% 0.21/0.49  thf('29', plain,
% 0.21/0.49      (((r1_ordinal1 @ sk_A @ sk_B)) <= (((r1_ordinal1 @ sk_A @ sk_B)))),
% 0.21/0.49      inference('split', [status(esa)], ['14'])).
% 0.21/0.49  thf('30', plain,
% 0.21/0.49      (![X3 : $i, X4 : $i]:
% 0.21/0.49         (~ (v3_ordinal1 @ X3)
% 0.21/0.49          | ~ (v3_ordinal1 @ X4)
% 0.21/0.49          | (r1_tarski @ X3 @ X4)
% 0.21/0.49          | ~ (r1_ordinal1 @ X3 @ X4))),
% 0.21/0.49      inference('cnf', [status(esa)], [redefinition_r1_ordinal1])).
% 0.21/0.49  thf('31', plain,
% 0.21/0.49      ((((r1_tarski @ sk_A @ sk_B)
% 0.21/0.49         | ~ (v3_ordinal1 @ sk_B)
% 0.21/0.49         | ~ (v3_ordinal1 @ sk_A))) <= (((r1_ordinal1 @ sk_A @ sk_B)))),
% 0.21/0.49      inference('sup-', [status(thm)], ['29', '30'])).
% 0.21/0.49  thf('32', plain, ((v3_ordinal1 @ sk_B)),
% 0.21/0.49      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.49  thf('33', plain, ((v3_ordinal1 @ sk_A)),
% 0.21/0.49      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.49  thf('34', plain,
% 0.21/0.49      (((r1_tarski @ sk_A @ sk_B)) <= (((r1_ordinal1 @ sk_A @ sk_B)))),
% 0.21/0.49      inference('demod', [status(thm)], ['31', '32', '33'])).
% 0.21/0.49  thf(t24_ordinal1, axiom,
% 0.21/0.49    (![A:$i]:
% 0.21/0.49     ( ( v3_ordinal1 @ A ) =>
% 0.21/0.49       ( ![B:$i]:
% 0.21/0.49         ( ( v3_ordinal1 @ B ) =>
% 0.21/0.49           ( ~( ( ~( r2_hidden @ A @ B ) ) & ( ( A ) != ( B ) ) & 
% 0.21/0.49                ( ~( r2_hidden @ B @ A ) ) ) ) ) ) ))).
% 0.21/0.49  thf('35', plain,
% 0.21/0.49      (![X9 : $i, X10 : $i]:
% 0.21/0.49         (~ (v3_ordinal1 @ X9)
% 0.21/0.49          | (r2_hidden @ X10 @ X9)
% 0.21/0.49          | ((X10) = (X9))
% 0.21/0.49          | (r2_hidden @ X9 @ X10)
% 0.21/0.49          | ~ (v3_ordinal1 @ X10))),
% 0.21/0.49      inference('cnf', [status(esa)], [t24_ordinal1])).
% 0.21/0.49  thf('36', plain,
% 0.21/0.49      (![X7 : $i, X8 : $i]:
% 0.21/0.49         ((r2_hidden @ X7 @ (k1_ordinal1 @ X8)) | ~ (r2_hidden @ X7 @ X8))),
% 0.21/0.49      inference('cnf', [status(esa)], [t13_ordinal1])).
% 0.21/0.49  thf('37', plain,
% 0.21/0.49      (![X0 : $i, X1 : $i]:
% 0.21/0.49         (~ (v3_ordinal1 @ X1)
% 0.21/0.49          | (r2_hidden @ X0 @ X1)
% 0.21/0.49          | ((X1) = (X0))
% 0.21/0.49          | ~ (v3_ordinal1 @ X0)
% 0.21/0.49          | (r2_hidden @ X1 @ (k1_ordinal1 @ X0)))),
% 0.21/0.49      inference('sup-', [status(thm)], ['35', '36'])).
% 0.21/0.49  thf('38', plain,
% 0.21/0.49      ((~ (r2_hidden @ sk_A @ (k1_ordinal1 @ sk_B)))
% 0.21/0.49         <= (~ ((r2_hidden @ sk_A @ (k1_ordinal1 @ sk_B))))),
% 0.21/0.49      inference('split', [status(esa)], ['0'])).
% 0.21/0.49  thf('39', plain,
% 0.21/0.49      (((~ (v3_ordinal1 @ sk_B)
% 0.21/0.49         | ((sk_A) = (sk_B))
% 0.21/0.49         | (r2_hidden @ sk_B @ sk_A)
% 0.21/0.49         | ~ (v3_ordinal1 @ sk_A)))
% 0.21/0.49         <= (~ ((r2_hidden @ sk_A @ (k1_ordinal1 @ sk_B))))),
% 0.21/0.49      inference('sup-', [status(thm)], ['37', '38'])).
% 0.21/0.49  thf('40', plain, ((v3_ordinal1 @ sk_B)),
% 0.21/0.49      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.49  thf('41', plain, ((v3_ordinal1 @ sk_A)),
% 0.21/0.49      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.49  thf('42', plain,
% 0.21/0.49      (((((sk_A) = (sk_B)) | (r2_hidden @ sk_B @ sk_A)))
% 0.21/0.49         <= (~ ((r2_hidden @ sk_A @ (k1_ordinal1 @ sk_B))))),
% 0.21/0.49      inference('demod', [status(thm)], ['39', '40', '41'])).
% 0.21/0.49  thf('43', plain,
% 0.21/0.49      (![X11 : $i, X12 : $i]:
% 0.21/0.49         (~ (r2_hidden @ X11 @ X12) | ~ (r1_tarski @ X12 @ X11))),
% 0.21/0.49      inference('cnf', [status(esa)], [t7_ordinal1])).
% 0.21/0.49  thf('44', plain,
% 0.21/0.49      (((((sk_A) = (sk_B)) | ~ (r1_tarski @ sk_A @ sk_B)))
% 0.21/0.49         <= (~ ((r2_hidden @ sk_A @ (k1_ordinal1 @ sk_B))))),
% 0.21/0.49      inference('sup-', [status(thm)], ['42', '43'])).
% 0.21/0.49  thf('45', plain,
% 0.21/0.49      ((((sk_A) = (sk_B)))
% 0.21/0.49         <= (~ ((r2_hidden @ sk_A @ (k1_ordinal1 @ sk_B))) & 
% 0.21/0.49             ((r1_ordinal1 @ sk_A @ sk_B)))),
% 0.21/0.49      inference('sup-', [status(thm)], ['34', '44'])).
% 0.21/0.49  thf('46', plain,
% 0.21/0.49      ((~ (r2_hidden @ sk_A @ (k1_ordinal1 @ sk_B)))
% 0.21/0.49         <= (~ ((r2_hidden @ sk_A @ (k1_ordinal1 @ sk_B))))),
% 0.21/0.49      inference('split', [status(esa)], ['0'])).
% 0.21/0.49  thf('47', plain,
% 0.21/0.49      ((~ (r2_hidden @ sk_A @ (k1_ordinal1 @ sk_A)))
% 0.21/0.49         <= (~ ((r2_hidden @ sk_A @ (k1_ordinal1 @ sk_B))) & 
% 0.21/0.49             ((r1_ordinal1 @ sk_A @ sk_B)))),
% 0.21/0.49      inference('sup-', [status(thm)], ['45', '46'])).
% 0.21/0.49  thf(t10_ordinal1, axiom, (![A:$i]: ( r2_hidden @ A @ ( k1_ordinal1 @ A ) ))).
% 0.21/0.49  thf('48', plain, (![X5 : $i]: (r2_hidden @ X5 @ (k1_ordinal1 @ X5))),
% 0.21/0.49      inference('cnf', [status(esa)], [t10_ordinal1])).
% 0.21/0.49  thf('49', plain,
% 0.21/0.49      (~ ((r1_ordinal1 @ sk_A @ sk_B)) | 
% 0.21/0.49       ((r2_hidden @ sk_A @ (k1_ordinal1 @ sk_B)))),
% 0.21/0.49      inference('demod', [status(thm)], ['47', '48'])).
% 0.21/0.49  thf('50', plain, ($false),
% 0.21/0.49      inference('sat_resolution*', [status(thm)], ['1', '27', '28', '49'])).
% 0.21/0.49  
% 0.21/0.49  % SZS output end Refutation
% 0.21/0.49  
% 0.21/0.50  % Zipperpin 1.5 exiting
%------------------------------------------------------------------------------
