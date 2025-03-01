%------------------------------------------------------------------------------
% File       : Zipperpin---2.0
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_portfolio.sh /export/starexec/sandbox/benchmark/theBenchmark.p /export/starexec/sandbox/tmp/tmp.F7PoEBYXox

% Computer   : n001.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 13:31:37 EST 2020

% Result     : Theorem 0.21s
% Output     : Refutation 0.21s
% Verified   : 
% Statistics : Number of formulae       :   65 ( 174 expanded)
%              Number of leaves         :   15 (  49 expanded)
%              Depth                    :   16
%              Number of atoms          :  410 (2053 expanded)
%              Number of equality atoms :   87 ( 473 expanded)
%              Maximal formula depth    :   13 (   5 average)

% Comments   : 
%------------------------------------------------------------------------------
thf(sk_B_type,type,(
    sk_B: $i )).

thf(r1_tarski_type,type,(
    r1_tarski: $i > $i > $o )).

thf(k2_xboole_0_type,type,(
    k2_xboole_0: $i > $i > $i )).

thf(k1_xboole_0_type,type,(
    k1_xboole_0: $i )).

thf(k3_xboole_0_type,type,(
    k3_xboole_0: $i > $i > $i )).

thf(sk_A_type,type,(
    sk_A: $i )).

thf(k1_tarski_type,type,(
    k1_tarski: $i > $i )).

thf(sk_C_type,type,(
    sk_C: $i )).

thf(t43_zfmisc_1,conjecture,(
    ! [A: $i,B: $i,C: $i] :
      ~ ( ( ( k1_tarski @ A )
          = ( k2_xboole_0 @ B @ C ) )
        & ~ ( ( B
              = ( k1_tarski @ A ) )
            & ( C
              = ( k1_tarski @ A ) ) )
        & ~ ( ( B = k1_xboole_0 )
            & ( C
              = ( k1_tarski @ A ) ) )
        & ~ ( ( B
              = ( k1_tarski @ A ) )
            & ( C = k1_xboole_0 ) ) ) )).

thf(zf_stmt_0,negated_conjecture,(
    ~ ! [A: $i,B: $i,C: $i] :
        ~ ( ( ( k1_tarski @ A )
            = ( k2_xboole_0 @ B @ C ) )
          & ~ ( ( B
                = ( k1_tarski @ A ) )
              & ( C
                = ( k1_tarski @ A ) ) )
          & ~ ( ( B = k1_xboole_0 )
              & ( C
                = ( k1_tarski @ A ) ) )
          & ~ ( ( B
                = ( k1_tarski @ A ) )
              & ( C = k1_xboole_0 ) ) ) ),
    inference('cnf.neg',[status(esa)],[t43_zfmisc_1])).

thf('0',plain,
    ( ( k1_tarski @ sk_A )
    = ( k2_xboole_0 @ sk_B @ sk_C ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(idempotence_k3_xboole_0,axiom,(
    ! [A: $i,B: $i] :
      ( ( k3_xboole_0 @ A @ A )
      = A ) )).

thf('1',plain,(
    ! [X0: $i] :
      ( ( k3_xboole_0 @ X0 @ X0 )
      = X0 ) ),
    inference(cnf,[status(esa)],[idempotence_k3_xboole_0])).

thf(t17_xboole_1,axiom,(
    ! [A: $i,B: $i] :
      ( r1_tarski @ ( k3_xboole_0 @ A @ B ) @ A ) )).

thf('2',plain,(
    ! [X6: $i,X7: $i] :
      ( r1_tarski @ ( k3_xboole_0 @ X6 @ X7 ) @ X6 ) ),
    inference(cnf,[status(esa)],[t17_xboole_1])).

thf('3',plain,(
    ! [X0: $i] :
      ( r1_tarski @ X0 @ X0 ) ),
    inference('sup+',[status(thm)],['1','2'])).

thf(t10_xboole_1,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( r1_tarski @ A @ B )
     => ( r1_tarski @ A @ ( k2_xboole_0 @ C @ B ) ) ) )).

thf('4',plain,(
    ! [X1: $i,X2: $i,X3: $i] :
      ( ~ ( r1_tarski @ X1 @ X2 )
      | ( r1_tarski @ X1 @ ( k2_xboole_0 @ X3 @ X2 ) ) ) ),
    inference(cnf,[status(esa)],[t10_xboole_1])).

thf('5',plain,(
    ! [X0: $i,X1: $i] :
      ( r1_tarski @ X0 @ ( k2_xboole_0 @ X1 @ X0 ) ) ),
    inference('sup-',[status(thm)],['3','4'])).

thf('6',plain,(
    r1_tarski @ sk_C @ ( k1_tarski @ sk_A ) ),
    inference('sup+',[status(thm)],['0','5'])).

thf(l3_zfmisc_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( r1_tarski @ A @ ( k1_tarski @ B ) )
    <=> ( ( A = k1_xboole_0 )
        | ( A
          = ( k1_tarski @ B ) ) ) ) )).

