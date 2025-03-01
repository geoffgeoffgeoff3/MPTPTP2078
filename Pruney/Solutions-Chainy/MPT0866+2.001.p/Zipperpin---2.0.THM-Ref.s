%------------------------------------------------------------------------------
% File       : Zipperpin---2.0
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_portfolio.sh /export/starexec/sandbox2/benchmark/theBenchmark.p /export/starexec/sandbox2/tmp/tmp.4PhqC3cl4E

% Computer   : n021.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 13:51:11 EST 2020

% Result     : Theorem 0.20s
% Output     : Refutation 0.20s
% Verified   : 
% Statistics : Number of formulae       :   57 (  74 expanded)
%              Number of leaves         :   23 (  32 expanded)
%              Depth                    :   14
%              Number of atoms          :  398 ( 630 expanded)
%              Number of equality atoms :   54 (  91 expanded)
%              Maximal formula depth    :   15 (   6 average)

% Comments   : 
%------------------------------------------------------------------------------
thf(sk_A_type,type,(
    sk_A: $i )).

thf(k1_tarski_type,type,(
    k1_tarski: $i > $i )).

thf(k2_zfmisc_1_type,type,(
    k2_zfmisc_1: $i > $i > $i )).

thf(k4_tarski_type,type,(
    k4_tarski: $i > $i > $i )).

thf(sk_F_type,type,(
    sk_F: $i > $i > $i > $i )).

thf(sk_B_1_type,type,(
    sk_B_1: $i )).

thf(v1_relat_1_type,type,(
    v1_relat_1: $i > $o )).

thf(k2_mcart_1_type,type,(
    k2_mcart_1: $i > $i )).

thf(k1_mcart_1_type,type,(
    k1_mcart_1: $i > $i )).

thf(m1_subset_1_type,type,(
    m1_subset_1: $i > $i > $o )).

thf(sk_B_type,type,(
    sk_B: $i > $i )).

thf(sk_E_type,type,(
    sk_E: $i > $i > $i > $i )).

thf(r2_hidden_type,type,(
    r2_hidden: $i > $i > $o )).

thf(k1_xboole_0_type,type,(
    k1_xboole_0: $i )).

thf(k1_zfmisc_1_type,type,(
    k1_zfmisc_1: $i > $i )).

thf(sk_C_2_type,type,(
    sk_C_2: $i )).

thf(d1_tarski,axiom,(
    ! [A: $i,B: $i] :
      ( ( B
        = ( k1_tarski @ A ) )
    <=> ! [C: $i] :
          ( ( r2_hidden @ C @ B )
        <=> ( C = A ) ) ) )).

thf('0',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( ( X1 != X0 )
      | ( r2_hidden @ X1 @ X2 )
      | ( X2
       != ( k1_tarski @ X0 ) ) ) ),
    inference(cnf,[status(esa)],[d1_tarski])).

thf('1',plain,(
    ! [X0: $i] :
      ( r2_hidden @ X0 @ ( k1_tarski @ X0 ) ) ),
    inference(simplify,[status(thm)],['0'])).

thf(t24_mcart_1,conjecture,(
    ! [A: $i,B: $i] :
      ~ ( ( A != k1_xboole_0 )
        & ( B != k1_xboole_0 )
        & ~ ! [C: $i] :
              ( ( m1_subset_1 @ C @ ( k2_zfmisc_1 @ A @ B ) )
             => ( C
                = ( k4_tarski @ ( k1_mcart_1 @ C ) @ ( k2_mcart_1 @ C ) ) ) ) ) )).

thf(zf_stmt_0,negated_conjecture,(
    ~ ! [A: $i,B: $i] :
        ~ ( ( A != k1_xboole_0 )
          & ( B != k1_xboole_0 )
          & ~ ! [C: $i] :
                ( ( m1_subset_1 @ C @ ( k2_zfmisc_1 @ A @ B ) )
               => ( C
                  = ( k4_tarski @ ( k1_mcart_1 @ C ) @ ( k2_mcart_1 @ C ) ) ) ) ) ),
    inference('cnf.neg',[status(esa)],[t24_mcart_1])).

