%------------------------------------------------------------------------------
% File       : Zipperpin---2.0
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_portfolio.sh /export/starexec/sandbox/benchmark/theBenchmark.p /export/starexec/sandbox/tmp/tmp.OdihnhZL5x

% Computer   : n012.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 13:59:20 EST 2020

% Result     : Theorem 0.20s
% Output     : Refutation 0.20s
% Verified   : 
% Statistics : Number of formulae       :   75 ( 311 expanded)
%              Number of leaves         :   17 (  89 expanded)
%              Depth                    :   15
%              Number of atoms          :  536 (4902 expanded)
%              Number of equality atoms :   55 ( 506 expanded)
%              Maximal formula depth    :   14 (   5 average)

% Comments   : 
%------------------------------------------------------------------------------
thf(k1_zfmisc_1_type,type,(
    k1_zfmisc_1: $i > $i )).

thf(sk_B_type,type,(
    sk_B: $i )).

thf(k1_xboole_0_type,type,(
    k1_xboole_0: $i )).

thf(v1_funct_1_type,type,(
    v1_funct_1: $i > $o )).

thf(k3_partfun1_type,type,(
    k3_partfun1: $i > $i > $i > $i )).

thf(v1_partfun1_type,type,(
    v1_partfun1: $i > $i > $o )).

thf(v1_funct_2_type,type,(
    v1_funct_2: $i > $i > $i > $o )).

thf(sk_A_type,type,(
    sk_A: $i )).

thf(m1_subset_1_type,type,(
    m1_subset_1: $i > $i > $o )).

thf(sk_C_type,type,(
    sk_C: $i )).

thf(k2_zfmisc_1_type,type,(
    k2_zfmisc_1: $i > $i > $i )).

thf(k1_tarski_type,type,(
    k1_tarski: $i > $i )).

thf(k5_partfun1_type,type,(
    k5_partfun1: $i > $i > $i > $i )).

thf(t161_funct_2,conjecture,(
    ! [A: $i,B: $i,C: $i] :
      ( ( ( v1_funct_1 @ C )
        & ( v1_funct_2 @ C @ A @ B )
        & ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) )
     => ( ( ( B = k1_xboole_0 )
         => ( A = k1_xboole_0 ) )
       => ( ( k5_partfun1 @ A @ B @ ( k3_partfun1 @ C @ A @ B ) )
          = ( k1_tarski @ C ) ) ) ) )).

thf(zf_stmt_0,negated_conjecture,(
    ~ ! [A: $i,B: $i,C: $i] :
        ( ( ( v1_funct_1 @ C )
          & ( v1_funct_2 @ C @ A @ B )
          & ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) )
       => ( ( ( B = k1_xboole_0 )
           => ( A = k1_xboole_0 ) )
         => ( ( k5_partfun1 @ A @ B @ ( k3_partfun1 @ C @ A @ B ) )
            = ( k1_tarski @ C ) ) ) ) ),
    inference('cnf.neg',[status(esa)],[t161_funct_2])).

thf('0',plain,
    ( ( sk_A = k1_xboole_0 )
    | ( sk_B != k1_xboole_0 ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('1',plain,
    ( ( sk_A = k1_xboole_0 )
   <= ( sk_A = k1_xboole_0 ) ),
    inference(split,[status(esa)],['0'])).

thf('2',plain,(
    m1_subset_1 @ sk_C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_A @ sk_B ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('3',plain,
    ( ( m1_subset_1 @ sk_C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ k1_xboole_0 @ sk_B ) ) )
   <= ( sk_A = k1_xboole_0 ) ),
    inference('sup+',[status(thm)],['1','2'])).

thf(t174_partfun1,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( ( v1_funct_1 @ C )
        & ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) )
     => ( ( v1_partfun1 @ C @ A )
      <=> ( ( k5_partfun1 @ A @ B @ C )
          = ( k1_tarski @ C ) ) ) ) )).

thf('4',plain,(
    ! [X3: $i,X4: $i,X5: $i] :
      ( ~ ( v1_partfun1 @ X3 @ X4 )
      | ( ( k5_partfun1 @ X4 @ X5 @ X3 )
        = ( k1_tarski @ X3 ) )
      | ~ ( m1_subset_1 @ X3 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X4 @ X5 ) ) )
      | ~ ( v1_funct_1 @ X3 ) ) ),
    inference(cnf,[status(esa)],[t174_partfun1])).

thf('5',plain,
    ( ( ~ ( v1_funct_1 @ sk_C )
      | ( ( k5_partfun1 @ k1_xboole_0 @ sk_B @ sk_C )
        = ( k1_tarski @ sk_C ) )
      | ~ ( v1_partfun1 @ sk_C @ k1_xboole_0 ) )
   <= ( sk_A = k1_xboole_0 ) ),
    inference('sup-',[status(thm)],['3','4'])).

