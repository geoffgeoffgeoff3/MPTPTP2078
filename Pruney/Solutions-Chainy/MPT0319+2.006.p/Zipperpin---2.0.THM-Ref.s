%------------------------------------------------------------------------------
% File       : Zipperpin---2.0
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_portfolio.sh /export/starexec/sandbox2/benchmark/theBenchmark.p /export/starexec/sandbox2/tmp/tmp.k8lRaQDjQs

% Computer   : n014.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 13:35:30 EST 2020

% Result     : Theorem 0.21s
% Output     : Refutation 0.21s
% Verified   : 
% Statistics : Number of formulae       :   41 (  59 expanded)
%              Number of leaves         :   14 (  22 expanded)
%              Depth                    :   10
%              Number of atoms          :  335 ( 620 expanded)
%              Number of equality atoms :   20 (  40 expanded)
%              Maximal formula depth    :   13 (   6 average)

% Comments   : 
%------------------------------------------------------------------------------
thf(r2_hidden_type,type,(
    r2_hidden: $i > $i > $o )).

thf(sk_B_type,type,(
    sk_B: $i )).

thf(r1_xboole_0_type,type,(
    r1_xboole_0: $i > $i > $o )).

thf(k1_tarski_type,type,(
    k1_tarski: $i > $i )).

thf(k2_tarski_type,type,(
    k2_tarski: $i > $i > $i )).

thf(sk_C_type,type,(
    sk_C: $i )).

thf(sk_A_type,type,(
    sk_A: $i )).

thf(sk_D_1_type,type,(
    sk_D_1: $i )).

thf(k2_zfmisc_1_type,type,(
    k2_zfmisc_1: $i > $i > $i )).

thf(l27_zfmisc_1,axiom,(
    ! [A: $i,B: $i] :
      ( ~ ( r2_hidden @ A @ B )
     => ( r1_xboole_0 @ ( k1_tarski @ A ) @ B ) ) )).

thf('0',plain,(
    ! [X12: $i,X13: $i] :
      ( ( r1_xboole_0 @ ( k1_tarski @ X12 ) @ X13 )
      | ( r2_hidden @ X12 @ X13 ) ) ),
    inference(cnf,[status(esa)],[l27_zfmisc_1])).

thf(t127_zfmisc_1,axiom,(
    ! [A: $i,B: $i,C: $i,D: $i] :
      ( ( ( r1_xboole_0 @ A @ B )
        | ( r1_xboole_0 @ C @ D ) )
     => ( r1_xboole_0 @ ( k2_zfmisc_1 @ A @ C ) @ ( k2_zfmisc_1 @ B @ D ) ) ) )).

thf('1',plain,(
    ! [X14: $i,X15: $i,X16: $i,X17: $i] :
      ( ( r1_xboole_0 @ ( k2_zfmisc_1 @ X14 @ X15 ) @ ( k2_zfmisc_1 @ X16 @ X17 ) )
      | ~ ( r1_xboole_0 @ X15 @ X17 ) ) ),
    inference(cnf,[status(esa)],[t127_zfmisc_1])).

thf('2',plain,(
    ! [X0: $i,X1: $i,X2: $i,X3: $i] :
      ( ( r2_hidden @ X1 @ X0 )
      | ( r1_xboole_0 @ ( k2_zfmisc_1 @ X3 @ ( k1_tarski @ X1 ) ) @ ( k2_zfmisc_1 @ X2 @ X0 ) ) ) ),
    inference('sup-',[status(thm)],['0','1'])).

thf(t131_zfmisc_1,conjecture,(
    ! [A: $i,B: $i,C: $i,D: $i] :
      ( ( A != B )
     => ( ( r1_xboole_0 @ ( k2_zfmisc_1 @ ( k1_tarski @ A ) @ C ) @ ( k2_zfmisc_1 @ ( k1_tarski @ B ) @ D ) )
        & ( r1_xboole_0 @ ( k2_zfmisc_1 @ C @ ( k1_tarski @ A ) ) @ ( k2_zfmisc_1 @ D @ ( k1_tarski @ B ) ) ) ) ) )).