thf('2',plain,(
    m1_subset_1 @ sk_C_2 @ ( k2_zfmisc_1 @ sk_A @ sk_B_1 ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(t55_subset_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( m1_subset_1 @ B @ A )
     => ( ( A != k1_xboole_0 )
       => ( m1_subset_1 @ ( k1_tarski @ B ) @ ( k1_zfmisc_1 @ A ) ) ) ) )).

thf('3',plain,(
    ! [X8: $i,X9: $i] :
      ( ( X8 = k1_xboole_0 )
      | ~ ( m1_subset_1 @ X9 @ X8 )
      | ( m1_subset_1 @ ( k1_tarski @ X9 ) @ ( k1_zfmisc_1 @ X8 ) ) ) ),
    inference(cnf,[status(esa)],[t55_subset_1])).

thf('4',plain,
    ( ( m1_subset_1 @ ( k1_tarski @ sk_C_2 ) @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_A @ sk_B_1 ) ) )
    | ( ( k2_zfmisc_1 @ sk_A @ sk_B_1 )
      = k1_xboole_0 ) ),
    inference('sup-',[status(thm)],['2','3'])).

thf(t6_relset_1,axiom,(
    ! [A: $i,B: $i,C: $i,D: $i] :
      ( ( m1_subset_1 @ D @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ B @ C ) ) )
     => ~ ( ( r2_hidden @ A @ D )
          & ! [E: $i,F: $i] :
              ~ ( ( A
                  = ( k4_tarski @ E @ F ) )
                & ( r2_hidden @ E @ B )
                & ( r2_hidden @ F @ C ) ) ) ) )).

thf('5',plain,(
    ! [X15: $i,X16: $i,X17: $i,X18: $i] :
      ( ( X17
        = ( k4_tarski @ ( sk_E @ X15 @ X16 @ X17 ) @ ( sk_F @ X15 @ X16 @ X17 ) ) )
      | ~ ( m1_subset_1 @ X18 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X16 @ X15 ) ) )
      | ~ ( r2_hidden @ X17 @ X18 ) ) ),
    inference(cnf,[status(esa)],[t6_relset_1])).

thf('6',plain,(
    ! [X0: $i] :
      ( ( ( k2_zfmisc_1 @ sk_A @ sk_B_1 )
        = k1_xboole_0 )
      | ~ ( r2_hidden @ X0 @ ( k1_tarski @ sk_C_2 ) )
      | ( X0
        = ( k4_tarski @ ( sk_E @ sk_B_1 @ sk_A @ X0 ) @ ( sk_F @ sk_B_1 @ sk_A @ X0 ) ) ) ) ),
    inference('sup-',[status(thm)],['4','5'])).

thf('7',plain,
    ( ( sk_C_2
      = ( k4_tarski @ ( sk_E @ sk_B_1 @ sk_A @ sk_C_2 ) @ ( sk_F @ sk_B_1 @ sk_A @ sk_C_2 ) ) )
    | ( ( k2_zfmisc_1 @ sk_A @ sk_B_1 )
      = k1_xboole_0 ) ),
    inference('sup-',[status(thm)],['1','6'])).

thf(d1_relat_1,axiom,(
    ! [A: $i] :
      ( ( v1_relat_1 @ A )
    <=> ! [B: $i] :
          ~ ( ( r2_hidden @ B @ A )
            & ! [C: $i,D: $i] :
                ( B
               != ( k4_tarski @ C @ D ) ) ) ) )).

thf('8',plain,(
    ! [X12: $i] :
      ( ( v1_relat_1 @ X12 )
      | ( r2_hidden @ ( sk_B @ X12 ) @ X12 ) ) ),
    inference(cnf,[status(esa)],[d1_relat_1])).

thf('9',plain,(
    ! [X0: $i,X2: $i,X3: $i] :
      ( ~ ( r2_hidden @ X3 @ X2 )
      | ( X3 = X0 )
      | ( X2
       != ( k1_tarski @ X0 ) ) ) ),
    inference(cnf,[status(esa)],[d1_tarski])).

thf('10',plain,(
    ! [X0: $i,X3: $i] :
      ( ( X3 = X0 )
      | ~ ( r2_hidden @ X3 @ ( k1_tarski @ X0 ) ) ) ),
    inference(simplify,[status(thm)],['9'])).

