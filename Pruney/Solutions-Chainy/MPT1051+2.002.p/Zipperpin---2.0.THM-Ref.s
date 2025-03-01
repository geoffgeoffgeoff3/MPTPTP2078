%------------------------------------------------------------------------------
% File       : Zipperpin---2.0
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_portfolio.sh /export/starexec/sandbox2/benchmark/theBenchmark.p /export/starexec/sandbox2/tmp/tmp.rDAgQF1Ri6

% Computer   : n006.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 13:59:23 EST 2020

% Result     : Theorem 0.20s
% Output     : Refutation 0.20s
% Verified   : 
% Statistics : Number of formulae       :   64 (  99 expanded)
%              Number of leaves         :   19 (  38 expanded)
%              Depth                    :   11
%              Number of atoms          :  594 (1686 expanded)
%              Number of equality atoms :   24 (  88 expanded)
%              Maximal formula depth    :   16 (   6 average)

% Comments   : 
%------------------------------------------------------------------------------
thf(k2_zfmisc_1_type,type,(
    k2_zfmisc_1: $i > $i > $i )).

thf(sk_B_type,type,(
    sk_B: $i )).

thf(k5_partfun1_type,type,(
    k5_partfun1: $i > $i > $i > $i )).

thf(r1_relset_1_type,type,(
    r1_relset_1: $i > $i > $i > $i > $o )).

thf(v1_funct_1_type,type,(
    v1_funct_1: $i > $o )).

thf(k1_tarski_type,type,(
    k1_tarski: $i > $i )).

thf(sk_C_type,type,(
    sk_C: $i )).

thf(r1_tarski_type,type,(
    r1_tarski: $i > $i > $o )).

thf(sk_E_type,type,(
    sk_E: $i > $i )).

thf(sk_A_type,type,(
    sk_A: $i )).

thf(r2_relset_1_type,type,(
    r2_relset_1: $i > $i > $i > $i > $o )).

thf(k1_zfmisc_1_type,type,(
    k1_zfmisc_1: $i > $i )).

thf(sk_D_type,type,(
    sk_D: $i )).

thf(m1_subset_1_type,type,(
    m1_subset_1: $i > $i > $o )).

thf(t168_funct_2,conjecture,(
    ! [A: $i,B: $i,C: $i] :
      ( ( ( v1_funct_1 @ C )
        & ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) )
     => ! [D: $i] :
          ( ( ( v1_funct_1 @ D )
            & ( m1_subset_1 @ D @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) )
         => ( ( ! [E: $i] :
                  ( B
                 != ( k1_tarski @ E ) )
              & ( ( k5_partfun1 @ A @ B @ C )
                = ( k5_partfun1 @ A @ B @ D ) ) )
           => ( r2_relset_1 @ A @ B @ C @ D ) ) ) ) )).

thf(zf_stmt_0,negated_conjecture,(
    ~ ! [A: $i,B: $i,C: $i] :
        ( ( ( v1_funct_1 @ C )
          & ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) )
       => ! [D: $i] :
            ( ( ( v1_funct_1 @ D )
              & ( m1_subset_1 @ D @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) )
           => ( ( ! [E: $i] :
                    ( B
                   != ( k1_tarski @ E ) )
                & ( ( k5_partfun1 @ A @ B @ C )
                  = ( k5_partfun1 @ A @ B @ D ) ) )
             => ( r2_relset_1 @ A @ B @ C @ D ) ) ) ) ),
    inference('cnf.neg',[status(esa)],[t168_funct_2])).

thf('0',plain,(
    ~ ( r2_relset_1 @ sk_A @ sk_B @ sk_C @ sk_D ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('1',plain,
    ( ( k5_partfun1 @ sk_A @ sk_B @ sk_C )
    = ( k5_partfun1 @ sk_A @ sk_B @ sk_D ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('2',plain,(
    m1_subset_1 @ sk_C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_A @ sk_B ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(t167_funct_2,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( ( v1_funct_1 @ C )
        & ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) )
     => ! [D: $i] :
          ( ( ( v1_funct_1 @ D )
            & ( m1_subset_1 @ D @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) )
         => ( ( ( r1_tarski @ ( k5_partfun1 @ A @ B @ C ) @ ( k5_partfun1 @ A @ B @ D ) )
              & ! [E: $i] :
                  ( B
                 != ( k1_tarski @ E ) ) )
           => ( r1_relset_1 @ A @ B @ D @ C ) ) ) ) )).

thf('3',plain,(
    ! [X11: $i,X12: $i,X13: $i,X14: $i] :
      ( ~ ( v1_funct_1 @ X11 )
      | ~ ( m1_subset_1 @ X11 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X12 @ X13 ) ) )
      | ( r1_relset_1 @ X12 @ X13 @ X11 @ X14 )
      | ~ ( r1_tarski @ ( k5_partfun1 @ X12 @ X13 @ X14 ) @ ( k5_partfun1 @ X12 @ X13 @ X11 ) )
      | ( X13
        = ( k1_tarski @ ( sk_E @ X13 ) ) )
      | ~ ( m1_subset_1 @ X14 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X12 @ X13 ) ) )
      | ~ ( v1_funct_1 @ X14 ) ) ),
    inference(cnf,[status(esa)],[t167_funct_2])).

thf('4',plain,(
    ! [X0: $i] :
      ( ~ ( v1_funct_1 @ X0 )
      | ~ ( m1_subset_1 @ X0 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_A @ sk_B ) ) )
      | ( sk_B
        = ( k1_tarski @ ( sk_E @ sk_B ) ) )
      | ~ ( r1_tarski @ ( k5_partfun1 @ sk_A @ sk_B @ X0 ) @ ( k5_partfun1 @ sk_A @ sk_B @ sk_C ) )
      | ( r1_relset_1 @ sk_A @ sk_B @ sk_C @ X0 )
      | ~ ( v1_funct_1 @ sk_C ) ) ),
    inference('sup-',[status(thm)],['2','3'])).