thf(zf_stmt_0,negated_conjecture,(
    ~ ! [A: $i,B: $i,C: $i,D: $i] :
        ( ( A != B )
       => ( ( r1_xboole_0 @ ( k2_zfmisc_1 @ ( k1_tarski @ A ) @ C ) @ ( k2_zfmisc_1 @ ( k1_tarski @ B ) @ D ) )
          & ( r1_xboole_0 @ ( k2_zfmisc_1 @ C @ ( k1_tarski @ A ) ) @ ( k2_zfmisc_1 @ D @ ( k1_tarski @ B ) ) ) ) ) ),
    inference('cnf.neg',[status(esa)],[t131_zfmisc_1])).

thf('3',plain,
    ( ~ ( r1_xboole_0 @ ( k2_zfmisc_1 @ ( k1_tarski @ sk_A ) @ sk_C ) @ ( k2_zfmisc_1 @ ( k1_tarski @ sk_B ) @ sk_D_1 ) )
    | ~ ( r1_xboole_0 @ ( k2_zfmisc_1 @ sk_C @ ( k1_tarski @ sk_A ) ) @ ( k2_zfmisc_1 @ sk_D_1 @ ( k1_tarski @ sk_B ) ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('4',plain,
    ( ~ ( r1_xboole_0 @ ( k2_zfmisc_1 @ sk_C @ ( k1_tarski @ sk_A ) ) @ ( k2_zfmisc_1 @ sk_D_1 @ ( k1_tarski @ sk_B ) ) )
   <= ~ ( r1_xboole_0 @ ( k2_zfmisc_1 @ sk_C @ ( k1_tarski @ sk_A ) ) @ ( k2_zfmisc_1 @ sk_D_1 @ ( k1_tarski @ sk_B ) ) ) ),
    inference(split,[status(esa)],['3'])).

thf('5',plain,
    ( ( r2_hidden @ sk_A @ ( k1_tarski @ sk_B ) )
   <= ~ ( r1_xboole_0 @ ( k2_zfmisc_1 @ sk_C @ ( k1_tarski @ sk_A ) ) @ ( k2_zfmisc_1 @ sk_D_1 @ ( k1_tarski @ sk_B ) ) ) ),
    inference('sup-',[status(thm)],['2','4'])).

thf('6',plain,(
    ! [X12: $i,X13: $i] :
      ( ( r1_xboole_0 @ ( k1_tarski @ X12 ) @ X13 )
      | ( r2_hidden @ X12 @ X13 ) ) ),
    inference(cnf,[status(esa)],[l27_zfmisc_1])).

thf('7',plain,(
    ! [X14: $i,X15: $i,X16: $i,X17: $i] :
      ( ( r1_xboole_0 @ ( k2_zfmisc_1 @ X14 @ X15 ) @ ( k2_zfmisc_1 @ X16 @ X17 ) )
      | ~ ( r1_xboole_0 @ X14 @ X16 ) ) ),
    inference(cnf,[status(esa)],[t127_zfmisc_1])).

thf('8',plain,(
    ! [X0: $i,X1: $i,X2: $i,X3: $i] :
      ( ( r2_hidden @ X1 @ X0 )
      | ( r1_xboole_0 @ ( k2_zfmisc_1 @ ( k1_tarski @ X1 ) @ X3 ) @ ( k2_zfmisc_1 @ X0 @ X2 ) ) ) ),
    inference('sup-',[status(thm)],['6','7'])).

thf('9',plain,
    ( ~ ( r1_xboole_0 @ ( k2_zfmisc_1 @ ( k1_tarski @ sk_A ) @ sk_C ) @ ( k2_zfmisc_1 @ ( k1_tarski @ sk_B ) @ sk_D_1 ) )
   <= ~ ( r1_xboole_0 @ ( k2_zfmisc_1 @ ( k1_tarski @ sk_A ) @ sk_C ) @ ( k2_zfmisc_1 @ ( k1_tarski @ sk_B ) @ sk_D_1 ) ) ),
    inference(split,[status(esa)],['3'])).

thf('10',plain,
    ( ( r2_hidden @ sk_A @ ( k1_tarski @ sk_B ) )
   <= ~ ( r1_xboole_0 @ ( k2_zfmisc_1 @ ( k1_tarski @ sk_A ) @ sk_C ) @ ( k2_zfmisc_1 @ ( k1_tarski @ sk_B ) @ sk_D_1 ) ) ),
    inference('sup-',[status(thm)],['8','9'])).

thf(t69_enumset1,axiom,(
    ! [A: $i] :
      ( ( k2_tarski @ A @ A )
      = ( k1_tarski @ A ) ) )).

thf('11',plain,(
    ! [X6: $i] :
      ( ( k2_tarski @ X6 @ X6 )
      = ( k1_tarski @ X6 ) ) ),
    inference(cnf,[status(esa)],[t69_enumset1])).

thf(d2_tarski,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( C
        = ( k2_tarski @ A @ B ) )
    <=> ! [D: $i] :
          ( ( r2_hidden @ D @ C )
        <=> ( ( D = A )
            | ( D = B ) ) ) ) )).

thf('12',plain,(
    ! [X0: $i,X2: $i,X3: $i,X4: $i] :
      ( ~ ( r2_hidden @ X4 @ X2 )
      | ( X4 = X3 )
      | ( X4 = X0 )
      | ( X2
       != ( k2_tarski @ X3 @ X0 ) ) ) ),
    inference(cnf,[status(esa)],[d2_tarski])).

thf('13',plain,(
    ! [X0: $i,X3: $i,X4: $i] :
      ( ( X4 = X0 )
      | ( X4 = X3 )
      | ~ ( r2_hidden @ X4 @ ( k2_tarski @ X3 @ X0 ) ) ) ),
    inference(simplify,[status(thm)],['12'])).

thf('14',plain,(
    ! [X0: $i,X1: $i] :
      ( ~ ( r2_hidden @ X1 @ ( k1_tarski @ X0 ) )
      | ( X1 = X0 )
      | ( X1 = X0 ) ) ),
    inference('sup-',[status(thm)],['11','13'])).

thf('15',plain,(
    ! [X0: $i,X1: $i] :
      ( ( X1 = X0 )
      | ~ ( r2_hidden @ X1 @ ( k1_tarski @ X0 ) ) ) ),
    inference(simplify,[status(thm)],['14'])).

thf('16',plain,
    ( ( sk_A = sk_B )
   <= ~ ( r1_xboole_0 @ ( k2_zfmisc_1 @ ( k1_tarski @ sk_A ) @ sk_C ) @ ( k2_zfmisc_1 @ ( k1_tarski @ sk_B ) @ sk_D_1 ) ) ),
    inference('sup-',[status(thm)],['10','15'])).

thf('17',plain,(
    sk_A != sk_B ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('18',plain,(
    r1_xboole_0 @ ( k2_zfmisc_1 @ ( k1_tarski @ sk_A ) @ sk_C ) @ ( k2_zfmisc_1 @ ( k1_tarski @ sk_B ) @ sk_D_1 ) ),
    inference('simplify_reflect-',[status(thm)],['16','17'])).

thf('19',plain,
    ( ~ ( r1_xboole_0 @ ( k2_zfmisc_1 @ sk_C @ ( k1_tarski @ sk_A ) ) @ ( k2_zfmisc_1 @ sk_D_1 @ ( k1_tarski @ sk_B ) ) )
    | ~ ( r1_xboole_0 @ ( k2_zfmisc_1 @ ( k1_tarski @ sk_A ) @ sk_C ) @ ( k2_zfmisc_1 @ ( k1_tarski @ sk_B ) @ sk_D_1 ) ) ),
    inference(split,[status(esa)],['3'])).

thf('20',plain,(
    ~ ( r1_xboole_0 @ ( k2_zfmisc_1 @ sk_C @ ( k1_tarski @ sk_A ) ) @ ( k2_zfmisc_1 @ sk_D_1 @ ( k1_tarski @ sk_B ) ) ) ),
    inference('sat_resolution*',[status(thm)],['18','19'])).

thf('21',plain,(
    r2_hidden @ sk_A @ ( k1_tarski @ sk_B ) ),
    inference(simpl_trail,[status(thm)],['5','20'])).

thf('22',plain,(
    ! [X0: $i,X1: $i] :
      ( ( X1 = X0 )
      | ~ ( r2_hidden @ X1 @ ( k1_tarski @ X0 ) ) ) ),
    inference(simplify,[status(thm)],['14'])).

thf('23',plain,(
    sk_A = sk_B ),
    inference('sup-',[status(thm)],['21','22'])).

thf('24',plain,(
    sk_A != sk_B ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('25',plain,(
    $false ),
    inference('simplify_reflect-',[status(thm)],['23','24'])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.07/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.07/0.13  % Command    : run_portfolio.sh /export/starexec/sandbox2/benchmark/theBenchmark.p /export/starexec/sandbox2/tmp/tmp.k8lRaQDjQs
% 0.14/0.34  % Computer   : n014.cluster.edu
% 0.14/0.34  % Model      : x86_64 x86_64
% 0.14/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.14/0.34  % Memory     : 8042.1875MB
% 0.14/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.14/0.34  % CPULimit   : 60
% 0.14/0.34  % DateTime   : Tue Dec  1 10:42:38 EST 2020
% 0.14/0.34  % CPUTime    : 
% 0.14/0.34  % Running portfolio for 600 s
% 0.14/0.34  % File         : /export/starexec/sandbox2/benchmark/theBenchmark.p
% 0.14/0.35  % Number of cores: 8
% 0.14/0.35  % Python version: Python 3.6.8
% 0.14/0.35  % Running in FO mode
% 0.21/0.49  % Running /export/starexec/sandbox2/solver/bin/fo/fo7.sh for 78
% 0.21/0.49  % Solved by: fo/fo7.sh
% 0.21/0.49  To remain in the chosen logic fragment, unification with booleans has been disabled.
% 0.21/0.49  % done 58 iterations in 0.031s
% 0.21/0.49  % SZS status Theorem for '/export/starexec/sandbox2/benchmark/theBenchmark.p'
% 0.21/0.49  % SZS output start Refutation
% 0.21/0.49  thf(r2_hidden_type, type, r2_hidden: $i > $i > $o).
% 0.21/0.49  thf(sk_B_type, type, sk_B: $i).
% 0.21/0.49  thf(r1_xboole_0_type, type, r1_xboole_0: $i > $i > $o).
% 0.21/0.49  thf(k1_tarski_type, type, k1_tarski: $i > $i).
% 0.21/0.49  thf(k2_tarski_type, type, k2_tarski: $i > $i > $i).
% 0.21/0.49  thf(sk_C_type, type, sk_C: $i).
% 0.21/0.49  thf(sk_A_type, type, sk_A: $i).
% 0.21/0.49  thf(sk_D_1_type, type, sk_D_1: $i).
% 0.21/0.49  thf(k2_zfmisc_1_type, type, k2_zfmisc_1: $i > $i > $i).
% 0.21/0.49  thf(l27_zfmisc_1, axiom,
% 0.21/0.49    (![A:$i,B:$i]:
% 0.21/0.49     ( ( ~( r2_hidden @ A @ B ) ) => ( r1_xboole_0 @ ( k1_tarski @ A ) @ B ) ))).
% 0.21/0.49  thf('0', plain,
% 0.21/0.49      (![X12 : $i, X13 : $i]:
% 0.21/0.49         ((r1_xboole_0 @ (k1_tarski @ X12) @ X13) | (r2_hidden @ X12 @ X13))),
% 0.21/0.49      inference('cnf', [status(esa)], [l27_zfmisc_1])).
% 0.21/0.49  thf(t127_zfmisc_1, axiom,
% 0.21/0.49    (![A:$i,B:$i,C:$i,D:$i]:
% 0.21/0.49     ( ( ( r1_xboole_0 @ A @ B ) | ( r1_xboole_0 @ C @ D ) ) =>
% 0.21/0.49       ( r1_xboole_0 @ ( k2_zfmisc_1 @ A @ C ) @ ( k2_zfmisc_1 @ B @ D ) ) ))).
% 0.21/0.49  thf('1', plain,
% 0.21/0.49      (![X14 : $i, X15 : $i, X16 : $i, X17 : $i]:
% 0.21/0.49         ((r1_xboole_0 @ (k2_zfmisc_1 @ X14 @ X15) @ (k2_zfmisc_1 @ X16 @ X17))
% 0.21/0.49          | ~ (r1_xboole_0 @ X15 @ X17))),
% 0.21/0.49      inference('cnf', [status(esa)], [t127_zfmisc_1])).
% 0.21/0.49  thf('2', plain,
% 0.21/0.49      (![X0 : $i, X1 : $i, X2 : $i, X3 : $i]:
% 0.21/0.49         ((r2_hidden @ X1 @ X0)
% 0.21/0.49          | (r1_xboole_0 @ (k2_zfmisc_1 @ X3 @ (k1_tarski @ X1)) @ 
% 0.21/0.49             (k2_zfmisc_1 @ X2 @ X0)))),
% 0.21/0.49      inference('sup-', [status(thm)], ['0', '1'])).
% 0.21/0.49  thf(t131_zfmisc_1, conjecture,
% 0.21/0.49    (![A:$i,B:$i,C:$i,D:$i]:
% 0.21/0.49     ( ( ( A ) != ( B ) ) =>
% 0.21/0.49       ( ( r1_xboole_0 @
% 0.21/0.49           ( k2_zfmisc_1 @ ( k1_tarski @ A ) @ C ) @ 
% 0.21/0.49           ( k2_zfmisc_1 @ ( k1_tarski @ B ) @ D ) ) & 
% 0.21/0.49         ( r1_xboole_0 @
% 0.21/0.49           ( k2_zfmisc_1 @ C @ ( k1_tarski @ A ) ) @ 
% 0.21/0.49           ( k2_zfmisc_1 @ D @ ( k1_tarski @ B ) ) ) ) ))).
% 0.21/0.49  thf(zf_stmt_0, negated_conjecture,
% 0.21/0.49    (~( ![A:$i,B:$i,C:$i,D:$i]:
% 0.21/0.49        ( ( ( A ) != ( B ) ) =>
% 0.21/0.49          ( ( r1_xboole_0 @
% 0.21/0.49              ( k2_zfmisc_1 @ ( k1_tarski @ A ) @ C ) @ 
% 0.21/0.49              ( k2_zfmisc_1 @ ( k1_tarski @ B ) @ D ) ) & 
% 0.21/0.49            ( r1_xboole_0 @
% 0.21/0.49              ( k2_zfmisc_1 @ C @ ( k1_tarski @ A ) ) @ 
% 0.21/0.49              ( k2_zfmisc_1 @ D @ ( k1_tarski @ B ) ) ) ) ) )),
% 0.21/0.49    inference('cnf.neg', [status(esa)], [t131_zfmisc_1])).
% 0.21/0.49  thf('3', plain,
% 0.21/0.49      ((~ (r1_xboole_0 @ (k2_zfmisc_1 @ (k1_tarski @ sk_A) @ sk_C) @ 
% 0.21/0.49           (k2_zfmisc_1 @ (k1_tarski @ sk_B) @ sk_D_1))
% 0.21/0.49        | ~ (r1_xboole_0 @ (k2_zfmisc_1 @ sk_C @ (k1_tarski @ sk_A)) @ 
% 0.21/0.49             (k2_zfmisc_1 @ sk_D_1 @ (k1_tarski @ sk_B))))),
% 0.21/0.49      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.49  thf('4', plain,
% 0.21/0.49      ((~ (r1_xboole_0 @ (k2_zfmisc_1 @ sk_C @ (k1_tarski @ sk_A)) @ 
% 0.21/0.49           (k2_zfmisc_1 @ sk_D_1 @ (k1_tarski @ sk_B))))
% 0.21/0.49         <= (~
% 0.21/0.49             ((r1_xboole_0 @ (k2_zfmisc_1 @ sk_C @ (k1_tarski @ sk_A)) @ 
% 0.21/0.49               (k2_zfmisc_1 @ sk_D_1 @ (k1_tarski @ sk_B)))))),
% 0.21/0.49      inference('split', [status(esa)], ['3'])).
% 0.21/0.49  thf('5', plain,
% 0.21/0.49      (((r2_hidden @ sk_A @ (k1_tarski @ sk_B)))
% 0.21/0.49         <= (~
% 0.21/0.49             ((r1_xboole_0 @ (k2_zfmisc_1 @ sk_C @ (k1_tarski @ sk_A)) @ 
% 0.21/0.49               (k2_zfmisc_1 @ sk_D_1 @ (k1_tarski @ sk_B)))))),
% 0.21/0.49      inference('sup-', [status(thm)], ['2', '4'])).
% 0.21/0.49  thf('6', plain,
% 0.21/0.49      (![X12 : $i, X13 : $i]:
% 0.21/0.49         ((r1_xboole_0 @ (k1_tarski @ X12) @ X13) | (r2_hidden @ X12 @ X13))),
% 0.21/0.49      inference('cnf', [status(esa)], [l27_zfmisc_1])).
% 0.21/0.49  thf('7', plain,
% 0.21/0.49      (![X14 : $i, X15 : $i, X16 : $i, X17 : $i]:
% 0.21/0.49         ((r1_xboole_0 @ (k2_zfmisc_1 @ X14 @ X15) @ (k2_zfmisc_1 @ X16 @ X17))
% 0.21/0.49          | ~ (r1_xboole_0 @ X14 @ X16))),
% 0.21/0.49      inference('cnf', [status(esa)], [t127_zfmisc_1])).
% 0.21/0.49  thf('8', plain,
% 0.21/0.49      (![X0 : $i, X1 : $i, X2 : $i, X3 : $i]:
% 0.21/0.49         ((r2_hidden @ X1 @ X0)
% 0.21/0.49          | (r1_xboole_0 @ (k2_zfmisc_1 @ (k1_tarski @ X1) @ X3) @ 
% 0.21/0.49             (k2_zfmisc_1 @ X0 @ X2)))),
% 0.21/0.49      inference('sup-', [status(thm)], ['6', '7'])).
% 0.21/0.49  thf('9', plain,
% 0.21/0.49      ((~ (r1_xboole_0 @ (k2_zfmisc_1 @ (k1_tarski @ sk_A) @ sk_C) @ 
% 0.21/0.49           (k2_zfmisc_1 @ (k1_tarski @ sk_B) @ sk_D_1)))
% 0.21/0.49         <= (~
% 0.21/0.49             ((r1_xboole_0 @ (k2_zfmisc_1 @ (k1_tarski @ sk_A) @ sk_C) @ 
% 0.21/0.49               (k2_zfmisc_1 @ (k1_tarski @ sk_B) @ sk_D_1))))),
% 0.21/0.49      inference('split', [status(esa)], ['3'])).
% 0.21/0.49  thf('10', plain,
% 0.21/0.49      (((r2_hidden @ sk_A @ (k1_tarski @ sk_B)))
% 0.21/0.49         <= (~
% 0.21/0.49             ((r1_xboole_0 @ (k2_zfmisc_1 @ (k1_tarski @ sk_A) @ sk_C) @ 
% 0.21/0.49               (k2_zfmisc_1 @ (k1_tarski @ sk_B) @ sk_D_1))))),
% 0.21/0.49      inference('sup-', [status(thm)], ['8', '9'])).
% 0.21/0.49  thf(t69_enumset1, axiom,
% 0.21/0.49    (![A:$i]: ( ( k2_tarski @ A @ A ) = ( k1_tarski @ A ) ))).
% 0.21/0.49  thf('11', plain, (![X6 : $i]: ((k2_tarski @ X6 @ X6) = (k1_tarski @ X6))),
% 0.21/0.49      inference('cnf', [status(esa)], [t69_enumset1])).
% 0.21/0.49  thf(d2_tarski, axiom,
% 0.21/0.49    (![A:$i,B:$i,C:$i]:
% 0.21/0.49     ( ( ( C ) = ( k2_tarski @ A @ B ) ) <=>
% 0.21/0.49       ( ![D:$i]:
% 0.21/0.49         ( ( r2_hidden @ D @ C ) <=> ( ( ( D ) = ( A ) ) | ( ( D ) = ( B ) ) ) ) ) ))).
% 0.21/0.49  thf('12', plain,
% 0.21/0.49      (![X0 : $i, X2 : $i, X3 : $i, X4 : $i]:
% 0.21/0.49         (~ (r2_hidden @ X4 @ X2)
% 0.21/0.49          | ((X4) = (X3))
% 0.21/0.49          | ((X4) = (X0))
% 0.21/0.49          | ((X2) != (k2_tarski @ X3 @ X0)))),
% 0.21/0.49      inference('cnf', [status(esa)], [d2_tarski])).
% 0.21/0.49  thf('13', plain,
% 0.21/0.49      (![X0 : $i, X3 : $i, X4 : $i]:
% 0.21/0.49         (((X4) = (X0))
% 0.21/0.49          | ((X4) = (X3))
% 0.21/0.49          | ~ (r2_hidden @ X4 @ (k2_tarski @ X3 @ X0)))),
% 0.21/0.49      inference('simplify', [status(thm)], ['12'])).
% 0.21/0.49  thf('14', plain,
% 0.21/0.49      (![X0 : $i, X1 : $i]:
% 0.21/0.49         (~ (r2_hidden @ X1 @ (k1_tarski @ X0)) | ((X1) = (X0)) | ((X1) = (X0)))),
% 0.21/0.49      inference('sup-', [status(thm)], ['11', '13'])).
% 0.21/0.49  thf('15', plain,
% 0.21/0.49      (![X0 : $i, X1 : $i]:
% 0.21/0.49         (((X1) = (X0)) | ~ (r2_hidden @ X1 @ (k1_tarski @ X0)))),
% 0.21/0.49      inference('simplify', [status(thm)], ['14'])).
% 0.21/0.49  thf('16', plain,
% 0.21/0.49      ((((sk_A) = (sk_B)))
% 0.21/0.49         <= (~
% 0.21/0.49             ((r1_xboole_0 @ (k2_zfmisc_1 @ (k1_tarski @ sk_A) @ sk_C) @ 
% 0.21/0.49               (k2_zfmisc_1 @ (k1_tarski @ sk_B) @ sk_D_1))))),
% 0.21/0.49      inference('sup-', [status(thm)], ['10', '15'])).
% 0.21/0.49  thf('17', plain, (((sk_A) != (sk_B))),
% 0.21/0.49      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.49  thf('18', plain,
% 0.21/0.49      (((r1_xboole_0 @ (k2_zfmisc_1 @ (k1_tarski @ sk_A) @ sk_C) @ 
% 0.21/0.49         (k2_zfmisc_1 @ (k1_tarski @ sk_B) @ sk_D_1)))),
% 0.21/0.49      inference('simplify_reflect-', [status(thm)], ['16', '17'])).
% 0.21/0.49  thf('19', plain,
% 0.21/0.49      (~
% 0.21/0.49       ((r1_xboole_0 @ (k2_zfmisc_1 @ sk_C @ (k1_tarski @ sk_A)) @ 
% 0.21/0.49         (k2_zfmisc_1 @ sk_D_1 @ (k1_tarski @ sk_B)))) | 
% 0.21/0.49       ~
% 0.21/0.49       ((r1_xboole_0 @ (k2_zfmisc_1 @ (k1_tarski @ sk_A) @ sk_C) @ 
% 0.21/0.49         (k2_zfmisc_1 @ (k1_tarski @ sk_B) @ sk_D_1)))),
% 0.21/0.49      inference('split', [status(esa)], ['3'])).
% 0.21/0.49  thf('20', plain,
% 0.21/0.49      (~
% 0.21/0.49       ((r1_xboole_0 @ (k2_zfmisc_1 @ sk_C @ (k1_tarski @ sk_A)) @ 
% 0.21/0.49         (k2_zfmisc_1 @ sk_D_1 @ (k1_tarski @ sk_B))))),
% 0.21/0.49      inference('sat_resolution*', [status(thm)], ['18', '19'])).
% 0.21/0.49  thf('21', plain, ((r2_hidden @ sk_A @ (k1_tarski @ sk_B))),
% 0.21/0.49      inference('simpl_trail', [status(thm)], ['5', '20'])).
% 0.21/0.49  thf('22', plain,
% 0.21/0.49      (![X0 : $i, X1 : $i]:
% 0.21/0.49         (((X1) = (X0)) | ~ (r2_hidden @ X1 @ (k1_tarski @ X0)))),
% 0.21/0.49      inference('simplify', [status(thm)], ['14'])).
% 0.21/0.49  thf('23', plain, (((sk_A) = (sk_B))),
% 0.21/0.49      inference('sup-', [status(thm)], ['21', '22'])).
% 0.21/0.49  thf('24', plain, (((sk_A) != (sk_B))),
% 0.21/0.49      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.49  thf('25', plain, ($false),
% 0.21/0.49      inference('simplify_reflect-', [status(thm)], ['23', '24'])).
% 0.21/0.49  
% 0.21/0.49  % SZS output end Refutation
% 0.21/0.49  
% 0.21/0.50  % Zipperpin 1.5 exiting
%------------------------------------------------------------------------------