thf('11',plain,(
    ! [X0: $i] :
      ( ( v1_relat_1 @ ( k1_tarski @ X0 ) )
      | ( ( sk_B @ ( k1_tarski @ X0 ) )
        = X0 ) ) ),
    inference('sup-',[status(thm)],['8','10'])).

thf('12',plain,(
    ! [X0: $i] :
      ( r2_hidden @ X0 @ ( k1_tarski @ X0 ) ) ),
    inference(simplify,[status(thm)],['0'])).

thf(t23_mcart_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( v1_relat_1 @ B )
     => ( ( r2_hidden @ A @ B )
       => ( A
          = ( k4_tarski @ ( k1_mcart_1 @ A ) @ ( k2_mcart_1 @ A ) ) ) ) ) )).

thf('13',plain,(
    ! [X19: $i,X20: $i] :
      ( ( X19
        = ( k4_tarski @ ( k1_mcart_1 @ X19 ) @ ( k2_mcart_1 @ X19 ) ) )
      | ~ ( v1_relat_1 @ X20 )
      | ~ ( r2_hidden @ X19 @ X20 ) ) ),
    inference(cnf,[status(esa)],[t23_mcart_1])).

thf('14',plain,(
    ! [X0: $i] :
      ( ~ ( v1_relat_1 @ ( k1_tarski @ X0 ) )
      | ( X0
        = ( k4_tarski @ ( k1_mcart_1 @ X0 ) @ ( k2_mcart_1 @ X0 ) ) ) ) ),
    inference('sup-',[status(thm)],['12','13'])).

thf('15',plain,(
    ! [X0: $i] :
      ( ( ( sk_B @ ( k1_tarski @ X0 ) )
        = X0 )
      | ( X0
        = ( k4_tarski @ ( k1_mcart_1 @ X0 ) @ ( k2_mcart_1 @ X0 ) ) ) ) ),
    inference('sup-',[status(thm)],['11','14'])).

