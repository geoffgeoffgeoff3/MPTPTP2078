%------------------------------------------------------------------------------
% File       : Zipperpin---2.0
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_portfolio.sh /export/starexec/sandbox2/benchmark/theBenchmark.p /export/starexec/sandbox2/tmp/tmp.OO7YzeRFSn

% Computer   : n019.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 13:57:31 EST 2020

% Result     : Theorem 0.21s
% Output     : Refutation 0.21s
% Verified   : 
% Statistics : Number of formulae       :   66 (  75 expanded)
%              Number of leaves         :   33 (  38 expanded)
%              Depth                    :   11
%              Number of atoms          :  432 ( 614 expanded)
%              Number of equality atoms :   45 (  54 expanded)
%              Maximal formula depth    :   15 (   6 average)

% Comments   : 
%------------------------------------------------------------------------------
thf(k3_xboole_0_type,type,(
    k3_xboole_0: $i > $i > $i )).

thf(sk_C_type,type,(
    sk_C: $i )).

thf(k1_funct_1_type,type,(
    k1_funct_1: $i > $i > $i )).

thf(k5_xboole_0_type,type,(
    k5_xboole_0: $i > $i > $i )).

thf(k2_zfmisc_1_type,type,(
    k2_zfmisc_1: $i > $i > $i )).

thf(zip_tseitin_0_type,type,(
    zip_tseitin_0: $i > $i > $i > $i > $o )).

thf(r2_hidden_type,type,(
    r2_hidden: $i > $i > $o )).

thf(k1_zfmisc_1_type,type,(
    k1_zfmisc_1: $i > $i )).

thf(k1_enumset1_type,type,(
    k1_enumset1: $i > $i > $i > $i )).

thf(k4_xboole_0_type,type,(
    k4_xboole_0: $i > $i > $i )).

thf(sk_A_type,type,(
    sk_A: $i )).

thf(k1_tarski_type,type,(
    k1_tarski: $i > $i )).

thf(v1_funct_1_type,type,(
    v1_funct_1: $i > $o )).

thf(v1_funct_2_type,type,(
    v1_funct_2: $i > $i > $i > $o )).

thf(m1_subset_1_type,type,(
    m1_subset_1: $i > $i > $o )).

thf(sk_D_type,type,(
    sk_D: $i )).

thf(k1_xboole_0_type,type,(
    k1_xboole_0: $i )).

thf(k2_tarski_type,type,(
    k2_tarski: $i > $i > $i )).

thf(sk_B_type,type,(
    sk_B: $i )).

thf(k1_setfam_1_type,type,(
    k1_setfam_1: $i > $i )).

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
    ! [X4: $i,X5: $i,X6: $i,X7: $i] :
      ( ( zip_tseitin_0 @ X4 @ X5 @ X6 @ X7 )
      | ( X4 = X5 )
      | ( X4 = X6 )
      | ( X4 = X7 ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(t65_funct_2,conjecture,(
    ! [A: $i,B: $i,C: $i,D: $i] :
      ( ( ( v1_funct_1 @ D )
        & ( v1_funct_2 @ D @ A @ ( k1_tarski @ B ) )
        & ( m1_subset_1 @ D @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ ( k1_tarski @ B ) ) ) ) )
     => ( ( r2_hidden @ C @ A )
       => ( ( k1_funct_1 @ D @ C )
          = B ) ) ) )).

thf(zf_stmt_1,negated_conjecture,(
    ~ ! [A: $i,B: $i,C: $i,D: $i] :
        ( ( ( v1_funct_1 @ D )
          & ( v1_funct_2 @ D @ A @ ( k1_tarski @ B ) )
          & ( m1_subset_1 @ D @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ ( k1_tarski @ B ) ) ) ) )
       => ( ( r2_hidden @ C @ A )
         => ( ( k1_funct_1 @ D @ C )
            = B ) ) ) ),
    inference('cnf.neg',[status(esa)],[t65_funct_2])).

thf('1',plain,(
    r2_hidden @ sk_C @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_1])).

thf('2',plain,(
    m1_subset_1 @ sk_D @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_A @ ( k1_tarski @ sk_B ) ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_1])).