thf('6',plain,(
    v1_funct_1 @ sk_C ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('7',plain,
    ( ( ( ( k5_partfun1 @ k1_xboole_0 @ sk_B @ sk_C )
        = ( k1_tarski @ sk_C ) )
      | ~ ( v1_partfun1 @ sk_C @ k1_xboole_0 ) )
   <= ( sk_A = k1_xboole_0 ) ),
    inference(demod,[status(thm)],['5','6'])).

thf('8',plain,
    ( ( sk_A = k1_xboole_0 )
   <= ( sk_A = k1_xboole_0 ) ),
    inference(split,[status(esa)],['0'])).

thf('9',plain,(
    ( k5_partfun1 @ sk_A @ sk_B @ ( k3_partfun1 @ sk_C @ sk_A @ sk_B ) )
 != ( k1_tarski @ sk_C ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('10',plain,(
    m1_subset_1 @ sk_C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_A @ sk_B ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(t87_partfun1,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( ( v1_funct_1 @ C )
        & ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) )
     => ( ( k3_partfun1 @ C @ A @ B )
        = C ) ) )).

thf('11',plain,(
    ! [X6: $i,X7: $i,X8: $i] :
      ( ( ( k3_partfun1 @ X6 @ X7 @ X8 )
        = X6 )
      | ~ ( m1_subset_1 @ X6 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X7 @ X8 ) ) )
      | ~ ( v1_funct_1 @ X6 ) ) ),
    inference(cnf,[status(esa)],[t87_partfun1])).

thf('12',plain,
    ( ~ ( v1_funct_1 @ sk_C )
    | ( ( k3_partfun1 @ sk_C @ sk_A @ sk_B )
      = sk_C ) ),
    inference('sup-',[status(thm)],['10','11'])).

thf('13',plain,(
    v1_funct_1 @ sk_C ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('14',plain,
    ( ( k3_partfun1 @ sk_C @ sk_A @ sk_B )
    = sk_C ),
    inference(demod,[status(thm)],['12','13'])).

thf('15',plain,(
    ( k5_partfun1 @ sk_A @ sk_B @ sk_C )
 != ( k1_tarski @ sk_C ) ),
    inference(demod,[status(thm)],['9','14'])).

thf('16',plain,
    ( ( ( k5_partfun1 @ k1_xboole_0 @ sk_B @ sk_C )
     != ( k1_tarski @ sk_C ) )
   <= ( sk_A = k1_xboole_0 ) ),
    inference('sup-',[status(thm)],['8','15'])).

thf('17',plain,
    ( ~ ( v1_partfun1 @ sk_C @ k1_xboole_0 )
   <= ( sk_A = k1_xboole_0 ) ),
    inference('simplify_reflect-',[status(thm)],['7','16'])).

thf('18',plain,(
    m1_subset_1 @ sk_C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_A @ sk_B ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(t132_funct_2,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( ( v1_funct_1 @ C )
        & ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) )
     => ( ( ( v1_funct_1 @ C )
          & ( v1_funct_2 @ C @ A @ B )
          & ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) )
       => ( ( ( B = k1_xboole_0 )
            & ( A != k1_xboole_0 ) )
          | ( v1_partfun1 @ C @ A ) ) ) ) )).

thf('19',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( ( X0 = k1_xboole_0 )
      | ~ ( v1_funct_1 @ X1 )
      | ~ ( m1_subset_1 @ X1 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X2 @ X0 ) ) )
      | ( v1_partfun1 @ X1 @ X2 )
      | ~ ( m1_subset_1 @ X1 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X2 @ X0 ) ) )
      | ~ ( v1_funct_2 @ X1 @ X2 @ X0 )
      | ~ ( v1_funct_1 @ X1 ) ) ),
    inference(cnf,[status(esa)],[t132_funct_2])).

thf('20',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( ~ ( v1_funct_2 @ X1 @ X2 @ X0 )
      | ( v1_partfun1 @ X1 @ X2 )
      | ~ ( m1_subset_1 @ X1 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X2 @ X0 ) ) )
      | ~ ( v1_funct_1 @ X1 )
      | ( X0 = k1_xboole_0 ) ) ),
    inference(simplify,[status(thm)],['19'])).

thf('21',plain,
    ( ( sk_B = k1_xboole_0 )
    | ~ ( v1_funct_1 @ sk_C )
    | ( v1_partfun1 @ sk_C @ sk_A )
    | ~ ( v1_funct_2 @ sk_C @ sk_A @ sk_B ) ),
    inference('sup-',[status(thm)],['18','20'])).