thf('5',plain,(
    v1_funct_1 @ sk_C ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('6',plain,(
    ! [X0: $i] :
      ( ~ ( v1_funct_1 @ X0 )
      | ~ ( m1_subset_1 @ X0 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_A @ sk_B ) ) )
      | ( sk_B
        = ( k1_tarski @ ( sk_E @ sk_B ) ) )
      | ~ ( r1_tarski @ ( k5_partfun1 @ sk_A @ sk_B @ X0 ) @ ( k5_partfun1 @ sk_A @ sk_B @ sk_C ) )
      | ( r1_relset_1 @ sk_A @ sk_B @ sk_C @ X0 ) ) ),
    inference(demod,[status(thm)],['4','5'])).

thf('7',plain,
    ( ~ ( r1_tarski @ ( k5_partfun1 @ sk_A @ sk_B @ sk_C ) @ ( k5_partfun1 @ sk_A @ sk_B @ sk_C ) )
    | ( r1_relset_1 @ sk_A @ sk_B @ sk_C @ sk_D )
    | ( sk_B
      = ( k1_tarski @ ( sk_E @ sk_B ) ) )
    | ~ ( m1_subset_1 @ sk_D @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_A @ sk_B ) ) )
    | ~ ( v1_funct_1 @ sk_D ) ),
    inference('sup-',[status(thm)],['1','6'])).

thf(d10_xboole_0,axiom,(
    ! [A: $i,B: $i] :
      ( ( A = B )
    <=> ( ( r1_tarski @ A @ B )
        & ( r1_tarski @ B @ A ) ) ) )).

thf('8',plain,(
    ! [X0: $i,X1: $i] :
      ( ( r1_tarski @ X0 @ X1 )
      | ( X0 != X1 ) ) ),
    inference(cnf,[status(esa)],[d10_xboole_0])).

thf('9',plain,(
    ! [X1: $i] :
      ( r1_tarski @ X1 @ X1 ) ),
    inference(simplify,[status(thm)],['8'])).