thf(t7_funct_2,axiom,(
    ! [A: $i,B: $i,C: $i,D: $i] :
      ( ( ( v1_funct_1 @ D )
        & ( v1_funct_2 @ D @ A @ B )
        & ( m1_subset_1 @ D @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) )
     => ( ( r2_hidden @ C @ A )
       => ( ( B = k1_xboole_0 )
          | ( r2_hidden @ ( k1_funct_1 @ D @ C ) @ B ) ) ) ) )).

thf('3',plain,(
    ! [X49: $i,X50: $i,X51: $i,X52: $i] :
      ( ~ ( r2_hidden @ X49 @ X50 )
      | ( X51 = k1_xboole_0 )
      | ~ ( v1_funct_1 @ X52 )
      | ~ ( v1_funct_2 @ X52 @ X50 @ X51 )
      | ~ ( m1_subset_1 @ X52 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X50 @ X51 ) ) )
      | ( r2_hidden @ ( k1_funct_1 @ X52 @ X49 ) @ X51 ) ) ),
    inference(cnf,[status(esa)],[t7_funct_2])).

thf('4',plain,(
    ! [X0: $i] :
      ( ( r2_hidden @ ( k1_funct_1 @ sk_D @ X0 ) @ ( k1_tarski @ sk_B ) )
      | ~ ( v1_funct_2 @ sk_D @ sk_A @ ( k1_tarski @ sk_B ) )
      | ~ ( v1_funct_1 @ sk_D )
      | ( ( k1_tarski @ sk_B )
        = k1_xboole_0 )
      | ~ ( r2_hidden @ X0 @ sk_A ) ) ),
    inference('sup-',[status(thm)],['2','3'])).

thf('5',plain,(
    v1_funct_2 @ sk_D @ sk_A @ ( k1_tarski @ sk_B ) ),
    inference(cnf,[status(esa)],[zf_stmt_1])).

thf('6',plain,(
    v1_funct_1 @ sk_D ),
    inference(cnf,[status(esa)],[zf_stmt_1])).

thf('7',plain,(
    ! [X0: $i] :
      ( ( r2_hidden @ ( k1_funct_1 @ sk_D @ X0 ) @ ( k1_tarski @ sk_B ) )
      | ( ( k1_tarski @ sk_B )
        = k1_xboole_0 )
      | ~ ( r2_hidden @ X0 @ sk_A ) ) ),
    inference(demod,[status(thm)],['4','5','6'])).

thf(t20_zfmisc_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( ( k4_xboole_0 @ ( k1_tarski @ A ) @ ( k1_tarski @ B ) )
        = ( k1_tarski @ A ) )
    <=> ( A != B ) ) )).

thf('8',plain,(
    ! [X43: $i,X44: $i] :
      ( ( X44 != X43 )
      | ( ( k4_xboole_0 @ ( k1_tarski @ X44 ) @ ( k1_tarski @ X43 ) )
       != ( k1_tarski @ X44 ) ) ) ),
    inference(cnf,[status(esa)],[t20_zfmisc_1])).

thf('9',plain,(
    ! [X43: $i] :
      ( ( k4_xboole_0 @ ( k1_tarski @ X43 ) @ ( k1_tarski @ X43 ) )
     != ( k1_tarski @ X43 ) ) ),
    inference(simplify,[status(thm)],['8'])).

thf(t69_enumset1,axiom,(
    ! [A: $i] :
      ( ( k2_tarski @ A @ A )
      = ( k1_tarski @ A ) ) )).

thf('10',plain,(
    ! [X15: $i] :
      ( ( k2_tarski @ X15 @ X15 )
      = ( k1_tarski @ X15 ) ) ),
    inference(cnf,[status(esa)],[t69_enumset1])).

thf(t11_setfam_1,axiom,(
    ! [A: $i] :
      ( ( k1_setfam_1 @ ( k1_tarski @ A ) )
      = A ) )).

thf('11',plain,(
    ! [X46: $i] :
      ( ( k1_setfam_1 @ ( k1_tarski @ X46 ) )
      = X46 ) ),
    inference(cnf,[status(esa)],[t11_setfam_1])).

thf('12',plain,(
    ! [X0: $i] :
      ( ( k1_setfam_1 @ ( k2_tarski @ X0 @ X0 ) )
      = X0 ) ),
    inference('sup+',[status(thm)],['10','11'])).

thf(t12_setfam_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( k1_setfam_1 @ ( k2_tarski @ A @ B ) )
      = ( k3_xboole_0 @ A @ B ) ) )).