thf('22',plain,(
    v1_funct_1 @ sk_C ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('23',plain,(
    v1_funct_2 @ sk_C @ sk_A @ sk_B ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('24',plain,
    ( ( sk_B = k1_xboole_0 )
    | ( v1_partfun1 @ sk_C @ sk_A ) ),
    inference(demod,[status(thm)],['21','22','23'])).

thf('25',plain,(
    m1_subset_1 @ sk_C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_A @ sk_B ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('26',plain,(
    ! [X3: $i,X4: $i,X5: $i] :
      ( ~ ( v1_partfun1 @ X3 @ X4 )
      | ( ( k5_partfun1 @ X4 @ X5 @ X3 )
        = ( k1_tarski @ X3 ) )
      | ~ ( m1_subset_1 @ X3 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X4 @ X5 ) ) )
      | ~ ( v1_funct_1 @ X3 ) ) ),
    inference(cnf,[status(esa)],[t174_partfun1])).

thf('27',plain,
    ( ~ ( v1_funct_1 @ sk_C )
    | ( ( k5_partfun1 @ sk_A @ sk_B @ sk_C )
      = ( k1_tarski @ sk_C ) )
    | ~ ( v1_partfun1 @ sk_C @ sk_A ) ),
    inference('sup-',[status(thm)],['25','26'])).

thf('28',plain,(
    v1_funct_1 @ sk_C ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('29',plain,
    ( ( ( k5_partfun1 @ sk_A @ sk_B @ sk_C )
      = ( k1_tarski @ sk_C ) )
    | ~ ( v1_partfun1 @ sk_C @ sk_A ) ),
    inference(demod,[status(thm)],['27','28'])).

thf('30',plain,(
    ( k5_partfun1 @ sk_A @ sk_B @ sk_C )
 != ( k1_tarski @ sk_C ) ),
    inference(demod,[status(thm)],['9','14'])).

thf('31',plain,(
    ~ ( v1_partfun1 @ sk_C @ sk_A ) ),
    inference('simplify_reflect-',[status(thm)],['29','30'])).

thf('32',plain,(
    sk_B = k1_xboole_0 ),
    inference('sup-',[status(thm)],['24','31'])).

thf('33',plain,
    ( ( sk_B != k1_xboole_0 )
   <= ( sk_B != k1_xboole_0 ) ),
    inference(split,[status(esa)],['0'])).

thf('34',plain,
    ( ( k1_xboole_0 != k1_xboole_0 )
   <= ( sk_B != k1_xboole_0 ) ),
    inference('sup-',[status(thm)],['32','33'])).

thf('35',plain,(
    sk_B = k1_xboole_0 ),
    inference(simplify,[status(thm)],['34'])).

thf('36',plain,
    ( ( sk_A = k1_xboole_0 )
    | ( sk_B != k1_xboole_0 ) ),
    inference(split,[status(esa)],['0'])).

thf('37',plain,(
    sk_A = k1_xboole_0 ),
    inference('sat_resolution*',[status(thm)],['35','36'])).

thf('38',plain,(
    ~ ( v1_partfun1 @ sk_C @ k1_xboole_0 ) ),
    inference(simpl_trail,[status(thm)],['17','37'])).

thf('39',plain,(
    m1_subset_1 @ sk_C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_A @ sk_B ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('40',plain,(
    sk_B = k1_xboole_0 ),
    inference('sup-',[status(thm)],['24','31'])).

thf('41',plain,(
    m1_subset_1 @ sk_C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_A @ k1_xboole_0 ) ) ),
    inference(demod,[status(thm)],['39','40'])).

thf('42',plain,
    ( ( sk_A = k1_xboole_0 )
   <= ( sk_A = k1_xboole_0 ) ),
    inference(split,[status(esa)],['0'])).

thf('43',plain,(
    sk_A = k1_xboole_0 ),
    inference('sat_resolution*',[status(thm)],['35','36'])).

thf('44',plain,(
    sk_A = k1_xboole_0 ),
    inference(simpl_trail,[status(thm)],['42','43'])).

thf('45',plain,(
    m1_subset_1 @ sk_C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ k1_xboole_0 @ k1_xboole_0 ) ) ),
    inference(demod,[status(thm)],['41','44'])).

thf('46',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( ( X2 != k1_xboole_0 )
      | ~ ( v1_funct_1 @ X1 )
      | ~ ( m1_subset_1 @ X1 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X2 @ X0 ) ) )
      | ( v1_partfun1 @ X1 @ X2 )
      | ~ ( m1_subset_1 @ X1 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X2 @ X0 ) ) )
      | ~ ( v1_funct_2 @ X1 @ X2 @ X0 )
      | ~ ( v1_funct_1 @ X1 ) ) ),
    inference(cnf,[status(esa)],[t132_funct_2])).

thf('47',plain,(
    ! [X0: $i,X1: $i] :
      ( ~ ( v1_funct_2 @ X1 @ k1_xboole_0 @ X0 )
      | ( v1_partfun1 @ X1 @ k1_xboole_0 )
      | ~ ( m1_subset_1 @ X1 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ k1_xboole_0 @ X0 ) ) )
      | ~ ( v1_funct_1 @ X1 ) ) ),
    inference(simplify,[status(thm)],['46'])).