thf('7',plain,(
    ! [X38: $i,X39: $i] :
      ( ( X39
        = ( k1_tarski @ X38 ) )
      | ( X39 = k1_xboole_0 )
      | ~ ( r1_tarski @ X39 @ ( k1_tarski @ X38 ) ) ) ),
    inference(cnf,[status(esa)],[l3_zfmisc_1])).

thf('8',plain,
    ( ( sk_C = k1_xboole_0 )
    | ( sk_C
      = ( k1_tarski @ sk_A ) ) ),
    inference('sup-',[status(thm)],['6','7'])).

thf('9',plain,
    ( ( sk_B != k1_xboole_0 )
    | ( sk_C
     != ( k1_tarski @ sk_A ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('10',plain,
    ( ( sk_C
     != ( k1_tarski @ sk_A ) )
   <= ( sk_C
     != ( k1_tarski @ sk_A ) ) ),
    inference(split,[status(esa)],['9'])).

thf('11',plain,
    ( ( sk_C
     != ( k1_tarski @ sk_A ) )
    | ( sk_B != k1_xboole_0 ) ),
    inference(split,[status(esa)],['9'])).

thf('12',plain,
    ( ( sk_B
     != ( k1_tarski @ sk_A ) )
    | ( sk_C
     != ( k1_tarski @ sk_A ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('13',plain,
    ( ( sk_C
     != ( k1_tarski @ sk_A ) )
    | ( sk_B
     != ( k1_tarski @ sk_A ) ) ),
    inference(split,[status(esa)],['12'])).

thf('14',plain,
    ( ( k1_tarski @ sk_A )
    = ( k2_xboole_0 @ sk_B @ sk_C ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(t7_xboole_1,axiom,(
    ! [A: $i,B: $i] :
      ( r1_tarski @ A @ ( k2_xboole_0 @ A @ B ) ) )).

thf('15',plain,(
    ! [X8: $i,X9: $i] :
      ( r1_tarski @ X8 @ ( k2_xboole_0 @ X8 @ X9 ) ) ),
    inference(cnf,[status(esa)],[t7_xboole_1])).

thf('16',plain,(
    r1_tarski @ sk_B @ ( k1_tarski @ sk_A ) ),
    inference('sup+',[status(thm)],['14','15'])).

thf('17',plain,(
    ! [X38: $i,X39: $i] :
      ( ( X39
        = ( k1_tarski @ X38 ) )
      | ( X39 = k1_xboole_0 )
      | ~ ( r1_tarski @ X39 @ ( k1_tarski @ X38 ) ) ) ),
    inference(cnf,[status(esa)],[l3_zfmisc_1])).

thf('18',plain,
    ( ( sk_B = k1_xboole_0 )
    | ( sk_B
      = ( k1_tarski @ sk_A ) ) ),
    inference('sup-',[status(thm)],['16','17'])).

thf('19',plain,
    ( ( sk_B
     != ( k1_tarski @ sk_A ) )
    | ( sk_C != k1_xboole_0 ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('20',plain,
    ( ( sk_B
     != ( k1_tarski @ sk_A ) )
   <= ( sk_B
     != ( k1_tarski @ sk_A ) ) ),
    inference(split,[status(esa)],['19'])).

thf('21',plain,
    ( ( ( sk_B != sk_B )
      | ( sk_B = k1_xboole_0 ) )
   <= ( sk_B
     != ( k1_tarski @ sk_A ) ) ),
    inference('sup-',[status(thm)],['18','20'])).

thf('22',plain,
    ( ( sk_B = k1_xboole_0 )
   <= ( sk_B
     != ( k1_tarski @ sk_A ) ) ),
    inference(simplify,[status(thm)],['21'])).

thf('23',plain,
    ( ( sk_B != k1_xboole_0 )
   <= ( sk_B != k1_xboole_0 ) ),
    inference(split,[status(esa)],['9'])).

thf('24',plain,
    ( ( k1_xboole_0 != k1_xboole_0 )
   <= ( ( sk_B != k1_xboole_0 )
      & ( sk_B
       != ( k1_tarski @ sk_A ) ) ) ),
    inference('sup-',[status(thm)],['22','23'])).

thf('25',plain,
    ( ( sk_B = k1_xboole_0 )
    | ( sk_B
      = ( k1_tarski @ sk_A ) ) ),
    inference(simplify,[status(thm)],['24'])).

thf('26',plain,(
    sk_C
 != ( k1_tarski @ sk_A ) ),
    inference('sat_resolution*',[status(thm)],['11','13','25'])).

thf('27',plain,(
    sk_C
 != ( k1_tarski @ sk_A ) ),
    inference(simpl_trail,[status(thm)],['10','26'])).

thf('28',plain,
    ( ( sk_C != sk_C )
    | ( sk_C = k1_xboole_0 ) ),
    inference('sup-',[status(thm)],['8','27'])).

thf('29',plain,(
    sk_C = k1_xboole_0 ),
    inference(simplify,[status(thm)],['28'])).

thf('30',plain,
    ( ( sk_B = k1_xboole_0 )
   <= ( sk_B
     != ( k1_tarski @ sk_A ) ) ),
    inference(simplify,[status(thm)],['21'])).

thf('31',plain,
    ( ( k1_tarski @ sk_A )
    = ( k2_xboole_0 @ sk_B @ sk_C ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('32',plain,
    ( ( ( k1_tarski @ sk_A )
      = ( k2_xboole_0 @ k1_xboole_0 @ sk_C ) )
   <= ( sk_B
     != ( k1_tarski @ sk_A ) ) ),
    inference('sup+',[status(thm)],['30','31'])).

thf('33',plain,
    ( ( ( k1_tarski @ sk_A )
      = ( k2_xboole_0 @ k1_xboole_0 @ k1_xboole_0 ) )
   <= ( sk_B
     != ( k1_tarski @ sk_A ) ) ),
    inference('sup+',[status(thm)],['29','32'])).

thf('34',plain,(
    ! [X0: $i] :
      ( r1_tarski @ X0 @ X0 ) ),
    inference('sup+',[status(thm)],['1','2'])).

thf(t12_xboole_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( r1_tarski @ A @ B )
     => ( ( k2_xboole_0 @ A @ B )
        = B ) ) )).

thf('35',plain,(
    ! [X4: $i,X5: $i] :
      ( ( ( k2_xboole_0 @ X5 @ X4 )
        = X4 )
      | ~ ( r1_tarski @ X5 @ X4 ) ) ),
    inference(cnf,[status(esa)],[t12_xboole_1])).

thf('36',plain,(
    ! [X0: $i] :
      ( ( k2_xboole_0 @ X0 @ X0 )
      = X0 ) ),
    inference('sup-',[status(thm)],['34','35'])).

thf('37',plain,
    ( ( ( k1_tarski @ sk_A )
      = k1_xboole_0 )
   <= ( sk_B
     != ( k1_tarski @ sk_A ) ) ),
    inference(demod,[status(thm)],['33','36'])).

thf('38',plain,
    ( ( sk_B
     != ( k1_tarski @ sk_A ) )
   <= ( sk_B
     != ( k1_tarski @ sk_A ) ) ),
    inference(split,[status(esa)],['19'])).

thf('39',plain,
    ( ( sk_B = k1_xboole_0 )
   <= ( sk_B
     != ( k1_tarski @ sk_A ) ) ),
    inference(simplify,[status(thm)],['21'])).

thf('40',plain,
    ( ( k1_xboole_0
     != ( k1_tarski @ sk_A ) )
   <= ( sk_B
     != ( k1_tarski @ sk_A ) ) ),
    inference(demod,[status(thm)],['38','39'])).

thf('41',plain,
    ( $false
   <= ( sk_B
     != ( k1_tarski @ sk_A ) ) ),
    inference('simplify_reflect-',[status(thm)],['37','40'])).

thf('42',plain,(
    sk_C = k1_xboole_0 ),
    inference(simplify,[status(thm)],['28'])).

thf('43',plain,
    ( ( sk_C != k1_xboole_0 )
   <= ( sk_C != k1_xboole_0 ) ),
    inference(split,[status(esa)],['19'])).

thf('44',plain,
    ( ( k1_xboole_0 != k1_xboole_0 )
   <= ( sk_C != k1_xboole_0 ) ),
    inference('sup-',[status(thm)],['42','43'])).

thf('45',plain,(
    sk_C = k1_xboole_0 ),
    inference(simplify,[status(thm)],['44'])).

thf('46',plain,
    ( ( sk_B
     != ( k1_tarski @ sk_A ) )
    | ( sk_C != k1_xboole_0 ) ),
    inference(split,[status(esa)],['19'])).

thf('47',plain,(
    sk_B
 != ( k1_tarski @ sk_A ) ),
    inference('sat_resolution*',[status(thm)],['45','46'])).

thf('48',plain,(
    $false ),
    inference(simpl_trail,[status(thm)],['41','47'])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.03/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.03/0.13  % Command    : run_portfolio.sh /export/starexec/sandbox/benchmark/theBenchmark.p /export/starexec/sandbox/tmp/tmp.F7PoEBYXox
% 0.13/0.34  % Computer   : n001.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % DateTime   : Tue Dec  1 14:01:30 EST 2020
% 0.13/0.34  % CPUTime    : 
% 0.13/0.34  % Running portfolio for 600 s
% 0.13/0.34  % File         : /export/starexec/sandbox/benchmark/theBenchmark.p
% 0.13/0.35  % Number of cores: 8
% 0.13/0.35  % Python version: Python 3.6.8
% 0.13/0.35  % Running in FO mode
% 0.21/0.49  % Running /export/starexec/sandbox/solver/bin/fo/fo7.sh for 78
% 0.21/0.49  % Solved by: fo/fo7.sh
% 0.21/0.49  To remain in the chosen logic fragment, unification with booleans has been disabled.
% 0.21/0.49  % done 81 iterations in 0.019s
% 0.21/0.49  % SZS status Theorem for '/export/starexec/sandbox/benchmark/theBenchmark.p'
% 0.21/0.49  % SZS output start Refutation
% 0.21/0.49  thf(sk_B_type, type, sk_B: $i).
% 0.21/0.49  thf(r1_tarski_type, type, r1_tarski: $i > $i > $o).
% 0.21/0.49  thf(k2_xboole_0_type, type, k2_xboole_0: $i > $i > $i).
% 0.21/0.49  thf(k1_xboole_0_type, type, k1_xboole_0: $i).
% 0.21/0.49  thf(k3_xboole_0_type, type, k3_xboole_0: $i > $i > $i).
% 0.21/0.49  thf(sk_A_type, type, sk_A: $i).
% 0.21/0.49  thf(k1_tarski_type, type, k1_tarski: $i > $i).
% 0.21/0.49  thf(sk_C_type, type, sk_C: $i).
% 0.21/0.49  thf(t43_zfmisc_1, conjecture,
% 0.21/0.49    (![A:$i,B:$i,C:$i]:
% 0.21/0.49     ( ~( ( ( k1_tarski @ A ) = ( k2_xboole_0 @ B @ C ) ) & 
% 0.21/0.49          ( ~( ( ( B ) = ( k1_tarski @ A ) ) & ( ( C ) = ( k1_tarski @ A ) ) ) ) & 
% 0.21/0.49          ( ~( ( ( B ) = ( k1_xboole_0 ) ) & ( ( C ) = ( k1_tarski @ A ) ) ) ) & 
% 0.21/0.49          ( ~( ( ( B ) = ( k1_tarski @ A ) ) & ( ( C ) = ( k1_xboole_0 ) ) ) ) ) ))).
% 0.21/0.49  thf(zf_stmt_0, negated_conjecture,
% 0.21/0.49    (~( ![A:$i,B:$i,C:$i]:
% 0.21/0.49        ( ~( ( ( k1_tarski @ A ) = ( k2_xboole_0 @ B @ C ) ) & 
% 0.21/0.49             ( ~( ( ( B ) = ( k1_tarski @ A ) ) & ( ( C ) = ( k1_tarski @ A ) ) ) ) & 
% 0.21/0.49             ( ~( ( ( B ) = ( k1_xboole_0 ) ) & ( ( C ) = ( k1_tarski @ A ) ) ) ) & 
% 0.21/0.49             ( ~( ( ( B ) = ( k1_tarski @ A ) ) & ( ( C ) = ( k1_xboole_0 ) ) ) ) ) ) )),
% 0.21/0.49    inference('cnf.neg', [status(esa)], [t43_zfmisc_1])).
% 0.21/0.49  thf('0', plain, (((k1_tarski @ sk_A) = (k2_xboole_0 @ sk_B @ sk_C))),
% 0.21/0.49      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.49  thf(idempotence_k3_xboole_0, axiom,
% 0.21/0.49    (![A:$i,B:$i]: ( ( k3_xboole_0 @ A @ A ) = ( A ) ))).
% 0.21/0.49  thf('1', plain, (![X0 : $i]: ((k3_xboole_0 @ X0 @ X0) = (X0))),
% 0.21/0.49      inference('cnf', [status(esa)], [idempotence_k3_xboole_0])).
% 0.21/0.49  thf(t17_xboole_1, axiom,
% 0.21/0.49    (![A:$i,B:$i]: ( r1_tarski @ ( k3_xboole_0 @ A @ B ) @ A ))).
% 0.21/0.49  thf('2', plain,
% 0.21/0.49      (![X6 : $i, X7 : $i]: (r1_tarski @ (k3_xboole_0 @ X6 @ X7) @ X6)),
% 0.21/0.49      inference('cnf', [status(esa)], [t17_xboole_1])).
% 0.21/0.49  thf('3', plain, (![X0 : $i]: (r1_tarski @ X0 @ X0)),
% 0.21/0.49      inference('sup+', [status(thm)], ['1', '2'])).
% 0.21/0.49  thf(t10_xboole_1, axiom,
% 0.21/0.49    (![A:$i,B:$i,C:$i]:
% 0.21/0.49     ( ( r1_tarski @ A @ B ) => ( r1_tarski @ A @ ( k2_xboole_0 @ C @ B ) ) ))).
% 0.21/0.49  thf('4', plain,
% 0.21/0.49      (![X1 : $i, X2 : $i, X3 : $i]:
% 0.21/0.49         (~ (r1_tarski @ X1 @ X2) | (r1_tarski @ X1 @ (k2_xboole_0 @ X3 @ X2)))),
% 0.21/0.49      inference('cnf', [status(esa)], [t10_xboole_1])).
% 0.21/0.49  thf('5', plain,
% 0.21/0.49      (![X0 : $i, X1 : $i]: (r1_tarski @ X0 @ (k2_xboole_0 @ X1 @ X0))),
% 0.21/0.49      inference('sup-', [status(thm)], ['3', '4'])).
% 0.21/0.49  thf('6', plain, ((r1_tarski @ sk_C @ (k1_tarski @ sk_A))),
% 0.21/0.49      inference('sup+', [status(thm)], ['0', '5'])).
% 0.21/0.49  thf(l3_zfmisc_1, axiom,
% 0.21/0.49    (![A:$i,B:$i]:
% 0.21/0.49     ( ( r1_tarski @ A @ ( k1_tarski @ B ) ) <=>
% 0.21/0.49       ( ( ( A ) = ( k1_xboole_0 ) ) | ( ( A ) = ( k1_tarski @ B ) ) ) ))).
% 0.21/0.49  thf('7', plain,
% 0.21/0.49      (![X38 : $i, X39 : $i]:
% 0.21/0.49         (((X39) = (k1_tarski @ X38))
% 0.21/0.49          | ((X39) = (k1_xboole_0))
% 0.21/0.49          | ~ (r1_tarski @ X39 @ (k1_tarski @ X38)))),
% 0.21/0.49      inference('cnf', [status(esa)], [l3_zfmisc_1])).
% 0.21/0.49  thf('8', plain, ((((sk_C) = (k1_xboole_0)) | ((sk_C) = (k1_tarski @ sk_A)))),
% 0.21/0.49      inference('sup-', [status(thm)], ['6', '7'])).
% 0.21/0.49  thf('9', plain,
% 0.21/0.49      ((((sk_B) != (k1_xboole_0)) | ((sk_C) != (k1_tarski @ sk_A)))),
% 0.21/0.49      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.49  thf('10', plain,
% 0.21/0.49      ((((sk_C) != (k1_tarski @ sk_A))) <= (~ (((sk_C) = (k1_tarski @ sk_A))))),
% 0.21/0.49      inference('split', [status(esa)], ['9'])).
% 0.21/0.49  thf('11', plain,
% 0.21/0.49      (~ (((sk_C) = (k1_tarski @ sk_A))) | ~ (((sk_B) = (k1_xboole_0)))),
% 0.21/0.49      inference('split', [status(esa)], ['9'])).
% 0.21/0.49  thf('12', plain,
% 0.21/0.49      ((((sk_B) != (k1_tarski @ sk_A)) | ((sk_C) != (k1_tarski @ sk_A)))),
% 0.21/0.49      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.49  thf('13', plain,
% 0.21/0.49      (~ (((sk_C) = (k1_tarski @ sk_A))) | ~ (((sk_B) = (k1_tarski @ sk_A)))),
% 0.21/0.49      inference('split', [status(esa)], ['12'])).
% 0.21/0.49  thf('14', plain, (((k1_tarski @ sk_A) = (k2_xboole_0 @ sk_B @ sk_C))),
% 0.21/0.49      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.49  thf(t7_xboole_1, axiom,
% 0.21/0.49    (![A:$i,B:$i]: ( r1_tarski @ A @ ( k2_xboole_0 @ A @ B ) ))).
% 0.21/0.49  thf('15', plain,
% 0.21/0.49      (![X8 : $i, X9 : $i]: (r1_tarski @ X8 @ (k2_xboole_0 @ X8 @ X9))),
% 0.21/0.49      inference('cnf', [status(esa)], [t7_xboole_1])).
% 0.21/0.49  thf('16', plain, ((r1_tarski @ sk_B @ (k1_tarski @ sk_A))),
% 0.21/0.49      inference('sup+', [status(thm)], ['14', '15'])).
% 0.21/0.49  thf('17', plain,
% 0.21/0.49      (![X38 : $i, X39 : $i]:
% 0.21/0.49         (((X39) = (k1_tarski @ X38))
% 0.21/0.49          | ((X39) = (k1_xboole_0))
% 0.21/0.49          | ~ (r1_tarski @ X39 @ (k1_tarski @ X38)))),
% 0.21/0.49      inference('cnf', [status(esa)], [l3_zfmisc_1])).
% 0.21/0.49  thf('18', plain,
% 0.21/0.49      ((((sk_B) = (k1_xboole_0)) | ((sk_B) = (k1_tarski @ sk_A)))),
% 0.21/0.49      inference('sup-', [status(thm)], ['16', '17'])).
% 0.21/0.49  thf('19', plain,
% 0.21/0.49      ((((sk_B) != (k1_tarski @ sk_A)) | ((sk_C) != (k1_xboole_0)))),
% 0.21/0.49      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.49  thf('20', plain,
% 0.21/0.49      ((((sk_B) != (k1_tarski @ sk_A))) <= (~ (((sk_B) = (k1_tarski @ sk_A))))),
% 0.21/0.49      inference('split', [status(esa)], ['19'])).
% 0.21/0.49  thf('21', plain,
% 0.21/0.49      (((((sk_B) != (sk_B)) | ((sk_B) = (k1_xboole_0))))
% 0.21/0.49         <= (~ (((sk_B) = (k1_tarski @ sk_A))))),
% 0.21/0.49      inference('sup-', [status(thm)], ['18', '20'])).
% 0.21/0.49  thf('22', plain,
% 0.21/0.49      ((((sk_B) = (k1_xboole_0))) <= (~ (((sk_B) = (k1_tarski @ sk_A))))),
% 0.21/0.49      inference('simplify', [status(thm)], ['21'])).
% 0.21/0.49  thf('23', plain,
% 0.21/0.49      ((((sk_B) != (k1_xboole_0))) <= (~ (((sk_B) = (k1_xboole_0))))),
% 0.21/0.49      inference('split', [status(esa)], ['9'])).
% 0.21/0.49  thf('24', plain,
% 0.21/0.49      ((((k1_xboole_0) != (k1_xboole_0)))
% 0.21/0.49         <= (~ (((sk_B) = (k1_xboole_0))) & ~ (((sk_B) = (k1_tarski @ sk_A))))),
% 0.21/0.49      inference('sup-', [status(thm)], ['22', '23'])).
% 0.21/0.49  thf('25', plain,
% 0.21/0.49      ((((sk_B) = (k1_xboole_0))) | (((sk_B) = (k1_tarski @ sk_A)))),
% 0.21/0.49      inference('simplify', [status(thm)], ['24'])).
% 0.21/0.49  thf('26', plain, (~ (((sk_C) = (k1_tarski @ sk_A)))),
% 0.21/0.49      inference('sat_resolution*', [status(thm)], ['11', '13', '25'])).
% 0.21/0.49  thf('27', plain, (((sk_C) != (k1_tarski @ sk_A))),
% 0.21/0.49      inference('simpl_trail', [status(thm)], ['10', '26'])).
% 0.21/0.49  thf('28', plain, ((((sk_C) != (sk_C)) | ((sk_C) = (k1_xboole_0)))),
% 0.21/0.49      inference('sup-', [status(thm)], ['8', '27'])).
% 0.21/0.49  thf('29', plain, (((sk_C) = (k1_xboole_0))),
% 0.21/0.49      inference('simplify', [status(thm)], ['28'])).
% 0.21/0.49  thf('30', plain,
% 0.21/0.49      ((((sk_B) = (k1_xboole_0))) <= (~ (((sk_B) = (k1_tarski @ sk_A))))),
% 0.21/0.49      inference('simplify', [status(thm)], ['21'])).
% 0.21/0.49  thf('31', plain, (((k1_tarski @ sk_A) = (k2_xboole_0 @ sk_B @ sk_C))),
% 0.21/0.49      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.49  thf('32', plain,
% 0.21/0.49      ((((k1_tarski @ sk_A) = (k2_xboole_0 @ k1_xboole_0 @ sk_C)))
% 0.21/0.49         <= (~ (((sk_B) = (k1_tarski @ sk_A))))),
% 0.21/0.49      inference('sup+', [status(thm)], ['30', '31'])).
% 0.21/0.49  thf('33', plain,
% 0.21/0.49      ((((k1_tarski @ sk_A) = (k2_xboole_0 @ k1_xboole_0 @ k1_xboole_0)))
% 0.21/0.49         <= (~ (((sk_B) = (k1_tarski @ sk_A))))),
% 0.21/0.49      inference('sup+', [status(thm)], ['29', '32'])).
% 0.21/0.49  thf('34', plain, (![X0 : $i]: (r1_tarski @ X0 @ X0)),
% 0.21/0.49      inference('sup+', [status(thm)], ['1', '2'])).
% 0.21/0.49  thf(t12_xboole_1, axiom,
% 0.21/0.49    (![A:$i,B:$i]:
% 0.21/0.49     ( ( r1_tarski @ A @ B ) => ( ( k2_xboole_0 @ A @ B ) = ( B ) ) ))).
% 0.21/0.49  thf('35', plain,
% 0.21/0.49      (![X4 : $i, X5 : $i]:
% 0.21/0.49         (((k2_xboole_0 @ X5 @ X4) = (X4)) | ~ (r1_tarski @ X5 @ X4))),
% 0.21/0.49      inference('cnf', [status(esa)], [t12_xboole_1])).
% 0.21/0.49  thf('36', plain, (![X0 : $i]: ((k2_xboole_0 @ X0 @ X0) = (X0))),
% 0.21/0.49      inference('sup-', [status(thm)], ['34', '35'])).
% 0.21/0.49  thf('37', plain,
% 0.21/0.49      ((((k1_tarski @ sk_A) = (k1_xboole_0)))
% 0.21/0.49         <= (~ (((sk_B) = (k1_tarski @ sk_A))))),
% 0.21/0.49      inference('demod', [status(thm)], ['33', '36'])).
% 0.21/0.49  thf('38', plain,
% 0.21/0.49      ((((sk_B) != (k1_tarski @ sk_A))) <= (~ (((sk_B) = (k1_tarski @ sk_A))))),
% 0.21/0.49      inference('split', [status(esa)], ['19'])).
% 0.21/0.49  thf('39', plain,
% 0.21/0.49      ((((sk_B) = (k1_xboole_0))) <= (~ (((sk_B) = (k1_tarski @ sk_A))))),
% 0.21/0.49      inference('simplify', [status(thm)], ['21'])).
% 0.21/0.49  thf('40', plain,
% 0.21/0.49      ((((k1_xboole_0) != (k1_tarski @ sk_A)))
% 0.21/0.49         <= (~ (((sk_B) = (k1_tarski @ sk_A))))),
% 0.21/0.49      inference('demod', [status(thm)], ['38', '39'])).
% 0.21/0.49  thf('41', plain, (($false) <= (~ (((sk_B) = (k1_tarski @ sk_A))))),
% 0.21/0.49      inference('simplify_reflect-', [status(thm)], ['37', '40'])).
% 0.21/0.49  thf('42', plain, (((sk_C) = (k1_xboole_0))),
% 0.21/0.49      inference('simplify', [status(thm)], ['28'])).
% 0.21/0.49  thf('43', plain,
% 0.21/0.49      ((((sk_C) != (k1_xboole_0))) <= (~ (((sk_C) = (k1_xboole_0))))),
% 0.21/0.49      inference('split', [status(esa)], ['19'])).
% 0.21/0.49  thf('44', plain,
% 0.21/0.49      ((((k1_xboole_0) != (k1_xboole_0))) <= (~ (((sk_C) = (k1_xboole_0))))),
% 0.21/0.49      inference('sup-', [status(thm)], ['42', '43'])).
% 0.21/0.49  thf('45', plain, ((((sk_C) = (k1_xboole_0)))),
% 0.21/0.49      inference('simplify', [status(thm)], ['44'])).
% 0.21/0.49  thf('46', plain,
% 0.21/0.49      (~ (((sk_B) = (k1_tarski @ sk_A))) | ~ (((sk_C) = (k1_xboole_0)))),
% 0.21/0.49      inference('split', [status(esa)], ['19'])).
% 0.21/0.49  thf('47', plain, (~ (((sk_B) = (k1_tarski @ sk_A)))),
% 0.21/0.49      inference('sat_resolution*', [status(thm)], ['45', '46'])).
% 0.21/0.49  thf('48', plain, ($false),
% 0.21/0.49      inference('simpl_trail', [status(thm)], ['41', '47'])).
% 0.21/0.49  
% 0.21/0.49  % SZS output end Refutation
% 0.21/0.49  
% 0.21/0.50  % Zipperpin 1.5 exiting
%------------------------------------------------------------------------------