thf('16',plain,(
    sk_C_2
 != ( k4_tarski @ ( k1_mcart_1 @ sk_C_2 ) @ ( k2_mcart_1 @ sk_C_2 ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('17',plain,
    ( ( sk_C_2 != sk_C_2 )
    | ( ( sk_B @ ( k1_tarski @ sk_C_2 ) )
      = sk_C_2 ) ),
    inference('sup-',[status(thm)],['15','16'])).

thf('18',plain,
    ( ( sk_B @ ( k1_tarski @ sk_C_2 ) )
    = sk_C_2 ),
    inference(simplify,[status(thm)],['17'])).

thf('19',plain,(
    ! [X12: $i,X13: $i,X14: $i] :
      ( ( v1_relat_1 @ X12 )
      | ( ( sk_B @ X12 )
       != ( k4_tarski @ X13 @ X14 ) ) ) ),
    inference(cnf,[status(esa)],[d1_relat_1])).

thf('20',plain,(
    ! [X0: $i,X1: $i] :
      ( ( sk_C_2
       != ( k4_tarski @ X1 @ X0 ) )
      | ( v1_relat_1 @ ( k1_tarski @ sk_C_2 ) ) ) ),
    inference('sup-',[status(thm)],['18','19'])).

thf('21',plain,
    ( ( sk_C_2 != sk_C_2 )
    | ( ( k2_zfmisc_1 @ sk_A @ sk_B_1 )
      = k1_xboole_0 )
    | ( v1_relat_1 @ ( k1_tarski @ sk_C_2 ) ) ),
    inference('sup-',[status(thm)],['7','20'])).

thf('22',plain,
    ( ( v1_relat_1 @ ( k1_tarski @ sk_C_2 ) )
    | ( ( k2_zfmisc_1 @ sk_A @ sk_B_1 )
      = k1_xboole_0 ) ),
    inference(simplify,[status(thm)],['21'])).

thf(t113_zfmisc_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( ( k2_zfmisc_1 @ A @ B )
        = k1_xboole_0 )
    <=> ( ( A = k1_xboole_0 )
        | ( B = k1_xboole_0 ) ) ) )).

thf('23',plain,(
    ! [X5: $i,X6: $i] :
      ( ( X5 = k1_xboole_0 )
      | ( X6 = k1_xboole_0 )
      | ( ( k2_zfmisc_1 @ X6 @ X5 )
       != k1_xboole_0 ) ) ),
    inference(cnf,[status(esa)],[t113_zfmisc_1])).

thf('24',plain,
    ( ( k1_xboole_0 != k1_xboole_0 )
    | ( v1_relat_1 @ ( k1_tarski @ sk_C_2 ) )
    | ( sk_A = k1_xboole_0 )
    | ( sk_B_1 = k1_xboole_0 ) ),
    inference('sup-',[status(thm)],['22','23'])).

thf('25',plain,
    ( ( sk_B_1 = k1_xboole_0 )
    | ( sk_A = k1_xboole_0 )
    | ( v1_relat_1 @ ( k1_tarski @ sk_C_2 ) ) ),
    inference(simplify,[status(thm)],['24'])).

thf('26',plain,(
    sk_A != k1_xboole_0 ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('27',plain,(
    sk_B_1 != k1_xboole_0 ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('28',plain,(
    v1_relat_1 @ ( k1_tarski @ sk_C_2 ) ),
    inference('simplify_reflect-',[status(thm)],['25','26','27'])).

thf('29',plain,(
    ! [X0: $i] :
      ( ~ ( v1_relat_1 @ ( k1_tarski @ X0 ) )
      | ( X0
        = ( k4_tarski @ ( k1_mcart_1 @ X0 ) @ ( k2_mcart_1 @ X0 ) ) ) ) ),
    inference('sup-',[status(thm)],['12','13'])).

thf('30',plain,
    ( sk_C_2
    = ( k4_tarski @ ( k1_mcart_1 @ sk_C_2 ) @ ( k2_mcart_1 @ sk_C_2 ) ) ),
    inference('sup-',[status(thm)],['28','29'])).

thf('31',plain,(
    sk_C_2
 != ( k4_tarski @ ( k1_mcart_1 @ sk_C_2 ) @ ( k2_mcart_1 @ sk_C_2 ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('32',plain,(
    $false ),
    inference('simplify_reflect-',[status(thm)],['30','31'])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.00/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.12/0.13  % Command    : run_portfolio.sh /export/starexec/sandbox2/benchmark/theBenchmark.p /export/starexec/sandbox2/tmp/tmp.4PhqC3cl4E
% 0.12/0.34  % Computer   : n021.cluster.edu
% 0.12/0.34  % Model      : x86_64 x86_64
% 0.12/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.12/0.34  % Memory     : 8042.1875MB
% 0.12/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.19/0.34  % CPULimit   : 60
% 0.19/0.34  % DateTime   : Tue Dec  1 11:20:49 EST 2020
% 0.19/0.34  % CPUTime    : 
% 0.19/0.34  % Running portfolio for 600 s
% 0.19/0.34  % File         : /export/starexec/sandbox2/benchmark/theBenchmark.p
% 0.19/0.34  % Number of cores: 8
% 0.19/0.34  % Python version: Python 3.6.8
% 0.19/0.35  % Running in FO mode
% 0.20/0.49  % Running /export/starexec/sandbox2/solver/bin/fo/fo7.sh for 78
% 0.20/0.49  % Solved by: fo/fo7.sh
% 0.20/0.49  To remain in the chosen logic fragment, unification with booleans has been disabled.
% 0.20/0.49  % done 60 iterations in 0.039s
% 0.20/0.49  % SZS status Theorem for '/export/starexec/sandbox2/benchmark/theBenchmark.p'
% 0.20/0.49  % SZS output start Refutation
% 0.20/0.49  thf(sk_A_type, type, sk_A: $i).
% 0.20/0.49  thf(k1_tarski_type, type, k1_tarski: $i > $i).
% 0.20/0.49  thf(k2_zfmisc_1_type, type, k2_zfmisc_1: $i > $i > $i).
% 0.20/0.49  thf(k4_tarski_type, type, k4_tarski: $i > $i > $i).
% 0.20/0.49  thf(sk_F_type, type, sk_F: $i > $i > $i > $i).
% 0.20/0.49  thf(sk_B_1_type, type, sk_B_1: $i).
% 0.20/0.49  thf(v1_relat_1_type, type, v1_relat_1: $i > $o).
% 0.20/0.49  thf(k2_mcart_1_type, type, k2_mcart_1: $i > $i).
% 0.20/0.49  thf(k1_mcart_1_type, type, k1_mcart_1: $i > $i).
% 0.20/0.49  thf(m1_subset_1_type, type, m1_subset_1: $i > $i > $o).
% 0.20/0.49  thf(sk_B_type, type, sk_B: $i > $i).
% 0.20/0.49  thf(sk_E_type, type, sk_E: $i > $i > $i > $i).
% 0.20/0.49  thf(r2_hidden_type, type, r2_hidden: $i > $i > $o).
% 0.20/0.49  thf(k1_xboole_0_type, type, k1_xboole_0: $i).
% 0.20/0.49  thf(k1_zfmisc_1_type, type, k1_zfmisc_1: $i > $i).
% 0.20/0.49  thf(sk_C_2_type, type, sk_C_2: $i).
% 0.20/0.49  thf(d1_tarski, axiom,
% 0.20/0.49    (![A:$i,B:$i]:
% 0.20/0.49     ( ( ( B ) = ( k1_tarski @ A ) ) <=>
% 0.20/0.49       ( ![C:$i]: ( ( r2_hidden @ C @ B ) <=> ( ( C ) = ( A ) ) ) ) ))).
% 0.20/0.49  thf('0', plain,
% 0.20/0.49      (![X0 : $i, X1 : $i, X2 : $i]:
% 0.20/0.49         (((X1) != (X0)) | (r2_hidden @ X1 @ X2) | ((X2) != (k1_tarski @ X0)))),
% 0.20/0.49      inference('cnf', [status(esa)], [d1_tarski])).
% 0.20/0.49  thf('1', plain, (![X0 : $i]: (r2_hidden @ X0 @ (k1_tarski @ X0))),
% 0.20/0.49      inference('simplify', [status(thm)], ['0'])).
% 0.20/0.49  thf(t24_mcart_1, conjecture,
% 0.20/0.49    (![A:$i,B:$i]:
% 0.20/0.49     ( ~( ( ( A ) != ( k1_xboole_0 ) ) & ( ( B ) != ( k1_xboole_0 ) ) & 
% 0.20/0.49          ( ~( ![C:$i]:
% 0.20/0.49               ( ( m1_subset_1 @ C @ ( k2_zfmisc_1 @ A @ B ) ) =>
% 0.20/0.49                 ( ( C ) =
% 0.20/0.49                   ( k4_tarski @ ( k1_mcart_1 @ C ) @ ( k2_mcart_1 @ C ) ) ) ) ) ) ) ))).
% 0.20/0.49  thf(zf_stmt_0, negated_conjecture,
% 0.20/0.49    (~( ![A:$i,B:$i]:
% 0.20/0.49        ( ~( ( ( A ) != ( k1_xboole_0 ) ) & ( ( B ) != ( k1_xboole_0 ) ) & 
% 0.20/0.49             ( ~( ![C:$i]:
% 0.20/0.49                  ( ( m1_subset_1 @ C @ ( k2_zfmisc_1 @ A @ B ) ) =>
% 0.20/0.49                    ( ( C ) =
% 0.20/0.49                      ( k4_tarski @ ( k1_mcart_1 @ C ) @ ( k2_mcart_1 @ C ) ) ) ) ) ) ) ) )),
% 0.20/0.49    inference('cnf.neg', [status(esa)], [t24_mcart_1])).
% 0.20/0.49  thf('2', plain, ((m1_subset_1 @ sk_C_2 @ (k2_zfmisc_1 @ sk_A @ sk_B_1))),
% 0.20/0.49      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.49  thf(t55_subset_1, axiom,
% 0.20/0.49    (![A:$i,B:$i]:
% 0.20/0.49     ( ( m1_subset_1 @ B @ A ) =>
% 0.20/0.49       ( ( ( A ) != ( k1_xboole_0 ) ) =>
% 0.20/0.49         ( m1_subset_1 @ ( k1_tarski @ B ) @ ( k1_zfmisc_1 @ A ) ) ) ))).
% 0.20/0.49  thf('3', plain,
% 0.20/0.49      (![X8 : $i, X9 : $i]:
% 0.20/0.49         (((X8) = (k1_xboole_0))
% 0.20/0.49          | ~ (m1_subset_1 @ X9 @ X8)
% 0.20/0.49          | (m1_subset_1 @ (k1_tarski @ X9) @ (k1_zfmisc_1 @ X8)))),
% 0.20/0.49      inference('cnf', [status(esa)], [t55_subset_1])).
% 0.20/0.49  thf('4', plain,
% 0.20/0.49      (((m1_subset_1 @ (k1_tarski @ sk_C_2) @ 
% 0.20/0.49         (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_A @ sk_B_1)))
% 0.20/0.49        | ((k2_zfmisc_1 @ sk_A @ sk_B_1) = (k1_xboole_0)))),
% 0.20/0.49      inference('sup-', [status(thm)], ['2', '3'])).
% 0.20/0.49  thf(t6_relset_1, axiom,
% 0.20/0.49    (![A:$i,B:$i,C:$i,D:$i]:
% 0.20/0.49     ( ( m1_subset_1 @ D @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ B @ C ) ) ) =>
% 0.20/0.49       ( ~( ( r2_hidden @ A @ D ) & 
% 0.20/0.49            ( ![E:$i,F:$i]:
% 0.20/0.49              ( ~( ( ( A ) = ( k4_tarski @ E @ F ) ) & ( r2_hidden @ E @ B ) & 
% 0.20/0.49                   ( r2_hidden @ F @ C ) ) ) ) ) ) ))).
% 0.20/0.49  thf('5', plain,
% 0.20/0.49      (![X15 : $i, X16 : $i, X17 : $i, X18 : $i]:
% 0.20/0.49         (((X17)
% 0.20/0.49            = (k4_tarski @ (sk_E @ X15 @ X16 @ X17) @ (sk_F @ X15 @ X16 @ X17)))
% 0.20/0.49          | ~ (m1_subset_1 @ X18 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X16 @ X15)))
% 0.20/0.49          | ~ (r2_hidden @ X17 @ X18))),
% 0.20/0.49      inference('cnf', [status(esa)], [t6_relset_1])).
% 0.20/0.49  thf('6', plain,
% 0.20/0.49      (![X0 : $i]:
% 0.20/0.49         (((k2_zfmisc_1 @ sk_A @ sk_B_1) = (k1_xboole_0))
% 0.20/0.49          | ~ (r2_hidden @ X0 @ (k1_tarski @ sk_C_2))
% 0.20/0.49          | ((X0)
% 0.20/0.49              = (k4_tarski @ (sk_E @ sk_B_1 @ sk_A @ X0) @ 
% 0.20/0.49                 (sk_F @ sk_B_1 @ sk_A @ X0))))),
% 0.20/0.49      inference('sup-', [status(thm)], ['4', '5'])).
% 0.20/0.49  thf('7', plain,
% 0.20/0.49      ((((sk_C_2)
% 0.20/0.49          = (k4_tarski @ (sk_E @ sk_B_1 @ sk_A @ sk_C_2) @ 
% 0.20/0.49             (sk_F @ sk_B_1 @ sk_A @ sk_C_2)))
% 0.20/0.49        | ((k2_zfmisc_1 @ sk_A @ sk_B_1) = (k1_xboole_0)))),
% 0.20/0.49      inference('sup-', [status(thm)], ['1', '6'])).
% 0.20/0.49  thf(d1_relat_1, axiom,
% 0.20/0.49    (![A:$i]:
% 0.20/0.49     ( ( v1_relat_1 @ A ) <=>
% 0.20/0.49       ( ![B:$i]:
% 0.20/0.49         ( ~( ( r2_hidden @ B @ A ) & 
% 0.20/0.49              ( ![C:$i,D:$i]: ( ( B ) != ( k4_tarski @ C @ D ) ) ) ) ) ) ))).
% 0.20/0.49  thf('8', plain,
% 0.20/0.49      (![X12 : $i]: ((v1_relat_1 @ X12) | (r2_hidden @ (sk_B @ X12) @ X12))),
% 0.20/0.49      inference('cnf', [status(esa)], [d1_relat_1])).
% 0.20/0.49  thf('9', plain,
% 0.20/0.49      (![X0 : $i, X2 : $i, X3 : $i]:
% 0.20/0.49         (~ (r2_hidden @ X3 @ X2) | ((X3) = (X0)) | ((X2) != (k1_tarski @ X0)))),
% 0.20/0.49      inference('cnf', [status(esa)], [d1_tarski])).
% 0.20/0.49  thf('10', plain,
% 0.20/0.49      (![X0 : $i, X3 : $i]:
% 0.20/0.49         (((X3) = (X0)) | ~ (r2_hidden @ X3 @ (k1_tarski @ X0)))),
% 0.20/0.49      inference('simplify', [status(thm)], ['9'])).
% 0.20/0.49  thf('11', plain,
% 0.20/0.49      (![X0 : $i]:
% 0.20/0.49         ((v1_relat_1 @ (k1_tarski @ X0)) | ((sk_B @ (k1_tarski @ X0)) = (X0)))),
% 0.20/0.49      inference('sup-', [status(thm)], ['8', '10'])).
% 0.20/0.49  thf('12', plain, (![X0 : $i]: (r2_hidden @ X0 @ (k1_tarski @ X0))),
% 0.20/0.49      inference('simplify', [status(thm)], ['0'])).
% 0.20/0.49  thf(t23_mcart_1, axiom,
% 0.20/0.49    (![A:$i,B:$i]:
% 0.20/0.49     ( ( v1_relat_1 @ B ) =>
% 0.20/0.49       ( ( r2_hidden @ A @ B ) =>
% 0.20/0.49         ( ( A ) = ( k4_tarski @ ( k1_mcart_1 @ A ) @ ( k2_mcart_1 @ A ) ) ) ) ))).
% 0.20/0.49  thf('13', plain,
% 0.20/0.49      (![X19 : $i, X20 : $i]:
% 0.20/0.49         (((X19) = (k4_tarski @ (k1_mcart_1 @ X19) @ (k2_mcart_1 @ X19)))
% 0.20/0.49          | ~ (v1_relat_1 @ X20)
% 0.20/0.49          | ~ (r2_hidden @ X19 @ X20))),
% 0.20/0.49      inference('cnf', [status(esa)], [t23_mcart_1])).
% 0.20/0.49  thf('14', plain,
% 0.20/0.49      (![X0 : $i]:
% 0.20/0.49         (~ (v1_relat_1 @ (k1_tarski @ X0))
% 0.20/0.49          | ((X0) = (k4_tarski @ (k1_mcart_1 @ X0) @ (k2_mcart_1 @ X0))))),
% 0.20/0.49      inference('sup-', [status(thm)], ['12', '13'])).
% 0.20/0.49  thf('15', plain,
% 0.20/0.49      (![X0 : $i]:
% 0.20/0.49         (((sk_B @ (k1_tarski @ X0)) = (X0))
% 0.20/0.49          | ((X0) = (k4_tarski @ (k1_mcart_1 @ X0) @ (k2_mcart_1 @ X0))))),
% 0.20/0.49      inference('sup-', [status(thm)], ['11', '14'])).
% 0.20/0.49  thf('16', plain,
% 0.20/0.49      (((sk_C_2) != (k4_tarski @ (k1_mcart_1 @ sk_C_2) @ (k2_mcart_1 @ sk_C_2)))),
% 0.20/0.49      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.49  thf('17', plain,
% 0.20/0.49      ((((sk_C_2) != (sk_C_2)) | ((sk_B @ (k1_tarski @ sk_C_2)) = (sk_C_2)))),
% 0.20/0.49      inference('sup-', [status(thm)], ['15', '16'])).
% 0.20/0.49  thf('18', plain, (((sk_B @ (k1_tarski @ sk_C_2)) = (sk_C_2))),
% 0.20/0.49      inference('simplify', [status(thm)], ['17'])).
% 0.20/0.49  thf('19', plain,
% 0.20/0.49      (![X12 : $i, X13 : $i, X14 : $i]:
% 0.20/0.49         ((v1_relat_1 @ X12) | ((sk_B @ X12) != (k4_tarski @ X13 @ X14)))),
% 0.20/0.49      inference('cnf', [status(esa)], [d1_relat_1])).
% 0.20/0.49  thf('20', plain,
% 0.20/0.49      (![X0 : $i, X1 : $i]:
% 0.20/0.49         (((sk_C_2) != (k4_tarski @ X1 @ X0))
% 0.20/0.49          | (v1_relat_1 @ (k1_tarski @ sk_C_2)))),
% 0.20/0.49      inference('sup-', [status(thm)], ['18', '19'])).
% 0.20/0.49  thf('21', plain,
% 0.20/0.49      ((((sk_C_2) != (sk_C_2))
% 0.20/0.49        | ((k2_zfmisc_1 @ sk_A @ sk_B_1) = (k1_xboole_0))
% 0.20/0.49        | (v1_relat_1 @ (k1_tarski @ sk_C_2)))),
% 0.20/0.49      inference('sup-', [status(thm)], ['7', '20'])).
% 0.20/0.49  thf('22', plain,
% 0.20/0.49      (((v1_relat_1 @ (k1_tarski @ sk_C_2))
% 0.20/0.49        | ((k2_zfmisc_1 @ sk_A @ sk_B_1) = (k1_xboole_0)))),
% 0.20/0.49      inference('simplify', [status(thm)], ['21'])).
% 0.20/0.49  thf(t113_zfmisc_1, axiom,
% 0.20/0.49    (![A:$i,B:$i]:
% 0.20/0.49     ( ( ( k2_zfmisc_1 @ A @ B ) = ( k1_xboole_0 ) ) <=>
% 0.20/0.49       ( ( ( A ) = ( k1_xboole_0 ) ) | ( ( B ) = ( k1_xboole_0 ) ) ) ))).
% 0.20/0.49  thf('23', plain,
% 0.20/0.49      (![X5 : $i, X6 : $i]:
% 0.20/0.49         (((X5) = (k1_xboole_0))
% 0.20/0.49          | ((X6) = (k1_xboole_0))
% 0.20/0.49          | ((k2_zfmisc_1 @ X6 @ X5) != (k1_xboole_0)))),
% 0.20/0.49      inference('cnf', [status(esa)], [t113_zfmisc_1])).
% 0.20/0.49  thf('24', plain,
% 0.20/0.49      ((((k1_xboole_0) != (k1_xboole_0))
% 0.20/0.49        | (v1_relat_1 @ (k1_tarski @ sk_C_2))
% 0.20/0.49        | ((sk_A) = (k1_xboole_0))
% 0.20/0.49        | ((sk_B_1) = (k1_xboole_0)))),
% 0.20/0.49      inference('sup-', [status(thm)], ['22', '23'])).
% 0.20/0.49  thf('25', plain,
% 0.20/0.49      ((((sk_B_1) = (k1_xboole_0))
% 0.20/0.49        | ((sk_A) = (k1_xboole_0))
% 0.20/0.49        | (v1_relat_1 @ (k1_tarski @ sk_C_2)))),
% 0.20/0.49      inference('simplify', [status(thm)], ['24'])).
% 0.20/0.49  thf('26', plain, (((sk_A) != (k1_xboole_0))),
% 0.20/0.49      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.49  thf('27', plain, (((sk_B_1) != (k1_xboole_0))),
% 0.20/0.49      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.49  thf('28', plain, ((v1_relat_1 @ (k1_tarski @ sk_C_2))),
% 0.20/0.49      inference('simplify_reflect-', [status(thm)], ['25', '26', '27'])).
% 0.20/0.49  thf('29', plain,
% 0.20/0.49      (![X0 : $i]:
% 0.20/0.49         (~ (v1_relat_1 @ (k1_tarski @ X0))
% 0.20/0.49          | ((X0) = (k4_tarski @ (k1_mcart_1 @ X0) @ (k2_mcart_1 @ X0))))),
% 0.20/0.49      inference('sup-', [status(thm)], ['12', '13'])).
% 0.20/0.49  thf('30', plain,
% 0.20/0.49      (((sk_C_2) = (k4_tarski @ (k1_mcart_1 @ sk_C_2) @ (k2_mcart_1 @ sk_C_2)))),
% 0.20/0.49      inference('sup-', [status(thm)], ['28', '29'])).
% 0.20/0.49  thf('31', plain,
% 0.20/0.49      (((sk_C_2) != (k4_tarski @ (k1_mcart_1 @ sk_C_2) @ (k2_mcart_1 @ sk_C_2)))),
% 0.20/0.49      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.49  thf('32', plain, ($false),
% 0.20/0.49      inference('simplify_reflect-', [status(thm)], ['30', '31'])).
% 0.20/0.49  
% 0.20/0.49  % SZS output end Refutation
% 0.20/0.49  
% 0.20/0.50  % Zipperpin 1.5 exiting
%------------------------------------------------------------------------------