thf('48',plain,
    ( ~ ( v1_funct_1 @ sk_C )
    | ( v1_partfun1 @ sk_C @ k1_xboole_0 )
    | ~ ( v1_funct_2 @ sk_C @ k1_xboole_0 @ k1_xboole_0 ) ),
    inference('sup-',[status(thm)],['45','47'])).

thf('49',plain,(
    v1_funct_1 @ sk_C ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('50',plain,(
    v1_funct_2 @ sk_C @ sk_A @ sk_B ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('51',plain,(
    sk_B = k1_xboole_0 ),
    inference('sup-',[status(thm)],['24','31'])).

thf('52',plain,(
    v1_funct_2 @ sk_C @ sk_A @ k1_xboole_0 ),
    inference(demod,[status(thm)],['50','51'])).

thf('53',plain,(
    sk_A = k1_xboole_0 ),
    inference(simpl_trail,[status(thm)],['42','43'])).

thf('54',plain,(
    v1_funct_2 @ sk_C @ k1_xboole_0 @ k1_xboole_0 ),
    inference(demod,[status(thm)],['52','53'])).

thf('55',plain,(
    v1_partfun1 @ sk_C @ k1_xboole_0 ),
    inference(demod,[status(thm)],['48','49','54'])).

thf('56',plain,(
    $false ),
    inference(demod,[status(thm)],['38','55'])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.03/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.03/0.13  % Command    : run_portfolio.sh /export/starexec/sandbox/benchmark/theBenchmark.p /export/starexec/sandbox/tmp/tmp.OdihnhZL5x
% 0.13/0.34  % Computer   : n012.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % DateTime   : Tue Dec  1 17:59:52 EST 2020
% 0.13/0.34  % CPUTime    : 
% 0.13/0.34  % Running portfolio for 600 s
% 0.13/0.34  % File         : /export/starexec/sandbox/benchmark/theBenchmark.p
% 0.13/0.34  % Number of cores: 8
% 0.13/0.34  % Python version: Python 3.6.8
% 0.13/0.34  % Running in FO mode
% 0.20/0.46  % Running /export/starexec/sandbox/solver/bin/fo/fo7.sh for 78
% 0.20/0.46  % Solved by: fo/fo7.sh
% 0.20/0.46  To remain in the chosen logic fragment, unification with booleans has been disabled.
% 0.20/0.46  % done 42 iterations in 0.017s
% 0.20/0.46  % SZS status Theorem for '/export/starexec/sandbox/benchmark/theBenchmark.p'
% 0.20/0.46  % SZS output start Refutation
% 0.20/0.46  thf(k1_zfmisc_1_type, type, k1_zfmisc_1: $i > $i).
% 0.20/0.46  thf(sk_B_type, type, sk_B: $i).
% 0.20/0.46  thf(k1_xboole_0_type, type, k1_xboole_0: $i).
% 0.20/0.46  thf(v1_funct_1_type, type, v1_funct_1: $i > $o).
% 0.20/0.46  thf(k3_partfun1_type, type, k3_partfun1: $i > $i > $i > $i).
% 0.20/0.46  thf(v1_partfun1_type, type, v1_partfun1: $i > $i > $o).
% 0.20/0.46  thf(v1_funct_2_type, type, v1_funct_2: $i > $i > $i > $o).
% 0.20/0.46  thf(sk_A_type, type, sk_A: $i).
% 0.20/0.46  thf(m1_subset_1_type, type, m1_subset_1: $i > $i > $o).
% 0.20/0.46  thf(sk_C_type, type, sk_C: $i).
% 0.20/0.46  thf(k2_zfmisc_1_type, type, k2_zfmisc_1: $i > $i > $i).
% 0.20/0.46  thf(k1_tarski_type, type, k1_tarski: $i > $i).
% 0.20/0.46  thf(k5_partfun1_type, type, k5_partfun1: $i > $i > $i > $i).
% 0.20/0.46  thf(t161_funct_2, conjecture,
% 0.20/0.46    (![A:$i,B:$i,C:$i]:
% 0.20/0.46     ( ( ( v1_funct_1 @ C ) & ( v1_funct_2 @ C @ A @ B ) & 
% 0.20/0.46         ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) ) =>
% 0.20/0.46       ( ( ( ( B ) = ( k1_xboole_0 ) ) => ( ( A ) = ( k1_xboole_0 ) ) ) =>
% 0.20/0.46         ( ( k5_partfun1 @ A @ B @ ( k3_partfun1 @ C @ A @ B ) ) =
% 0.20/0.46           ( k1_tarski @ C ) ) ) ))).
% 0.20/0.46  thf(zf_stmt_0, negated_conjecture,
% 0.20/0.46    (~( ![A:$i,B:$i,C:$i]:
% 0.20/0.46        ( ( ( v1_funct_1 @ C ) & ( v1_funct_2 @ C @ A @ B ) & 
% 0.20/0.46            ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) ) =>
% 0.20/0.46          ( ( ( ( B ) = ( k1_xboole_0 ) ) => ( ( A ) = ( k1_xboole_0 ) ) ) =>
% 0.20/0.46            ( ( k5_partfun1 @ A @ B @ ( k3_partfun1 @ C @ A @ B ) ) =
% 0.20/0.46              ( k1_tarski @ C ) ) ) ) )),
% 0.20/0.46    inference('cnf.neg', [status(esa)], [t161_funct_2])).
% 0.20/0.46  thf('0', plain, ((((sk_A) = (k1_xboole_0)) | ((sk_B) != (k1_xboole_0)))),
% 0.20/0.46      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.46  thf('1', plain, ((((sk_A) = (k1_xboole_0))) <= ((((sk_A) = (k1_xboole_0))))),
% 0.20/0.46      inference('split', [status(esa)], ['0'])).
% 0.20/0.46  thf('2', plain,
% 0.20/0.46      ((m1_subset_1 @ sk_C @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_A @ sk_B)))),
% 0.20/0.46      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.46  thf('3', plain,
% 0.20/0.46      (((m1_subset_1 @ sk_C @ 
% 0.20/0.46         (k1_zfmisc_1 @ (k2_zfmisc_1 @ k1_xboole_0 @ sk_B))))
% 0.20/0.46         <= ((((sk_A) = (k1_xboole_0))))),
% 0.20/0.46      inference('sup+', [status(thm)], ['1', '2'])).
% 0.20/0.46  thf(t174_partfun1, axiom,
% 0.20/0.46    (![A:$i,B:$i,C:$i]:
% 0.20/0.46     ( ( ( v1_funct_1 @ C ) & 
% 0.20/0.46         ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) ) =>
% 0.20/0.46       ( ( v1_partfun1 @ C @ A ) <=>
% 0.20/0.46         ( ( k5_partfun1 @ A @ B @ C ) = ( k1_tarski @ C ) ) ) ))).
% 0.20/0.46  thf('4', plain,
% 0.20/0.46      (![X3 : $i, X4 : $i, X5 : $i]:
% 0.20/0.46         (~ (v1_partfun1 @ X3 @ X4)
% 0.20/0.46          | ((k5_partfun1 @ X4 @ X5 @ X3) = (k1_tarski @ X3))
% 0.20/0.46          | ~ (m1_subset_1 @ X3 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X4 @ X5)))
% 0.20/0.46          | ~ (v1_funct_1 @ X3))),
% 0.20/0.46      inference('cnf', [status(esa)], [t174_partfun1])).
% 0.20/0.46  thf('5', plain,
% 0.20/0.46      (((~ (v1_funct_1 @ sk_C)
% 0.20/0.46         | ((k5_partfun1 @ k1_xboole_0 @ sk_B @ sk_C) = (k1_tarski @ sk_C))
% 0.20/0.46         | ~ (v1_partfun1 @ sk_C @ k1_xboole_0)))
% 0.20/0.46         <= ((((sk_A) = (k1_xboole_0))))),
% 0.20/0.46      inference('sup-', [status(thm)], ['3', '4'])).
% 0.20/0.46  thf('6', plain, ((v1_funct_1 @ sk_C)),
% 0.20/0.46      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.46  thf('7', plain,
% 0.20/0.46      (((((k5_partfun1 @ k1_xboole_0 @ sk_B @ sk_C) = (k1_tarski @ sk_C))
% 0.20/0.46         | ~ (v1_partfun1 @ sk_C @ k1_xboole_0)))
% 0.20/0.46         <= ((((sk_A) = (k1_xboole_0))))),
% 0.20/0.46      inference('demod', [status(thm)], ['5', '6'])).
% 0.20/0.46  thf('8', plain, ((((sk_A) = (k1_xboole_0))) <= ((((sk_A) = (k1_xboole_0))))),
% 0.20/0.46      inference('split', [status(esa)], ['0'])).
% 0.20/0.46  thf('9', plain,
% 0.20/0.46      (((k5_partfun1 @ sk_A @ sk_B @ (k3_partfun1 @ sk_C @ sk_A @ sk_B))
% 0.20/0.46         != (k1_tarski @ sk_C))),
% 0.20/0.46      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.46  thf('10', plain,
% 0.20/0.46      ((m1_subset_1 @ sk_C @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_A @ sk_B)))),
% 0.20/0.46      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.46  thf(t87_partfun1, axiom,
% 0.20/0.46    (![A:$i,B:$i,C:$i]:
% 0.20/0.46     ( ( ( v1_funct_1 @ C ) & 
% 0.20/0.46         ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) ) =>
% 0.20/0.46       ( ( k3_partfun1 @ C @ A @ B ) = ( C ) ) ))).
% 0.20/0.46  thf('11', plain,
% 0.20/0.46      (![X6 : $i, X7 : $i, X8 : $i]:
% 0.20/0.46         (((k3_partfun1 @ X6 @ X7 @ X8) = (X6))
% 0.20/0.46          | ~ (m1_subset_1 @ X6 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X7 @ X8)))
% 0.20/0.46          | ~ (v1_funct_1 @ X6))),
% 0.20/0.46      inference('cnf', [status(esa)], [t87_partfun1])).
% 0.20/0.46  thf('12', plain,
% 0.20/0.46      ((~ (v1_funct_1 @ sk_C) | ((k3_partfun1 @ sk_C @ sk_A @ sk_B) = (sk_C)))),
% 0.20/0.46      inference('sup-', [status(thm)], ['10', '11'])).
% 0.20/0.46  thf('13', plain, ((v1_funct_1 @ sk_C)),
% 0.20/0.46      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.46  thf('14', plain, (((k3_partfun1 @ sk_C @ sk_A @ sk_B) = (sk_C))),
% 0.20/0.46      inference('demod', [status(thm)], ['12', '13'])).
% 0.20/0.46  thf('15', plain,
% 0.20/0.46      (((k5_partfun1 @ sk_A @ sk_B @ sk_C) != (k1_tarski @ sk_C))),
% 0.20/0.46      inference('demod', [status(thm)], ['9', '14'])).
% 0.20/0.46  thf('16', plain,
% 0.20/0.46      ((((k5_partfun1 @ k1_xboole_0 @ sk_B @ sk_C) != (k1_tarski @ sk_C)))
% 0.20/0.46         <= ((((sk_A) = (k1_xboole_0))))),
% 0.20/0.46      inference('sup-', [status(thm)], ['8', '15'])).
% 0.20/0.46  thf('17', plain,
% 0.20/0.46      ((~ (v1_partfun1 @ sk_C @ k1_xboole_0)) <= ((((sk_A) = (k1_xboole_0))))),
% 0.20/0.46      inference('simplify_reflect-', [status(thm)], ['7', '16'])).
% 0.20/0.46  thf('18', plain,
% 0.20/0.46      ((m1_subset_1 @ sk_C @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_A @ sk_B)))),
% 0.20/0.46      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.46  thf(t132_funct_2, axiom,
% 0.20/0.46    (![A:$i,B:$i,C:$i]:
% 0.20/0.46     ( ( ( v1_funct_1 @ C ) & 
% 0.20/0.46         ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) ) =>
% 0.20/0.46       ( ( ( v1_funct_1 @ C ) & ( v1_funct_2 @ C @ A @ B ) & 
% 0.20/0.46           ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) ) =>
% 0.20/0.46         ( ( ( ( B ) = ( k1_xboole_0 ) ) & ( ( A ) != ( k1_xboole_0 ) ) ) | 
% 0.20/0.46           ( v1_partfun1 @ C @ A ) ) ) ))).
% 0.20/0.46  thf('19', plain,
% 0.20/0.46      (![X0 : $i, X1 : $i, X2 : $i]:
% 0.20/0.46         (((X0) = (k1_xboole_0))
% 0.20/0.46          | ~ (v1_funct_1 @ X1)
% 0.20/0.46          | ~ (m1_subset_1 @ X1 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X2 @ X0)))
% 0.20/0.46          | (v1_partfun1 @ X1 @ X2)
% 0.20/0.46          | ~ (m1_subset_1 @ X1 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X2 @ X0)))
% 0.20/0.46          | ~ (v1_funct_2 @ X1 @ X2 @ X0)
% 0.20/0.46          | ~ (v1_funct_1 @ X1))),
% 0.20/0.46      inference('cnf', [status(esa)], [t132_funct_2])).
% 0.20/0.46  thf('20', plain,
% 0.20/0.46      (![X0 : $i, X1 : $i, X2 : $i]:
% 0.20/0.46         (~ (v1_funct_2 @ X1 @ X2 @ X0)
% 0.20/0.46          | (v1_partfun1 @ X1 @ X2)
% 0.20/0.46          | ~ (m1_subset_1 @ X1 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X2 @ X0)))
% 0.20/0.46          | ~ (v1_funct_1 @ X1)
% 0.20/0.46          | ((X0) = (k1_xboole_0)))),
% 0.20/0.46      inference('simplify', [status(thm)], ['19'])).
% 0.20/0.46  thf('21', plain,
% 0.20/0.46      ((((sk_B) = (k1_xboole_0))
% 0.20/0.46        | ~ (v1_funct_1 @ sk_C)
% 0.20/0.46        | (v1_partfun1 @ sk_C @ sk_A)
% 0.20/0.46        | ~ (v1_funct_2 @ sk_C @ sk_A @ sk_B))),
% 0.20/0.46      inference('sup-', [status(thm)], ['18', '20'])).
% 0.20/0.46  thf('22', plain, ((v1_funct_1 @ sk_C)),
% 0.20/0.46      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.46  thf('23', plain, ((v1_funct_2 @ sk_C @ sk_A @ sk_B)),
% 0.20/0.46      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.46  thf('24', plain, ((((sk_B) = (k1_xboole_0)) | (v1_partfun1 @ sk_C @ sk_A))),
% 0.20/0.46      inference('demod', [status(thm)], ['21', '22', '23'])).
% 0.20/0.46  thf('25', plain,
% 0.20/0.46      ((m1_subset_1 @ sk_C @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_A @ sk_B)))),
% 0.20/0.46      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.46  thf('26', plain,
% 0.20/0.46      (![X3 : $i, X4 : $i, X5 : $i]:
% 0.20/0.46         (~ (v1_partfun1 @ X3 @ X4)
% 0.20/0.46          | ((k5_partfun1 @ X4 @ X5 @ X3) = (k1_tarski @ X3))
% 0.20/0.46          | ~ (m1_subset_1 @ X3 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X4 @ X5)))
% 0.20/0.46          | ~ (v1_funct_1 @ X3))),
% 0.20/0.46      inference('cnf', [status(esa)], [t174_partfun1])).
% 0.20/0.46  thf('27', plain,
% 0.20/0.46      ((~ (v1_funct_1 @ sk_C)
% 0.20/0.46        | ((k5_partfun1 @ sk_A @ sk_B @ sk_C) = (k1_tarski @ sk_C))
% 0.20/0.46        | ~ (v1_partfun1 @ sk_C @ sk_A))),
% 0.20/0.46      inference('sup-', [status(thm)], ['25', '26'])).
% 0.20/0.46  thf('28', plain, ((v1_funct_1 @ sk_C)),
% 0.20/0.46      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.46  thf('29', plain,
% 0.20/0.46      ((((k5_partfun1 @ sk_A @ sk_B @ sk_C) = (k1_tarski @ sk_C))
% 0.20/0.46        | ~ (v1_partfun1 @ sk_C @ sk_A))),
% 0.20/0.46      inference('demod', [status(thm)], ['27', '28'])).
% 0.20/0.46  thf('30', plain,
% 0.20/0.46      (((k5_partfun1 @ sk_A @ sk_B @ sk_C) != (k1_tarski @ sk_C))),
% 0.20/0.46      inference('demod', [status(thm)], ['9', '14'])).
% 0.20/0.46  thf('31', plain, (~ (v1_partfun1 @ sk_C @ sk_A)),
% 0.20/0.46      inference('simplify_reflect-', [status(thm)], ['29', '30'])).
% 0.20/0.46  thf('32', plain, (((sk_B) = (k1_xboole_0))),
% 0.20/0.46      inference('sup-', [status(thm)], ['24', '31'])).
% 0.20/0.46  thf('33', plain,
% 0.20/0.46      ((((sk_B) != (k1_xboole_0))) <= (~ (((sk_B) = (k1_xboole_0))))),
% 0.20/0.46      inference('split', [status(esa)], ['0'])).
% 0.20/0.46  thf('34', plain,
% 0.20/0.46      ((((k1_xboole_0) != (k1_xboole_0))) <= (~ (((sk_B) = (k1_xboole_0))))),
% 0.20/0.46      inference('sup-', [status(thm)], ['32', '33'])).
% 0.20/0.46  thf('35', plain, ((((sk_B) = (k1_xboole_0)))),
% 0.20/0.46      inference('simplify', [status(thm)], ['34'])).
% 0.20/0.46  thf('36', plain, ((((sk_A) = (k1_xboole_0))) | ~ (((sk_B) = (k1_xboole_0)))),
% 0.20/0.46      inference('split', [status(esa)], ['0'])).
% 0.20/0.46  thf('37', plain, ((((sk_A) = (k1_xboole_0)))),
% 0.20/0.46      inference('sat_resolution*', [status(thm)], ['35', '36'])).
% 0.20/0.46  thf('38', plain, (~ (v1_partfun1 @ sk_C @ k1_xboole_0)),
% 0.20/0.46      inference('simpl_trail', [status(thm)], ['17', '37'])).
% 0.20/0.46  thf('39', plain,
% 0.20/0.46      ((m1_subset_1 @ sk_C @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_A @ sk_B)))),
% 0.20/0.46      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.46  thf('40', plain, (((sk_B) = (k1_xboole_0))),
% 0.20/0.46      inference('sup-', [status(thm)], ['24', '31'])).
% 0.20/0.46  thf('41', plain,
% 0.20/0.46      ((m1_subset_1 @ sk_C @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_A @ k1_xboole_0)))),
% 0.20/0.46      inference('demod', [status(thm)], ['39', '40'])).
% 0.20/0.46  thf('42', plain,
% 0.20/0.46      ((((sk_A) = (k1_xboole_0))) <= ((((sk_A) = (k1_xboole_0))))),
% 0.20/0.46      inference('split', [status(esa)], ['0'])).
% 0.20/0.46  thf('43', plain, ((((sk_A) = (k1_xboole_0)))),
% 0.20/0.46      inference('sat_resolution*', [status(thm)], ['35', '36'])).
% 0.20/0.46  thf('44', plain, (((sk_A) = (k1_xboole_0))),
% 0.20/0.46      inference('simpl_trail', [status(thm)], ['42', '43'])).
% 0.20/0.46  thf('45', plain,
% 0.20/0.46      ((m1_subset_1 @ sk_C @ 
% 0.20/0.46        (k1_zfmisc_1 @ (k2_zfmisc_1 @ k1_xboole_0 @ k1_xboole_0)))),
% 0.20/0.46      inference('demod', [status(thm)], ['41', '44'])).
% 0.20/0.46  thf('46', plain,
% 0.20/0.46      (![X0 : $i, X1 : $i, X2 : $i]:
% 0.20/0.46         (((X2) != (k1_xboole_0))
% 0.20/0.46          | ~ (v1_funct_1 @ X1)
% 0.20/0.46          | ~ (m1_subset_1 @ X1 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X2 @ X0)))
% 0.20/0.46          | (v1_partfun1 @ X1 @ X2)
% 0.20/0.46          | ~ (m1_subset_1 @ X1 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X2 @ X0)))
% 0.20/0.46          | ~ (v1_funct_2 @ X1 @ X2 @ X0)
% 0.20/0.46          | ~ (v1_funct_1 @ X1))),
% 0.20/0.46      inference('cnf', [status(esa)], [t132_funct_2])).
% 0.20/0.46  thf('47', plain,
% 0.20/0.46      (![X0 : $i, X1 : $i]:
% 0.20/0.46         (~ (v1_funct_2 @ X1 @ k1_xboole_0 @ X0)
% 0.20/0.46          | (v1_partfun1 @ X1 @ k1_xboole_0)
% 0.20/0.46          | ~ (m1_subset_1 @ X1 @ 
% 0.20/0.46               (k1_zfmisc_1 @ (k2_zfmisc_1 @ k1_xboole_0 @ X0)))
% 0.20/0.46          | ~ (v1_funct_1 @ X1))),
% 0.20/0.46      inference('simplify', [status(thm)], ['46'])).
% 0.20/0.46  thf('48', plain,
% 0.20/0.46      ((~ (v1_funct_1 @ sk_C)
% 0.20/0.46        | (v1_partfun1 @ sk_C @ k1_xboole_0)
% 0.20/0.46        | ~ (v1_funct_2 @ sk_C @ k1_xboole_0 @ k1_xboole_0))),
% 0.20/0.46      inference('sup-', [status(thm)], ['45', '47'])).
% 0.20/0.46  thf('49', plain, ((v1_funct_1 @ sk_C)),
% 0.20/0.46      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.46  thf('50', plain, ((v1_funct_2 @ sk_C @ sk_A @ sk_B)),
% 0.20/0.46      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.46  thf('51', plain, (((sk_B) = (k1_xboole_0))),
% 0.20/0.46      inference('sup-', [status(thm)], ['24', '31'])).
% 0.20/0.46  thf('52', plain, ((v1_funct_2 @ sk_C @ sk_A @ k1_xboole_0)),
% 0.20/0.46      inference('demod', [status(thm)], ['50', '51'])).
% 0.20/0.46  thf('53', plain, (((sk_A) = (k1_xboole_0))),
% 0.20/0.46      inference('simpl_trail', [status(thm)], ['42', '43'])).
% 0.20/0.46  thf('54', plain, ((v1_funct_2 @ sk_C @ k1_xboole_0 @ k1_xboole_0)),
% 0.20/0.46      inference('demod', [status(thm)], ['52', '53'])).
% 0.20/0.46  thf('55', plain, ((v1_partfun1 @ sk_C @ k1_xboole_0)),
% 0.20/0.46      inference('demod', [status(thm)], ['48', '49', '54'])).
% 0.20/0.46  thf('56', plain, ($false), inference('demod', [status(thm)], ['38', '55'])).
% 0.20/0.46  
% 0.20/0.46  % SZS output end Refutation
% 0.20/0.46  
% 0.20/0.47  % Zipperpin 1.5 exiting
%------------------------------------------------------------------------------