thf('13',plain,(
    ! [X47: $i,X48: $i] :
      ( ( k1_setfam_1 @ ( k2_tarski @ X47 @ X48 ) )
      = ( k3_xboole_0 @ X47 @ X48 ) ) ),
    inference(cnf,[status(esa)],[t12_setfam_1])).

thf('14',plain,(
    ! [X0: $i] :
      ( ( k3_xboole_0 @ X0 @ X0 )
      = X0 ) ),
    inference(demod,[status(thm)],['12','13'])).

thf(t100_xboole_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( k4_xboole_0 @ A @ B )
      = ( k5_xboole_0 @ A @ ( k3_xboole_0 @ A @ B ) ) ) )).

thf('15',plain,(
    ! [X0: $i,X1: $i] :
      ( ( k4_xboole_0 @ X0 @ X1 )
      = ( k5_xboole_0 @ X0 @ ( k3_xboole_0 @ X0 @ X1 ) ) ) ),
    inference(cnf,[status(esa)],[t100_xboole_1])).

thf('16',plain,(
    ! [X0: $i] :
      ( ( k4_xboole_0 @ X0 @ X0 )
      = ( k5_xboole_0 @ X0 @ X0 ) ) ),
    inference('sup+',[status(thm)],['14','15'])).

thf(t92_xboole_1,axiom,(
    ! [A: $i] :
      ( ( k5_xboole_0 @ A @ A )
      = k1_xboole_0 ) )).

thf('17',plain,(
    ! [X2: $i] :
      ( ( k5_xboole_0 @ X2 @ X2 )
      = k1_xboole_0 ) ),
    inference(cnf,[status(esa)],[t92_xboole_1])).

thf('18',plain,(
    ! [X43: $i] :
      ( k1_xboole_0
     != ( k1_tarski @ X43 ) ) ),
    inference(demod,[status(thm)],['9','16','17'])).

thf('19',plain,(
    ! [X0: $i] :
      ( ~ ( r2_hidden @ X0 @ sk_A )
      | ( r2_hidden @ ( k1_funct_1 @ sk_D @ X0 ) @ ( k1_tarski @ sk_B ) ) ) ),
    inference(clc,[status(thm)],['7','18'])).

thf('20',plain,(
    r2_hidden @ ( k1_funct_1 @ sk_D @ sk_C ) @ ( k1_tarski @ sk_B ) ),
    inference('sup-',[status(thm)],['1','19'])).

thf('21',plain,(
    ! [X15: $i] :
      ( ( k2_tarski @ X15 @ X15 )
      = ( k1_tarski @ X15 ) ) ),
    inference(cnf,[status(esa)],[t69_enumset1])).

thf(t70_enumset1,axiom,(
    ! [A: $i,B: $i] :
      ( ( k1_enumset1 @ A @ A @ B )
      = ( k2_tarski @ A @ B ) ) )).