thf('10',plain,(
    m1_subset_1 @ sk_D @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_A @ sk_B ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('11',plain,(
    v1_funct_1 @ sk_D ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('12',plain,
    ( ( r1_relset_1 @ sk_A @ sk_B @ sk_C @ sk_D )
    | ( sk_B
      = ( k1_tarski @ ( sk_E @ sk_B ) ) ) ),
    inference(demod,[status(thm)],['7','9','10','11'])).

thf('13',plain,(
    ! [X15: $i] :
      ( sk_B
     != ( k1_tarski @ X15 ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('14',plain,(
    r1_relset_1 @ sk_A @ sk_B @ sk_C @ sk_D ),
    inference(clc,[status(thm)],['12','13'])).

thf('15',plain,(
    m1_subset_1 @ sk_C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_A @ sk_B ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(redefinition_r1_relset_1,axiom,(
    ! [A: $i,B: $i,C: $i,D: $i] :
      ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) )
     => ( ( r1_relset_1 @ A @ B @ C @ D )
      <=> ( r1_tarski @ C @ D ) ) ) )).

thf('16',plain,(
    ! [X3: $i,X4: $i,X5: $i,X6: $i] :
      ( ~ ( m1_subset_1 @ X3 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X4 @ X5 ) ) )
      | ( r1_tarski @ X3 @ X6 )
      | ~ ( r1_relset_1 @ X4 @ X5 @ X3 @ X6 ) ) ),
    inference(cnf,[status(esa)],[redefinition_r1_relset_1])).

thf('17',plain,(
    ! [X0: $i] :
      ( ~ ( r1_relset_1 @ sk_A @ sk_B @ sk_C @ X0 )
      | ( r1_tarski @ sk_C @ X0 ) ) ),
    inference('sup-',[status(thm)],['15','16'])).

thf('18',plain,(
    r1_tarski @ sk_C @ sk_D ),
    inference('sup-',[status(thm)],['14','17'])).

thf('19',plain,(
    ! [X0: $i,X2: $i] :
      ( ( X0 = X2 )
      | ~ ( r1_tarski @ X2 @ X0 )
      | ~ ( r1_tarski @ X0 @ X2 ) ) ),
    inference(cnf,[status(esa)],[d10_xboole_0])).

thf('20',plain,
    ( ~ ( r1_tarski @ sk_D @ sk_C )
    | ( sk_D = sk_C ) ),
    inference('sup-',[status(thm)],['18','19'])).

thf('21',plain,(
    ! [X1: $i] :
      ( r1_tarski @ X1 @ X1 ) ),
    inference(simplify,[status(thm)],['8'])).

thf('22',plain,(
    m1_subset_1 @ sk_D @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_A @ sk_B ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('23',plain,(
    ! [X11: $i,X12: $i,X13: $i,X14: $i] :
      ( ~ ( v1_funct_1 @ X11 )
      | ~ ( m1_subset_1 @ X11 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X12 @ X13 ) ) )
      | ( r1_relset_1 @ X12 @ X13 @ X11 @ X14 )
      | ~ ( r1_tarski @ ( k5_partfun1 @ X12 @ X13 @ X14 ) @ ( k5_partfun1 @ X12 @ X13 @ X11 ) )
      | ( X13
        = ( k1_tarski @ ( sk_E @ X13 ) ) )
      | ~ ( m1_subset_1 @ X14 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X12 @ X13 ) ) )
      | ~ ( v1_funct_1 @ X14 ) ) ),
    inference(cnf,[status(esa)],[t167_funct_2])).

thf('24',plain,(
    ! [X0: $i] :
      ( ~ ( v1_funct_1 @ X0 )
      | ~ ( m1_subset_1 @ X0 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_A @ sk_B ) ) )
      | ( sk_B
        = ( k1_tarski @ ( sk_E @ sk_B ) ) )
      | ~ ( r1_tarski @ ( k5_partfun1 @ sk_A @ sk_B @ X0 ) @ ( k5_partfun1 @ sk_A @ sk_B @ sk_D ) )
      | ( r1_relset_1 @ sk_A @ sk_B @ sk_D @ X0 )
      | ~ ( v1_funct_1 @ sk_D ) ) ),
    inference('sup-',[status(thm)],['22','23'])).

thf('25',plain,
    ( ( k5_partfun1 @ sk_A @ sk_B @ sk_C )
    = ( k5_partfun1 @ sk_A @ sk_B @ sk_D ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('26',plain,(
    v1_funct_1 @ sk_D ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('27',plain,(
    ! [X0: $i] :
      ( ~ ( v1_funct_1 @ X0 )
      | ~ ( m1_subset_1 @ X0 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_A @ sk_B ) ) )
      | ( sk_B
        = ( k1_tarski @ ( sk_E @ sk_B ) ) )
      | ~ ( r1_tarski @ ( k5_partfun1 @ sk_A @ sk_B @ X0 ) @ ( k5_partfun1 @ sk_A @ sk_B @ sk_C ) )
      | ( r1_relset_1 @ sk_A @ sk_B @ sk_D @ X0 ) ) ),
    inference(demod,[status(thm)],['24','25','26'])).

thf('28',plain,
    ( ( r1_relset_1 @ sk_A @ sk_B @ sk_D @ sk_C )
    | ( sk_B
      = ( k1_tarski @ ( sk_E @ sk_B ) ) )
    | ~ ( m1_subset_1 @ sk_C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_A @ sk_B ) ) )
    | ~ ( v1_funct_1 @ sk_C ) ),
    inference('sup-',[status(thm)],['21','27'])).

thf('29',plain,(
    m1_subset_1 @ sk_C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_A @ sk_B ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('30',plain,(
    v1_funct_1 @ sk_C ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('31',plain,
    ( ( r1_relset_1 @ sk_A @ sk_B @ sk_D @ sk_C )
    | ( sk_B
      = ( k1_tarski @ ( sk_E @ sk_B ) ) ) ),
    inference(demod,[status(thm)],['28','29','30'])).

thf('32',plain,(
    ! [X15: $i] :
      ( sk_B
     != ( k1_tarski @ X15 ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('33',plain,(
    r1_relset_1 @ sk_A @ sk_B @ sk_D @ sk_C ),
    inference(clc,[status(thm)],['31','32'])).

thf('34',plain,(
    m1_subset_1 @ sk_D @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_A @ sk_B ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('35',plain,(
    ! [X3: $i,X4: $i,X5: $i,X6: $i] :
      ( ~ ( m1_subset_1 @ X3 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X4 @ X5 ) ) )
      | ( r1_tarski @ X3 @ X6 )
      | ~ ( r1_relset_1 @ X4 @ X5 @ X3 @ X6 ) ) ),
    inference(cnf,[status(esa)],[redefinition_r1_relset_1])).

thf('36',plain,(
    ! [X0: $i] :
      ( ~ ( r1_relset_1 @ sk_A @ sk_B @ sk_D @ X0 )
      | ( r1_tarski @ sk_D @ X0 ) ) ),
    inference('sup-',[status(thm)],['34','35'])).

thf('37',plain,(
    r1_tarski @ sk_D @ sk_C ),
    inference('sup-',[status(thm)],['33','36'])).

thf('38',plain,(
    sk_D = sk_C ),
    inference(demod,[status(thm)],['20','37'])).

thf('39',plain,(
    m1_subset_1 @ sk_C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_A @ sk_B ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(reflexivity_r2_relset_1,axiom,(
    ! [A: $i,B: $i,C: $i,D: $i] :
      ( ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) )
        & ( m1_subset_1 @ D @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) )
     => ( r2_relset_1 @ A @ B @ C @ C ) ) )).

thf('40',plain,(
    ! [X7: $i,X8: $i,X9: $i,X10: $i] :
      ( ( r2_relset_1 @ X7 @ X8 @ X9 @ X9 )
      | ~ ( m1_subset_1 @ X9 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X7 @ X8 ) ) )
      | ~ ( m1_subset_1 @ X10 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X7 @ X8 ) ) ) ) ),
    inference(cnf,[status(esa)],[reflexivity_r2_relset_1])).

thf('41',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( ( r2_relset_1 @ X2 @ X1 @ X0 @ X0 )
      | ~ ( m1_subset_1 @ X0 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X2 @ X1 ) ) ) ) ),
    inference(condensation,[status(thm)],['40'])).

thf('42',plain,(
    r2_relset_1 @ sk_A @ sk_B @ sk_C @ sk_C ),
    inference('sup-',[status(thm)],['39','41'])).

thf('43',plain,(
    $false ),
    inference(demod,[status(thm)],['0','38','42'])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.06/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.06/0.13  % Command    : run_portfolio.sh /export/starexec/sandbox2/benchmark/theBenchmark.p /export/starexec/sandbox2/tmp/tmp.rDAgQF1Ri6
% 0.13/0.34  % Computer   : n006.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % DateTime   : Tue Dec  1 18:41:07 EST 2020
% 0.13/0.34  % CPUTime    : 
% 0.13/0.34  % Running portfolio for 600 s
% 0.13/0.34  % File         : /export/starexec/sandbox2/benchmark/theBenchmark.p
% 0.13/0.34  % Number of cores: 8
% 0.13/0.34  % Python version: Python 3.6.8
% 0.13/0.35  % Running in FO mode
% 0.20/0.47  % Running /export/starexec/sandbox2/solver/bin/fo/fo7.sh for 78
% 0.20/0.47  % Solved by: fo/fo7.sh
% 0.20/0.47  To remain in the chosen logic fragment, unification with booleans has been disabled.
% 0.20/0.47  % done 30 iterations in 0.020s
% 0.20/0.47  % SZS status Theorem for '/export/starexec/sandbox2/benchmark/theBenchmark.p'
% 0.20/0.47  % SZS output start Refutation
% 0.20/0.47  thf(k2_zfmisc_1_type, type, k2_zfmisc_1: $i > $i > $i).
% 0.20/0.47  thf(sk_B_type, type, sk_B: $i).
% 0.20/0.47  thf(k5_partfun1_type, type, k5_partfun1: $i > $i > $i > $i).
% 0.20/0.47  thf(r1_relset_1_type, type, r1_relset_1: $i > $i > $i > $i > $o).
% 0.20/0.47  thf(v1_funct_1_type, type, v1_funct_1: $i > $o).
% 0.20/0.47  thf(k1_tarski_type, type, k1_tarski: $i > $i).
% 0.20/0.47  thf(sk_C_type, type, sk_C: $i).
% 0.20/0.47  thf(r1_tarski_type, type, r1_tarski: $i > $i > $o).
% 0.20/0.47  thf(sk_E_type, type, sk_E: $i > $i).
% 0.20/0.47  thf(sk_A_type, type, sk_A: $i).
% 0.20/0.47  thf(r2_relset_1_type, type, r2_relset_1: $i > $i > $i > $i > $o).
% 0.20/0.47  thf(k1_zfmisc_1_type, type, k1_zfmisc_1: $i > $i).
% 0.20/0.47  thf(sk_D_type, type, sk_D: $i).
% 0.20/0.47  thf(m1_subset_1_type, type, m1_subset_1: $i > $i > $o).
% 0.20/0.47  thf(t168_funct_2, conjecture,
% 0.20/0.47    (![A:$i,B:$i,C:$i]:
% 0.20/0.47     ( ( ( v1_funct_1 @ C ) & 
% 0.20/0.47         ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) ) =>
% 0.20/0.47       ( ![D:$i]:
% 0.20/0.47         ( ( ( v1_funct_1 @ D ) & 
% 0.20/0.47             ( m1_subset_1 @ D @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) ) =>
% 0.20/0.47           ( ( ( ![E:$i]: ( ( B ) != ( k1_tarski @ E ) ) ) & 
% 0.20/0.47               ( ( k5_partfun1 @ A @ B @ C ) = ( k5_partfun1 @ A @ B @ D ) ) ) =>
% 0.20/0.47             ( r2_relset_1 @ A @ B @ C @ D ) ) ) ) ))).
% 0.20/0.47  thf(zf_stmt_0, negated_conjecture,
% 0.20/0.47    (~( ![A:$i,B:$i,C:$i]:
% 0.20/0.47        ( ( ( v1_funct_1 @ C ) & 
% 0.20/0.47            ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) ) =>
% 0.20/0.47          ( ![D:$i]:
% 0.20/0.47            ( ( ( v1_funct_1 @ D ) & 
% 0.20/0.47                ( m1_subset_1 @ D @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) ) =>
% 0.20/0.47              ( ( ( ![E:$i]: ( ( B ) != ( k1_tarski @ E ) ) ) & 
% 0.20/0.47                  ( ( k5_partfun1 @ A @ B @ C ) = ( k5_partfun1 @ A @ B @ D ) ) ) =>
% 0.20/0.47                ( r2_relset_1 @ A @ B @ C @ D ) ) ) ) ) )),
% 0.20/0.47    inference('cnf.neg', [status(esa)], [t168_funct_2])).
% 0.20/0.47  thf('0', plain, (~ (r2_relset_1 @ sk_A @ sk_B @ sk_C @ sk_D)),
% 0.20/0.47      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.47  thf('1', plain,
% 0.20/0.47      (((k5_partfun1 @ sk_A @ sk_B @ sk_C) = (k5_partfun1 @ sk_A @ sk_B @ sk_D))),
% 0.20/0.47      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.47  thf('2', plain,
% 0.20/0.47      ((m1_subset_1 @ sk_C @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_A @ sk_B)))),
% 0.20/0.47      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.47  thf(t167_funct_2, axiom,
% 0.20/0.47    (![A:$i,B:$i,C:$i]:
% 0.20/0.47     ( ( ( v1_funct_1 @ C ) & 
% 0.20/0.47         ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) ) =>
% 0.20/0.47       ( ![D:$i]:
% 0.20/0.47         ( ( ( v1_funct_1 @ D ) & 
% 0.20/0.47             ( m1_subset_1 @ D @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) ) =>
% 0.20/0.47           ( ( ( r1_tarski @
% 0.20/0.47                 ( k5_partfun1 @ A @ B @ C ) @ ( k5_partfun1 @ A @ B @ D ) ) & 
% 0.20/0.47               ( ![E:$i]: ( ( B ) != ( k1_tarski @ E ) ) ) ) =>
% 0.20/0.47             ( r1_relset_1 @ A @ B @ D @ C ) ) ) ) ))).
% 0.20/0.47  thf('3', plain,
% 0.20/0.47      (![X11 : $i, X12 : $i, X13 : $i, X14 : $i]:
% 0.20/0.47         (~ (v1_funct_1 @ X11)
% 0.20/0.47          | ~ (m1_subset_1 @ X11 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X12 @ X13)))
% 0.20/0.47          | (r1_relset_1 @ X12 @ X13 @ X11 @ X14)
% 0.20/0.47          | ~ (r1_tarski @ (k5_partfun1 @ X12 @ X13 @ X14) @ 
% 0.20/0.47               (k5_partfun1 @ X12 @ X13 @ X11))
% 0.20/0.47          | ((X13) = (k1_tarski @ (sk_E @ X13)))
% 0.20/0.47          | ~ (m1_subset_1 @ X14 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X12 @ X13)))
% 0.20/0.47          | ~ (v1_funct_1 @ X14))),
% 0.20/0.47      inference('cnf', [status(esa)], [t167_funct_2])).
% 0.20/0.47  thf('4', plain,
% 0.20/0.47      (![X0 : $i]:
% 0.20/0.47         (~ (v1_funct_1 @ X0)
% 0.20/0.47          | ~ (m1_subset_1 @ X0 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_A @ sk_B)))
% 0.20/0.47          | ((sk_B) = (k1_tarski @ (sk_E @ sk_B)))
% 0.20/0.47          | ~ (r1_tarski @ (k5_partfun1 @ sk_A @ sk_B @ X0) @ 
% 0.20/0.47               (k5_partfun1 @ sk_A @ sk_B @ sk_C))
% 0.20/0.47          | (r1_relset_1 @ sk_A @ sk_B @ sk_C @ X0)
% 0.20/0.47          | ~ (v1_funct_1 @ sk_C))),
% 0.20/0.47      inference('sup-', [status(thm)], ['2', '3'])).
% 0.20/0.47  thf('5', plain, ((v1_funct_1 @ sk_C)),
% 0.20/0.47      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.47  thf('6', plain,
% 0.20/0.47      (![X0 : $i]:
% 0.20/0.47         (~ (v1_funct_1 @ X0)
% 0.20/0.47          | ~ (m1_subset_1 @ X0 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_A @ sk_B)))
% 0.20/0.47          | ((sk_B) = (k1_tarski @ (sk_E @ sk_B)))
% 0.20/0.47          | ~ (r1_tarski @ (k5_partfun1 @ sk_A @ sk_B @ X0) @ 
% 0.20/0.47               (k5_partfun1 @ sk_A @ sk_B @ sk_C))
% 0.20/0.47          | (r1_relset_1 @ sk_A @ sk_B @ sk_C @ X0))),
% 0.20/0.47      inference('demod', [status(thm)], ['4', '5'])).
% 0.20/0.47  thf('7', plain,
% 0.20/0.47      ((~ (r1_tarski @ (k5_partfun1 @ sk_A @ sk_B @ sk_C) @ 
% 0.20/0.47           (k5_partfun1 @ sk_A @ sk_B @ sk_C))
% 0.20/0.47        | (r1_relset_1 @ sk_A @ sk_B @ sk_C @ sk_D)
% 0.20/0.47        | ((sk_B) = (k1_tarski @ (sk_E @ sk_B)))
% 0.20/0.47        | ~ (m1_subset_1 @ sk_D @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_A @ sk_B)))
% 0.20/0.47        | ~ (v1_funct_1 @ sk_D))),
% 0.20/0.47      inference('sup-', [status(thm)], ['1', '6'])).
% 0.20/0.47  thf(d10_xboole_0, axiom,
% 0.20/0.47    (![A:$i,B:$i]:
% 0.20/0.47     ( ( ( A ) = ( B ) ) <=> ( ( r1_tarski @ A @ B ) & ( r1_tarski @ B @ A ) ) ))).
% 0.20/0.47  thf('8', plain,
% 0.20/0.47      (![X0 : $i, X1 : $i]: ((r1_tarski @ X0 @ X1) | ((X0) != (X1)))),
% 0.20/0.47      inference('cnf', [status(esa)], [d10_xboole_0])).
% 0.20/0.47  thf('9', plain, (![X1 : $i]: (r1_tarski @ X1 @ X1)),
% 0.20/0.47      inference('simplify', [status(thm)], ['8'])).
% 0.20/0.47  thf('10', plain,
% 0.20/0.47      ((m1_subset_1 @ sk_D @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_A @ sk_B)))),
% 0.20/0.47      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.47  thf('11', plain, ((v1_funct_1 @ sk_D)),
% 0.20/0.47      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.47  thf('12', plain,
% 0.20/0.47      (((r1_relset_1 @ sk_A @ sk_B @ sk_C @ sk_D)
% 0.20/0.47        | ((sk_B) = (k1_tarski @ (sk_E @ sk_B))))),
% 0.20/0.47      inference('demod', [status(thm)], ['7', '9', '10', '11'])).
% 0.20/0.47  thf('13', plain, (![X15 : $i]: ((sk_B) != (k1_tarski @ X15))),
% 0.20/0.47      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.47  thf('14', plain, ((r1_relset_1 @ sk_A @ sk_B @ sk_C @ sk_D)),
% 0.20/0.47      inference('clc', [status(thm)], ['12', '13'])).
% 0.20/0.47  thf('15', plain,
% 0.20/0.47      ((m1_subset_1 @ sk_C @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_A @ sk_B)))),
% 0.20/0.47      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.47  thf(redefinition_r1_relset_1, axiom,
% 0.20/0.47    (![A:$i,B:$i,C:$i,D:$i]:
% 0.20/0.47     ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) =>
% 0.20/0.47       ( ( r1_relset_1 @ A @ B @ C @ D ) <=> ( r1_tarski @ C @ D ) ) ))).
% 0.20/0.47  thf('16', plain,
% 0.20/0.47      (![X3 : $i, X4 : $i, X5 : $i, X6 : $i]:
% 0.20/0.47         (~ (m1_subset_1 @ X3 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X4 @ X5)))
% 0.20/0.47          | (r1_tarski @ X3 @ X6)
% 0.20/0.47          | ~ (r1_relset_1 @ X4 @ X5 @ X3 @ X6))),
% 0.20/0.47      inference('cnf', [status(esa)], [redefinition_r1_relset_1])).
% 0.20/0.47  thf('17', plain,
% 0.20/0.47      (![X0 : $i]:
% 0.20/0.47         (~ (r1_relset_1 @ sk_A @ sk_B @ sk_C @ X0) | (r1_tarski @ sk_C @ X0))),
% 0.20/0.47      inference('sup-', [status(thm)], ['15', '16'])).
% 0.20/0.47  thf('18', plain, ((r1_tarski @ sk_C @ sk_D)),
% 0.20/0.47      inference('sup-', [status(thm)], ['14', '17'])).
% 0.20/0.47  thf('19', plain,
% 0.20/0.47      (![X0 : $i, X2 : $i]:
% 0.20/0.47         (((X0) = (X2)) | ~ (r1_tarski @ X2 @ X0) | ~ (r1_tarski @ X0 @ X2))),
% 0.20/0.47      inference('cnf', [status(esa)], [d10_xboole_0])).
% 0.20/0.47  thf('20', plain, ((~ (r1_tarski @ sk_D @ sk_C) | ((sk_D) = (sk_C)))),
% 0.20/0.47      inference('sup-', [status(thm)], ['18', '19'])).
% 0.20/0.47  thf('21', plain, (![X1 : $i]: (r1_tarski @ X1 @ X1)),
% 0.20/0.47      inference('simplify', [status(thm)], ['8'])).
% 0.20/0.47  thf('22', plain,
% 0.20/0.47      ((m1_subset_1 @ sk_D @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_A @ sk_B)))),
% 0.20/0.47      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.47  thf('23', plain,
% 0.20/0.47      (![X11 : $i, X12 : $i, X13 : $i, X14 : $i]:
% 0.20/0.47         (~ (v1_funct_1 @ X11)
% 0.20/0.47          | ~ (m1_subset_1 @ X11 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X12 @ X13)))
% 0.20/0.47          | (r1_relset_1 @ X12 @ X13 @ X11 @ X14)
% 0.20/0.47          | ~ (r1_tarski @ (k5_partfun1 @ X12 @ X13 @ X14) @ 
% 0.20/0.47               (k5_partfun1 @ X12 @ X13 @ X11))
% 0.20/0.47          | ((X13) = (k1_tarski @ (sk_E @ X13)))
% 0.20/0.47          | ~ (m1_subset_1 @ X14 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X12 @ X13)))
% 0.20/0.47          | ~ (v1_funct_1 @ X14))),
% 0.20/0.47      inference('cnf', [status(esa)], [t167_funct_2])).
% 0.20/0.47  thf('24', plain,
% 0.20/0.47      (![X0 : $i]:
% 0.20/0.47         (~ (v1_funct_1 @ X0)
% 0.20/0.47          | ~ (m1_subset_1 @ X0 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_A @ sk_B)))
% 0.20/0.47          | ((sk_B) = (k1_tarski @ (sk_E @ sk_B)))
% 0.20/0.47          | ~ (r1_tarski @ (k5_partfun1 @ sk_A @ sk_B @ X0) @ 
% 0.20/0.47               (k5_partfun1 @ sk_A @ sk_B @ sk_D))
% 0.20/0.47          | (r1_relset_1 @ sk_A @ sk_B @ sk_D @ X0)
% 0.20/0.47          | ~ (v1_funct_1 @ sk_D))),
% 0.20/0.47      inference('sup-', [status(thm)], ['22', '23'])).
% 0.20/0.47  thf('25', plain,
% 0.20/0.47      (((k5_partfun1 @ sk_A @ sk_B @ sk_C) = (k5_partfun1 @ sk_A @ sk_B @ sk_D))),
% 0.20/0.47      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.47  thf('26', plain, ((v1_funct_1 @ sk_D)),
% 0.20/0.47      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.47  thf('27', plain,
% 0.20/0.47      (![X0 : $i]:
% 0.20/0.47         (~ (v1_funct_1 @ X0)
% 0.20/0.47          | ~ (m1_subset_1 @ X0 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_A @ sk_B)))
% 0.20/0.47          | ((sk_B) = (k1_tarski @ (sk_E @ sk_B)))
% 0.20/0.47          | ~ (r1_tarski @ (k5_partfun1 @ sk_A @ sk_B @ X0) @ 
% 0.20/0.47               (k5_partfun1 @ sk_A @ sk_B @ sk_C))
% 0.20/0.47          | (r1_relset_1 @ sk_A @ sk_B @ sk_D @ X0))),
% 0.20/0.47      inference('demod', [status(thm)], ['24', '25', '26'])).
% 0.20/0.47  thf('28', plain,
% 0.20/0.47      (((r1_relset_1 @ sk_A @ sk_B @ sk_D @ sk_C)
% 0.20/0.47        | ((sk_B) = (k1_tarski @ (sk_E @ sk_B)))
% 0.20/0.47        | ~ (m1_subset_1 @ sk_C @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_A @ sk_B)))
% 0.20/0.47        | ~ (v1_funct_1 @ sk_C))),
% 0.20/0.47      inference('sup-', [status(thm)], ['21', '27'])).
% 0.20/0.47  thf('29', plain,
% 0.20/0.47      ((m1_subset_1 @ sk_C @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_A @ sk_B)))),
% 0.20/0.47      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.47  thf('30', plain, ((v1_funct_1 @ sk_C)),
% 0.20/0.47      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.47  thf('31', plain,
% 0.20/0.47      (((r1_relset_1 @ sk_A @ sk_B @ sk_D @ sk_C)
% 0.20/0.47        | ((sk_B) = (k1_tarski @ (sk_E @ sk_B))))),
% 0.20/0.47      inference('demod', [status(thm)], ['28', '29', '30'])).
% 0.20/0.47  thf('32', plain, (![X15 : $i]: ((sk_B) != (k1_tarski @ X15))),
% 0.20/0.47      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.47  thf('33', plain, ((r1_relset_1 @ sk_A @ sk_B @ sk_D @ sk_C)),
% 0.20/0.47      inference('clc', [status(thm)], ['31', '32'])).
% 0.20/0.47  thf('34', plain,
% 0.20/0.47      ((m1_subset_1 @ sk_D @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_A @ sk_B)))),
% 0.20/0.47      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.47  thf('35', plain,
% 0.20/0.47      (![X3 : $i, X4 : $i, X5 : $i, X6 : $i]:
% 0.20/0.47         (~ (m1_subset_1 @ X3 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X4 @ X5)))
% 0.20/0.47          | (r1_tarski @ X3 @ X6)
% 0.20/0.47          | ~ (r1_relset_1 @ X4 @ X5 @ X3 @ X6))),
% 0.20/0.47      inference('cnf', [status(esa)], [redefinition_r1_relset_1])).
% 0.20/0.47  thf('36', plain,
% 0.20/0.47      (![X0 : $i]:
% 0.20/0.47         (~ (r1_relset_1 @ sk_A @ sk_B @ sk_D @ X0) | (r1_tarski @ sk_D @ X0))),
% 0.20/0.47      inference('sup-', [status(thm)], ['34', '35'])).
% 0.20/0.47  thf('37', plain, ((r1_tarski @ sk_D @ sk_C)),
% 0.20/0.47      inference('sup-', [status(thm)], ['33', '36'])).
% 0.20/0.47  thf('38', plain, (((sk_D) = (sk_C))),
% 0.20/0.47      inference('demod', [status(thm)], ['20', '37'])).
% 0.20/0.47  thf('39', plain,
% 0.20/0.47      ((m1_subset_1 @ sk_C @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_A @ sk_B)))),
% 0.20/0.47      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.47  thf(reflexivity_r2_relset_1, axiom,
% 0.20/0.47    (![A:$i,B:$i,C:$i,D:$i]:
% 0.20/0.47     ( ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) & 
% 0.20/0.47         ( m1_subset_1 @ D @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) ) =>
% 0.20/0.47       ( r2_relset_1 @ A @ B @ C @ C ) ))).
% 0.20/0.47  thf('40', plain,
% 0.20/0.47      (![X7 : $i, X8 : $i, X9 : $i, X10 : $i]:
% 0.20/0.47         ((r2_relset_1 @ X7 @ X8 @ X9 @ X9)
% 0.20/0.47          | ~ (m1_subset_1 @ X9 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X7 @ X8)))
% 0.20/0.47          | ~ (m1_subset_1 @ X10 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X7 @ X8))))),
% 0.20/0.47      inference('cnf', [status(esa)], [reflexivity_r2_relset_1])).
% 0.20/0.47  thf('41', plain,
% 0.20/0.47      (![X0 : $i, X1 : $i, X2 : $i]:
% 0.20/0.47         ((r2_relset_1 @ X2 @ X1 @ X0 @ X0)
% 0.20/0.47          | ~ (m1_subset_1 @ X0 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X2 @ X1))))),
% 0.20/0.47      inference('condensation', [status(thm)], ['40'])).
% 0.20/0.47  thf('42', plain, ((r2_relset_1 @ sk_A @ sk_B @ sk_C @ sk_C)),
% 0.20/0.47      inference('sup-', [status(thm)], ['39', '41'])).
% 0.20/0.47  thf('43', plain, ($false),
% 0.20/0.47      inference('demod', [status(thm)], ['0', '38', '42'])).
% 0.20/0.47  
% 0.20/0.47  % SZS output end Refutation
% 0.20/0.47  
% 0.20/0.48  % Zipperpin 1.5 exiting
%------------------------------------------------------------------------------