thf('22',plain,(
    ! [X16: $i,X17: $i] :
      ( ( k1_enumset1 @ X16 @ X16 @ X17 )
      = ( k2_tarski @ X16 @ X17 ) ) ),
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

thf('23',plain,(
    ! [X9: $i,X10: $i,X11: $i,X12: $i,X13: $i] :
      ( ~ ( r2_hidden @ X13 @ X12 )
      | ~ ( zip_tseitin_0 @ X13 @ X9 @ X10 @ X11 )
      | ( X12
       != ( k1_enumset1 @ X11 @ X10 @ X9 ) ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_3])).

thf('24',plain,(
    ! [X9: $i,X10: $i,X11: $i,X13: $i] :
      ( ~ ( zip_tseitin_0 @ X13 @ X9 @ X10 @ X11 )
      | ~ ( r2_hidden @ X13 @ ( k1_enumset1 @ X11 @ X10 @ X9 ) ) ) ),
    inference(simplify,[status(thm)],['23'])).

thf('25',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( ~ ( r2_hidden @ X2 @ ( k2_tarski @ X1 @ X0 ) )
      | ~ ( zip_tseitin_0 @ X2 @ X0 @ X1 @ X1 ) ) ),
    inference('sup-',[status(thm)],['22','24'])).

thf('26',plain,(
    ! [X0: $i,X1: $i] :
      ( ~ ( r2_hidden @ X1 @ ( k1_tarski @ X0 ) )
      | ~ ( zip_tseitin_0 @ X1 @ X0 @ X0 @ X0 ) ) ),
    inference('sup-',[status(thm)],['21','25'])).

thf('27',plain,(
    ~ ( zip_tseitin_0 @ ( k1_funct_1 @ sk_D @ sk_C ) @ sk_B @ sk_B @ sk_B ) ),
    inference('sup-',[status(thm)],['20','26'])).

thf('28',plain,
    ( ( ( k1_funct_1 @ sk_D @ sk_C )
      = sk_B )
    | ( ( k1_funct_1 @ sk_D @ sk_C )
      = sk_B )
    | ( ( k1_funct_1 @ sk_D @ sk_C )
      = sk_B ) ),
    inference('sup-',[status(thm)],['0','27'])).

thf('29',plain,
    ( ( k1_funct_1 @ sk_D @ sk_C )
    = sk_B ),
    inference(simplify,[status(thm)],['28'])).

thf('30',plain,(
    ( k1_funct_1 @ sk_D @ sk_C )
 != sk_B ),
    inference(cnf,[status(esa)],[zf_stmt_1])).

thf('31',plain,(
    $false ),
    inference('simplify_reflect-',[status(thm)],['29','30'])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.03/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.03/0.13  % Command    : run_portfolio.sh /export/starexec/sandbox2/benchmark/theBenchmark.p /export/starexec/sandbox2/tmp/tmp.OO7YzeRFSn
% 0.12/0.35  % Computer   : n019.cluster.edu
% 0.12/0.35  % Model      : x86_64 x86_64
% 0.12/0.35  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.12/0.35  % Memory     : 8042.1875MB
% 0.12/0.35  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.12/0.35  % CPULimit   : 60
% 0.12/0.35  % DateTime   : Tue Dec  1 17:47:52 EST 2020
% 0.12/0.35  % CPUTime    : 
% 0.12/0.35  % Running portfolio for 600 s
% 0.12/0.35  % File         : /export/starexec/sandbox2/benchmark/theBenchmark.p
% 0.12/0.35  % Number of cores: 8
% 0.12/0.35  % Python version: Python 3.6.8
% 0.12/0.35  % Running in FO mode
% 0.21/0.49  % Running /export/starexec/sandbox2/solver/bin/fo/fo7.sh for 78
% 0.21/0.49  % Solved by: fo/fo7.sh
% 0.21/0.49  To remain in the chosen logic fragment, unification with booleans has been disabled.
% 0.21/0.49  % done 43 iterations in 0.024s
% 0.21/0.49  % SZS status Theorem for '/export/starexec/sandbox2/benchmark/theBenchmark.p'
% 0.21/0.49  % SZS output start Refutation
% 0.21/0.49  thf(k3_xboole_0_type, type, k3_xboole_0: $i > $i > $i).
% 0.21/0.49  thf(sk_C_type, type, sk_C: $i).
% 0.21/0.49  thf(k1_funct_1_type, type, k1_funct_1: $i > $i > $i).
% 0.21/0.49  thf(k5_xboole_0_type, type, k5_xboole_0: $i > $i > $i).
% 0.21/0.49  thf(k2_zfmisc_1_type, type, k2_zfmisc_1: $i > $i > $i).
% 0.21/0.49  thf(zip_tseitin_0_type, type, zip_tseitin_0: $i > $i > $i > $i > $o).
% 0.21/0.49  thf(r2_hidden_type, type, r2_hidden: $i > $i > $o).
% 0.21/0.49  thf(k1_zfmisc_1_type, type, k1_zfmisc_1: $i > $i).
% 0.21/0.49  thf(k1_enumset1_type, type, k1_enumset1: $i > $i > $i > $i).
% 0.21/0.49  thf(k4_xboole_0_type, type, k4_xboole_0: $i > $i > $i).
% 0.21/0.49  thf(sk_A_type, type, sk_A: $i).
% 0.21/0.49  thf(k1_tarski_type, type, k1_tarski: $i > $i).
% 0.21/0.49  thf(v1_funct_1_type, type, v1_funct_1: $i > $o).
% 0.21/0.49  thf(v1_funct_2_type, type, v1_funct_2: $i > $i > $i > $o).
% 0.21/0.49  thf(m1_subset_1_type, type, m1_subset_1: $i > $i > $o).
% 0.21/0.49  thf(sk_D_type, type, sk_D: $i).
% 0.21/0.49  thf(k1_xboole_0_type, type, k1_xboole_0: $i).
% 0.21/0.49  thf(k2_tarski_type, type, k2_tarski: $i > $i > $i).
% 0.21/0.49  thf(sk_B_type, type, sk_B: $i).
% 0.21/0.49  thf(k1_setfam_1_type, type, k1_setfam_1: $i > $i).
% 0.21/0.49  thf(d1_enumset1, axiom,
% 0.21/0.49    (![A:$i,B:$i,C:$i,D:$i]:
% 0.21/0.49     ( ( ( D ) = ( k1_enumset1 @ A @ B @ C ) ) <=>
% 0.21/0.49       ( ![E:$i]:
% 0.21/0.49         ( ( r2_hidden @ E @ D ) <=>
% 0.21/0.49           ( ~( ( ( E ) != ( C ) ) & ( ( E ) != ( B ) ) & ( ( E ) != ( A ) ) ) ) ) ) ))).
% 0.21/0.49  thf(zf_stmt_0, axiom,
% 0.21/0.49    (![E:$i,C:$i,B:$i,A:$i]:
% 0.21/0.49     ( ( zip_tseitin_0 @ E @ C @ B @ A ) <=>
% 0.21/0.49       ( ( ( E ) != ( A ) ) & ( ( E ) != ( B ) ) & ( ( E ) != ( C ) ) ) ))).
% 0.21/0.49  thf('0', plain,
% 0.21/0.49      (![X4 : $i, X5 : $i, X6 : $i, X7 : $i]:
% 0.21/0.49         ((zip_tseitin_0 @ X4 @ X5 @ X6 @ X7)
% 0.21/0.49          | ((X4) = (X5))
% 0.21/0.49          | ((X4) = (X6))
% 0.21/0.49          | ((X4) = (X7)))),
% 0.21/0.49      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.49  thf(t65_funct_2, conjecture,
% 0.21/0.49    (![A:$i,B:$i,C:$i,D:$i]:
% 0.21/0.49     ( ( ( v1_funct_1 @ D ) & ( v1_funct_2 @ D @ A @ ( k1_tarski @ B ) ) & 
% 0.21/0.49         ( m1_subset_1 @
% 0.21/0.49           D @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ ( k1_tarski @ B ) ) ) ) ) =>
% 0.21/0.49       ( ( r2_hidden @ C @ A ) => ( ( k1_funct_1 @ D @ C ) = ( B ) ) ) ))).
% 0.21/0.49  thf(zf_stmt_1, negated_conjecture,
% 0.21/0.49    (~( ![A:$i,B:$i,C:$i,D:$i]:
% 0.21/0.49        ( ( ( v1_funct_1 @ D ) & ( v1_funct_2 @ D @ A @ ( k1_tarski @ B ) ) & 
% 0.21/0.49            ( m1_subset_1 @
% 0.21/0.49              D @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ ( k1_tarski @ B ) ) ) ) ) =>
% 0.21/0.49          ( ( r2_hidden @ C @ A ) => ( ( k1_funct_1 @ D @ C ) = ( B ) ) ) ) )),
% 0.21/0.49    inference('cnf.neg', [status(esa)], [t65_funct_2])).
% 0.21/0.49  thf('1', plain, ((r2_hidden @ sk_C @ sk_A)),
% 0.21/0.49      inference('cnf', [status(esa)], [zf_stmt_1])).
% 0.21/0.49  thf('2', plain,
% 0.21/0.49      ((m1_subset_1 @ sk_D @ 
% 0.21/0.49        (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_A @ (k1_tarski @ sk_B))))),
% 0.21/0.49      inference('cnf', [status(esa)], [zf_stmt_1])).
% 0.21/0.49  thf(t7_funct_2, axiom,
% 0.21/0.49    (![A:$i,B:$i,C:$i,D:$i]:
% 0.21/0.49     ( ( ( v1_funct_1 @ D ) & ( v1_funct_2 @ D @ A @ B ) & 
% 0.21/0.49         ( m1_subset_1 @ D @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) ) =>
% 0.21/0.49       ( ( r2_hidden @ C @ A ) =>
% 0.21/0.49         ( ( ( B ) = ( k1_xboole_0 ) ) | 
% 0.21/0.49           ( r2_hidden @ ( k1_funct_1 @ D @ C ) @ B ) ) ) ))).
% 0.21/0.49  thf('3', plain,
% 0.21/0.49      (![X49 : $i, X50 : $i, X51 : $i, X52 : $i]:
% 0.21/0.49         (~ (r2_hidden @ X49 @ X50)
% 0.21/0.49          | ((X51) = (k1_xboole_0))
% 0.21/0.49          | ~ (v1_funct_1 @ X52)
% 0.21/0.49          | ~ (v1_funct_2 @ X52 @ X50 @ X51)
% 0.21/0.49          | ~ (m1_subset_1 @ X52 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X50 @ X51)))
% 0.21/0.49          | (r2_hidden @ (k1_funct_1 @ X52 @ X49) @ X51))),
% 0.21/0.49      inference('cnf', [status(esa)], [t7_funct_2])).
% 0.21/0.49  thf('4', plain,
% 0.21/0.49      (![X0 : $i]:
% 0.21/0.49         ((r2_hidden @ (k1_funct_1 @ sk_D @ X0) @ (k1_tarski @ sk_B))
% 0.21/0.49          | ~ (v1_funct_2 @ sk_D @ sk_A @ (k1_tarski @ sk_B))
% 0.21/0.49          | ~ (v1_funct_1 @ sk_D)
% 0.21/0.49          | ((k1_tarski @ sk_B) = (k1_xboole_0))
% 0.21/0.49          | ~ (r2_hidden @ X0 @ sk_A))),
% 0.21/0.49      inference('sup-', [status(thm)], ['2', '3'])).
% 0.21/0.49  thf('5', plain, ((v1_funct_2 @ sk_D @ sk_A @ (k1_tarski @ sk_B))),
% 0.21/0.49      inference('cnf', [status(esa)], [zf_stmt_1])).
% 0.21/0.49  thf('6', plain, ((v1_funct_1 @ sk_D)),
% 0.21/0.49      inference('cnf', [status(esa)], [zf_stmt_1])).
% 0.21/0.49  thf('7', plain,
% 0.21/0.49      (![X0 : $i]:
% 0.21/0.49         ((r2_hidden @ (k1_funct_1 @ sk_D @ X0) @ (k1_tarski @ sk_B))
% 0.21/0.49          | ((k1_tarski @ sk_B) = (k1_xboole_0))
% 0.21/0.49          | ~ (r2_hidden @ X0 @ sk_A))),
% 0.21/0.49      inference('demod', [status(thm)], ['4', '5', '6'])).
% 0.21/0.49  thf(t20_zfmisc_1, axiom,
% 0.21/0.49    (![A:$i,B:$i]:
% 0.21/0.49     ( ( ( k4_xboole_0 @ ( k1_tarski @ A ) @ ( k1_tarski @ B ) ) =
% 0.21/0.49         ( k1_tarski @ A ) ) <=>
% 0.21/0.49       ( ( A ) != ( B ) ) ))).
% 0.21/0.49  thf('8', plain,
% 0.21/0.49      (![X43 : $i, X44 : $i]:
% 0.21/0.49         (((X44) != (X43))
% 0.21/0.49          | ((k4_xboole_0 @ (k1_tarski @ X44) @ (k1_tarski @ X43))
% 0.21/0.49              != (k1_tarski @ X44)))),
% 0.21/0.49      inference('cnf', [status(esa)], [t20_zfmisc_1])).
% 0.21/0.49  thf('9', plain,
% 0.21/0.49      (![X43 : $i]:
% 0.21/0.49         ((k4_xboole_0 @ (k1_tarski @ X43) @ (k1_tarski @ X43))
% 0.21/0.49           != (k1_tarski @ X43))),
% 0.21/0.49      inference('simplify', [status(thm)], ['8'])).
% 0.21/0.49  thf(t69_enumset1, axiom,
% 0.21/0.49    (![A:$i]: ( ( k2_tarski @ A @ A ) = ( k1_tarski @ A ) ))).
% 0.21/0.49  thf('10', plain,
% 0.21/0.49      (![X15 : $i]: ((k2_tarski @ X15 @ X15) = (k1_tarski @ X15))),
% 0.21/0.49      inference('cnf', [status(esa)], [t69_enumset1])).
% 0.21/0.49  thf(t11_setfam_1, axiom,
% 0.21/0.49    (![A:$i]: ( ( k1_setfam_1 @ ( k1_tarski @ A ) ) = ( A ) ))).
% 0.21/0.49  thf('11', plain, (![X46 : $i]: ((k1_setfam_1 @ (k1_tarski @ X46)) = (X46))),
% 0.21/0.49      inference('cnf', [status(esa)], [t11_setfam_1])).
% 0.21/0.49  thf('12', plain,
% 0.21/0.49      (![X0 : $i]: ((k1_setfam_1 @ (k2_tarski @ X0 @ X0)) = (X0))),
% 0.21/0.49      inference('sup+', [status(thm)], ['10', '11'])).
% 0.21/0.49  thf(t12_setfam_1, axiom,
% 0.21/0.49    (![A:$i,B:$i]:
% 0.21/0.49     ( ( k1_setfam_1 @ ( k2_tarski @ A @ B ) ) = ( k3_xboole_0 @ A @ B ) ))).
% 0.21/0.49  thf('13', plain,
% 0.21/0.49      (![X47 : $i, X48 : $i]:
% 0.21/0.49         ((k1_setfam_1 @ (k2_tarski @ X47 @ X48)) = (k3_xboole_0 @ X47 @ X48))),
% 0.21/0.49      inference('cnf', [status(esa)], [t12_setfam_1])).
% 0.21/0.49  thf('14', plain, (![X0 : $i]: ((k3_xboole_0 @ X0 @ X0) = (X0))),
% 0.21/0.49      inference('demod', [status(thm)], ['12', '13'])).
% 0.21/0.49  thf(t100_xboole_1, axiom,
% 0.21/0.49    (![A:$i,B:$i]:
% 0.21/0.49     ( ( k4_xboole_0 @ A @ B ) = ( k5_xboole_0 @ A @ ( k3_xboole_0 @ A @ B ) ) ))).
% 0.21/0.49  thf('15', plain,
% 0.21/0.49      (![X0 : $i, X1 : $i]:
% 0.21/0.49         ((k4_xboole_0 @ X0 @ X1)
% 0.21/0.49           = (k5_xboole_0 @ X0 @ (k3_xboole_0 @ X0 @ X1)))),
% 0.21/0.49      inference('cnf', [status(esa)], [t100_xboole_1])).
% 0.21/0.49  thf('16', plain,
% 0.21/0.49      (![X0 : $i]: ((k4_xboole_0 @ X0 @ X0) = (k5_xboole_0 @ X0 @ X0))),
% 0.21/0.49      inference('sup+', [status(thm)], ['14', '15'])).
% 0.21/0.49  thf(t92_xboole_1, axiom,
% 0.21/0.49    (![A:$i]: ( ( k5_xboole_0 @ A @ A ) = ( k1_xboole_0 ) ))).
% 0.21/0.49  thf('17', plain, (![X2 : $i]: ((k5_xboole_0 @ X2 @ X2) = (k1_xboole_0))),
% 0.21/0.49      inference('cnf', [status(esa)], [t92_xboole_1])).
% 0.21/0.49  thf('18', plain, (![X43 : $i]: ((k1_xboole_0) != (k1_tarski @ X43))),
% 0.21/0.49      inference('demod', [status(thm)], ['9', '16', '17'])).
% 0.21/0.49  thf('19', plain,
% 0.21/0.49      (![X0 : $i]:
% 0.21/0.49         (~ (r2_hidden @ X0 @ sk_A)
% 0.21/0.49          | (r2_hidden @ (k1_funct_1 @ sk_D @ X0) @ (k1_tarski @ sk_B)))),
% 0.21/0.49      inference('clc', [status(thm)], ['7', '18'])).
% 0.21/0.49  thf('20', plain,
% 0.21/0.49      ((r2_hidden @ (k1_funct_1 @ sk_D @ sk_C) @ (k1_tarski @ sk_B))),
% 0.21/0.49      inference('sup-', [status(thm)], ['1', '19'])).
% 0.21/0.49  thf('21', plain,
% 0.21/0.49      (![X15 : $i]: ((k2_tarski @ X15 @ X15) = (k1_tarski @ X15))),
% 0.21/0.49      inference('cnf', [status(esa)], [t69_enumset1])).
% 0.21/0.49  thf(t70_enumset1, axiom,
% 0.21/0.49    (![A:$i,B:$i]: ( ( k1_enumset1 @ A @ A @ B ) = ( k2_tarski @ A @ B ) ))).
% 0.21/0.49  thf('22', plain,
% 0.21/0.49      (![X16 : $i, X17 : $i]:
% 0.21/0.49         ((k1_enumset1 @ X16 @ X16 @ X17) = (k2_tarski @ X16 @ X17))),
% 0.21/0.49      inference('cnf', [status(esa)], [t70_enumset1])).
% 0.21/0.49  thf(zf_stmt_2, type, zip_tseitin_0 : $i > $i > $i > $i > $o).
% 0.21/0.49  thf(zf_stmt_3, axiom,
% 0.21/0.49    (![A:$i,B:$i,C:$i,D:$i]:
% 0.21/0.49     ( ( ( D ) = ( k1_enumset1 @ A @ B @ C ) ) <=>
% 0.21/0.49       ( ![E:$i]:
% 0.21/0.49         ( ( r2_hidden @ E @ D ) <=> ( ~( zip_tseitin_0 @ E @ C @ B @ A ) ) ) ) ))).
% 0.21/0.49  thf('23', plain,
% 0.21/0.49      (![X9 : $i, X10 : $i, X11 : $i, X12 : $i, X13 : $i]:
% 0.21/0.49         (~ (r2_hidden @ X13 @ X12)
% 0.21/0.49          | ~ (zip_tseitin_0 @ X13 @ X9 @ X10 @ X11)
% 0.21/0.49          | ((X12) != (k1_enumset1 @ X11 @ X10 @ X9)))),
% 0.21/0.49      inference('cnf', [status(esa)], [zf_stmt_3])).
% 0.21/0.49  thf('24', plain,
% 0.21/0.49      (![X9 : $i, X10 : $i, X11 : $i, X13 : $i]:
% 0.21/0.49         (~ (zip_tseitin_0 @ X13 @ X9 @ X10 @ X11)
% 0.21/0.49          | ~ (r2_hidden @ X13 @ (k1_enumset1 @ X11 @ X10 @ X9)))),
% 0.21/0.49      inference('simplify', [status(thm)], ['23'])).
% 0.21/0.49  thf('25', plain,
% 0.21/0.49      (![X0 : $i, X1 : $i, X2 : $i]:
% 0.21/0.49         (~ (r2_hidden @ X2 @ (k2_tarski @ X1 @ X0))
% 0.21/0.49          | ~ (zip_tseitin_0 @ X2 @ X0 @ X1 @ X1))),
% 0.21/0.49      inference('sup-', [status(thm)], ['22', '24'])).
% 0.21/0.49  thf('26', plain,
% 0.21/0.49      (![X0 : $i, X1 : $i]:
% 0.21/0.49         (~ (r2_hidden @ X1 @ (k1_tarski @ X0))
% 0.21/0.49          | ~ (zip_tseitin_0 @ X1 @ X0 @ X0 @ X0))),
% 0.21/0.49      inference('sup-', [status(thm)], ['21', '25'])).
% 0.21/0.49  thf('27', plain,
% 0.21/0.49      (~ (zip_tseitin_0 @ (k1_funct_1 @ sk_D @ sk_C) @ sk_B @ sk_B @ sk_B)),
% 0.21/0.49      inference('sup-', [status(thm)], ['20', '26'])).
% 0.21/0.49  thf('28', plain,
% 0.21/0.49      ((((k1_funct_1 @ sk_D @ sk_C) = (sk_B))
% 0.21/0.49        | ((k1_funct_1 @ sk_D @ sk_C) = (sk_B))
% 0.21/0.49        | ((k1_funct_1 @ sk_D @ sk_C) = (sk_B)))),
% 0.21/0.49      inference('sup-', [status(thm)], ['0', '27'])).
% 0.21/0.49  thf('29', plain, (((k1_funct_1 @ sk_D @ sk_C) = (sk_B))),
% 0.21/0.49      inference('simplify', [status(thm)], ['28'])).
% 0.21/0.49  thf('30', plain, (((k1_funct_1 @ sk_D @ sk_C) != (sk_B))),
% 0.21/0.49      inference('cnf', [status(esa)], [zf_stmt_1])).
% 0.21/0.49  thf('31', plain, ($false),
% 0.21/0.49      inference('simplify_reflect-', [status(thm)], ['29', '30'])).
% 0.21/0.49  
% 0.21/0.49  % SZS output end Refutation
% 0.21/0.49  
% 0.21/0.50  % Zipperpin 1.5 exiting
%------------------------------------------------------------------------------
