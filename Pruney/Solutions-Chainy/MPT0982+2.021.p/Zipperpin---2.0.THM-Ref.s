%------------------------------------------------------------------------------
% File       : Zipperpin---2.0
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_portfolio.sh /export/starexec/sandbox2/benchmark/theBenchmark.p /export/starexec/sandbox2/tmp/tmp.SmqZrArpkZ

% Computer   : n010.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 13:53:58 EST 2020

% Result     : Theorem 0.89s
% Output     : Refutation 0.89s
% Verified   : 
% Statistics : Number of formulae       :  129 ( 288 expanded)
%              Number of leaves         :   43 ( 103 expanded)
%              Depth                    :   14
%              Number of atoms          : 1054 (5985 expanded)
%              Number of equality atoms :   62 ( 352 expanded)
%              Maximal formula depth    :   19 (   6 average)

% Comments   : 
%------------------------------------------------------------------------------
thf(sk_E_type,type,(
    sk_E: $i )).

thf(zip_tseitin_1_type,type,(
    zip_tseitin_1: $i > $i > $i > $o )).

thf(v1_funct_1_type,type,(
    v1_funct_1: $i > $o )).

thf(sk_C_type,type,(
    sk_C: $i )).

thf(k2_relset_1_type,type,(
    k2_relset_1: $i > $i > $i > $i )).

thf(k1_xboole_0_type,type,(
    k1_xboole_0: $i )).

thf(zip_tseitin_0_type,type,(
    zip_tseitin_0: $i > $i > $o )).

thf(v5_relat_1_type,type,(
    v5_relat_1: $i > $i > $o )).

thf(k1_relset_1_type,type,(
    k1_relset_1: $i > $i > $i > $i )).

thf(k2_zfmisc_1_type,type,(
    k2_zfmisc_1: $i > $i > $i )).

thf(k2_relat_1_type,type,(
    k2_relat_1: $i > $i )).

thf(k1_zfmisc_1_type,type,(
    k1_zfmisc_1: $i > $i )).

thf(sk_A_type,type,(
    sk_A: $i )).

thf(m1_subset_1_type,type,(
    m1_subset_1: $i > $i > $o )).

thf(sk_B_type,type,(
    sk_B: $i )).

thf(k4_relset_1_type,type,(
    k4_relset_1: $i > $i > $i > $i > $i > $i > $i )).

thf(r1_tarski_type,type,(
    r1_tarski: $i > $i > $o )).

thf(v1_funct_2_type,type,(
    v1_funct_2: $i > $i > $i > $o )).

thf(v4_relat_1_type,type,(
    v4_relat_1: $i > $i > $o )).

thf(k1_relat_1_type,type,(
    k1_relat_1: $i > $i )).

thf(sk_D_type,type,(
    sk_D: $i )).

thf(v2_funct_1_type,type,(
    v2_funct_1: $i > $o )).

thf(k5_relat_1_type,type,(
    k5_relat_1: $i > $i > $i )).

thf(k1_partfun1_type,type,(
    k1_partfun1: $i > $i > $i > $i > $i > $i > $i )).

thf(v1_relat_1_type,type,(
    v1_relat_1: $i > $o )).

thf(t28_funct_2,conjecture,(
    ! [A: $i,B: $i,C: $i,D: $i] :
      ( ( ( v1_funct_1 @ D )
        & ( v1_funct_2 @ D @ A @ B )
        & ( m1_subset_1 @ D @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) )
     => ! [E: $i] :
          ( ( ( v1_funct_1 @ E )
            & ( v1_funct_2 @ E @ B @ C )
            & ( m1_subset_1 @ E @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ B @ C ) ) ) )
         => ( ( ( ( k2_relset_1 @ A @ C @ ( k1_partfun1 @ A @ B @ B @ C @ D @ E ) )
                = C )
              & ( v2_funct_1 @ E ) )
           => ( ( C = k1_xboole_0 )
              | ( ( k2_relset_1 @ A @ B @ D )
                = B ) ) ) ) ) )).

thf(zf_stmt_0,negated_conjecture,(
    ~ ! [A: $i,B: $i,C: $i,D: $i] :
        ( ( ( v1_funct_1 @ D )
          & ( v1_funct_2 @ D @ A @ B )
          & ( m1_subset_1 @ D @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) )
       => ! [E: $i] :
            ( ( ( v1_funct_1 @ E )
              & ( v1_funct_2 @ E @ B @ C )
              & ( m1_subset_1 @ E @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ B @ C ) ) ) )
           => ( ( ( ( k2_relset_1 @ A @ C @ ( k1_partfun1 @ A @ B @ B @ C @ D @ E ) )
                  = C )
                & ( v2_funct_1 @ E ) )
             => ( ( C = k1_xboole_0 )
                | ( ( k2_relset_1 @ A @ B @ D )
                  = B ) ) ) ) ) ),
    inference('cnf.neg',[status(esa)],[t28_funct_2])).

thf('0',plain,(
    m1_subset_1 @ sk_D @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_A @ sk_B ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(cc2_relset_1,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) )
     => ( ( v4_relat_1 @ C @ A )
        & ( v5_relat_1 @ C @ B ) ) ) )).

thf('1',plain,(
    ! [X12: $i,X13: $i,X14: $i] :
      ( ( v5_relat_1 @ X12 @ X14 )
      | ~ ( m1_subset_1 @ X12 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X13 @ X14 ) ) ) ) ),
    inference(cnf,[status(esa)],[cc2_relset_1])).

thf('2',plain,(
    v5_relat_1 @ sk_D @ sk_B ),
    inference('sup-',[status(thm)],['0','1'])).

thf(d19_relat_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( v1_relat_1 @ B )
     => ( ( v5_relat_1 @ B @ A )
      <=> ( r1_tarski @ ( k2_relat_1 @ B ) @ A ) ) ) )).

thf('3',plain,(
    ! [X3: $i,X4: $i] :
      ( ~ ( v5_relat_1 @ X3 @ X4 )
      | ( r1_tarski @ ( k2_relat_1 @ X3 ) @ X4 )
      | ~ ( v1_relat_1 @ X3 ) ) ),
    inference(cnf,[status(esa)],[d19_relat_1])).

thf('4',plain,
    ( ~ ( v1_relat_1 @ sk_D )
    | ( r1_tarski @ ( k2_relat_1 @ sk_D ) @ sk_B ) ),
    inference('sup-',[status(thm)],['2','3'])).

thf('5',plain,(
    m1_subset_1 @ sk_D @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_A @ sk_B ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(cc1_relset_1,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) )
     => ( v1_relat_1 @ C ) ) )).

thf('6',plain,(
    ! [X9: $i,X10: $i,X11: $i] :
      ( ( v1_relat_1 @ X9 )
      | ~ ( m1_subset_1 @ X9 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X10 @ X11 ) ) ) ) ),
    inference(cnf,[status(esa)],[cc1_relset_1])).

thf('7',plain,(
    v1_relat_1 @ sk_D ),
    inference('sup-',[status(thm)],['5','6'])).

thf('8',plain,(
    r1_tarski @ ( k2_relat_1 @ sk_D ) @ sk_B ),
    inference(demod,[status(thm)],['4','7'])).

thf(d10_xboole_0,axiom,(
    ! [A: $i,B: $i] :
      ( ( A = B )
    <=> ( ( r1_tarski @ A @ B )
        & ( r1_tarski @ B @ A ) ) ) )).

thf('9',plain,(
    ! [X0: $i,X2: $i] :
      ( ( X0 = X2 )
      | ~ ( r1_tarski @ X2 @ X0 )
      | ~ ( r1_tarski @ X0 @ X2 ) ) ),
    inference(cnf,[status(esa)],[d10_xboole_0])).

thf('10',plain,
    ( ~ ( r1_tarski @ sk_B @ ( k2_relat_1 @ sk_D ) )
    | ( sk_B
      = ( k2_relat_1 @ sk_D ) ) ),
    inference('sup-',[status(thm)],['8','9'])).

thf('11',plain,(
    m1_subset_1 @ sk_E @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_B @ sk_C ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('12',plain,(
    m1_subset_1 @ sk_D @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_A @ sk_B ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(dt_k4_relset_1,axiom,(
    ! [A: $i,B: $i,C: $i,D: $i,E: $i,F: $i] :
      ( ( ( m1_subset_1 @ E @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) )
        & ( m1_subset_1 @ F @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ C @ D ) ) ) )
     => ( m1_subset_1 @ ( k4_relset_1 @ A @ B @ C @ D @ E @ F ) @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ D ) ) ) ) )).

thf('13',plain,(
    ! [X15: $i,X16: $i,X17: $i,X18: $i,X19: $i,X20: $i] :
      ( ~ ( m1_subset_1 @ X15 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X16 @ X17 ) ) )
      | ~ ( m1_subset_1 @ X18 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X19 @ X20 ) ) )
      | ( m1_subset_1 @ ( k4_relset_1 @ X16 @ X17 @ X19 @ X20 @ X15 @ X18 ) @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X16 @ X20 ) ) ) ) ),
    inference(cnf,[status(esa)],[dt_k4_relset_1])).

thf('14',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( ( m1_subset_1 @ ( k4_relset_1 @ sk_A @ sk_B @ X2 @ X0 @ sk_D @ X1 ) @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_A @ X0 ) ) )
      | ~ ( m1_subset_1 @ X1 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X2 @ X0 ) ) ) ) ),
    inference('sup-',[status(thm)],['12','13'])).

thf('15',plain,(
    m1_subset_1 @ ( k4_relset_1 @ sk_A @ sk_B @ sk_B @ sk_C @ sk_D @ sk_E ) @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_A @ sk_C ) ) ),
    inference('sup-',[status(thm)],['11','14'])).

thf('16',plain,(
    m1_subset_1 @ sk_E @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_B @ sk_C ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('17',plain,(
    m1_subset_1 @ sk_D @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_A @ sk_B ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(redefinition_k4_relset_1,axiom,(
    ! [A: $i,B: $i,C: $i,D: $i,E: $i,F: $i] :
      ( ( ( m1_subset_1 @ E @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) )
        & ( m1_subset_1 @ F @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ C @ D ) ) ) )
     => ( ( k4_relset_1 @ A @ B @ C @ D @ E @ F )
        = ( k5_relat_1 @ E @ F ) ) ) )).

thf('18',plain,(
    ! [X27: $i,X28: $i,X29: $i,X30: $i,X31: $i,X32: $i] :
      ( ~ ( m1_subset_1 @ X27 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X28 @ X29 ) ) )
      | ~ ( m1_subset_1 @ X30 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X31 @ X32 ) ) )
      | ( ( k4_relset_1 @ X28 @ X29 @ X31 @ X32 @ X27 @ X30 )
        = ( k5_relat_1 @ X27 @ X30 ) ) ) ),
    inference(cnf,[status(esa)],[redefinition_k4_relset_1])).

thf('19',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( ( ( k4_relset_1 @ sk_A @ sk_B @ X2 @ X1 @ sk_D @ X0 )
        = ( k5_relat_1 @ sk_D @ X0 ) )
      | ~ ( m1_subset_1 @ X0 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X2 @ X1 ) ) ) ) ),
    inference('sup-',[status(thm)],['17','18'])).

thf('20',plain,
    ( ( k4_relset_1 @ sk_A @ sk_B @ sk_B @ sk_C @ sk_D @ sk_E )
    = ( k5_relat_1 @ sk_D @ sk_E ) ),
    inference('sup-',[status(thm)],['16','19'])).

thf('21',plain,(
    m1_subset_1 @ ( k5_relat_1 @ sk_D @ sk_E ) @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_A @ sk_C ) ) ),
    inference(demod,[status(thm)],['15','20'])).

thf(redefinition_k2_relset_1,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) )
     => ( ( k2_relset_1 @ A @ B @ C )
        = ( k2_relat_1 @ C ) ) ) )).

thf('22',plain,(
    ! [X24: $i,X25: $i,X26: $i] :
      ( ( ( k2_relset_1 @ X25 @ X26 @ X24 )
        = ( k2_relat_1 @ X24 ) )
      | ~ ( m1_subset_1 @ X24 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X25 @ X26 ) ) ) ) ),
    inference(cnf,[status(esa)],[redefinition_k2_relset_1])).

thf('23',plain,
    ( ( k2_relset_1 @ sk_A @ sk_C @ ( k5_relat_1 @ sk_D @ sk_E ) )
    = ( k2_relat_1 @ ( k5_relat_1 @ sk_D @ sk_E ) ) ),
    inference('sup-',[status(thm)],['21','22'])).

thf('24',plain,
    ( ( k2_relset_1 @ sk_A @ sk_C @ ( k1_partfun1 @ sk_A @ sk_B @ sk_B @ sk_C @ sk_D @ sk_E ) )
    = sk_C ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('25',plain,(
    m1_subset_1 @ sk_E @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_B @ sk_C ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('26',plain,(
    m1_subset_1 @ sk_D @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_A @ sk_B ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(redefinition_k1_partfun1,axiom,(
    ! [A: $i,B: $i,C: $i,D: $i,E: $i,F: $i] :
      ( ( ( v1_funct_1 @ E )
        & ( m1_subset_1 @ E @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) )
        & ( v1_funct_1 @ F )
        & ( m1_subset_1 @ F @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ C @ D ) ) ) )
     => ( ( k1_partfun1 @ A @ B @ C @ D @ E @ F )
        = ( k5_relat_1 @ E @ F ) ) ) )).

thf('27',plain,(
    ! [X41: $i,X42: $i,X43: $i,X44: $i,X45: $i,X46: $i] :
      ( ~ ( m1_subset_1 @ X41 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X42 @ X43 ) ) )
      | ~ ( v1_funct_1 @ X41 )
      | ~ ( v1_funct_1 @ X44 )
      | ~ ( m1_subset_1 @ X44 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X45 @ X46 ) ) )
      | ( ( k1_partfun1 @ X42 @ X43 @ X45 @ X46 @ X41 @ X44 )
        = ( k5_relat_1 @ X41 @ X44 ) ) ) ),
    inference(cnf,[status(esa)],[redefinition_k1_partfun1])).

thf('28',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( ( ( k1_partfun1 @ sk_A @ sk_B @ X2 @ X1 @ sk_D @ X0 )
        = ( k5_relat_1 @ sk_D @ X0 ) )
      | ~ ( m1_subset_1 @ X0 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X2 @ X1 ) ) )
      | ~ ( v1_funct_1 @ X0 )
      | ~ ( v1_funct_1 @ sk_D ) ) ),
    inference('sup-',[status(thm)],['26','27'])).

thf('29',plain,(
    v1_funct_1 @ sk_D ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('30',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( ( ( k1_partfun1 @ sk_A @ sk_B @ X2 @ X1 @ sk_D @ X0 )
        = ( k5_relat_1 @ sk_D @ X0 ) )
      | ~ ( m1_subset_1 @ X0 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X2 @ X1 ) ) )
      | ~ ( v1_funct_1 @ X0 ) ) ),
    inference(demod,[status(thm)],['28','29'])).

thf('31',plain,
    ( ~ ( v1_funct_1 @ sk_E )
    | ( ( k1_partfun1 @ sk_A @ sk_B @ sk_B @ sk_C @ sk_D @ sk_E )
      = ( k5_relat_1 @ sk_D @ sk_E ) ) ),
    inference('sup-',[status(thm)],['25','30'])).

thf('32',plain,(
    v1_funct_1 @ sk_E ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('33',plain,
    ( ( k1_partfun1 @ sk_A @ sk_B @ sk_B @ sk_C @ sk_D @ sk_E )
    = ( k5_relat_1 @ sk_D @ sk_E ) ),
    inference(demod,[status(thm)],['31','32'])).

thf('34',plain,
    ( ( k2_relset_1 @ sk_A @ sk_C @ ( k5_relat_1 @ sk_D @ sk_E ) )
    = sk_C ),
    inference(demod,[status(thm)],['24','33'])).

thf('35',plain,
    ( ( k2_relat_1 @ ( k5_relat_1 @ sk_D @ sk_E ) )
    = sk_C ),
    inference('sup+',[status(thm)],['23','34'])).

thf(t51_funct_1,axiom,(
    ! [A: $i] :
      ( ( ( v1_relat_1 @ A )
        & ( v1_funct_1 @ A ) )
     => ! [B: $i] :
          ( ( ( v1_relat_1 @ B )
            & ( v1_funct_1 @ B ) )
         => ( ( ( ( k2_relat_1 @ ( k5_relat_1 @ B @ A ) )
                = ( k2_relat_1 @ A ) )
              & ( v2_funct_1 @ A ) )
           => ( r1_tarski @ ( k1_relat_1 @ A ) @ ( k2_relat_1 @ B ) ) ) ) ) )).

thf('36',plain,(
    ! [X7: $i,X8: $i] :
      ( ~ ( v1_relat_1 @ X7 )
      | ~ ( v1_funct_1 @ X7 )
      | ( r1_tarski @ ( k1_relat_1 @ X8 ) @ ( k2_relat_1 @ X7 ) )
      | ( ( k2_relat_1 @ ( k5_relat_1 @ X7 @ X8 ) )
       != ( k2_relat_1 @ X8 ) )
      | ~ ( v2_funct_1 @ X8 )
      | ~ ( v1_funct_1 @ X8 )
      | ~ ( v1_relat_1 @ X8 ) ) ),
    inference(cnf,[status(esa)],[t51_funct_1])).

thf('37',plain,
    ( ( sk_C
     != ( k2_relat_1 @ sk_E ) )
    | ~ ( v1_relat_1 @ sk_E )
    | ~ ( v1_funct_1 @ sk_E )
    | ~ ( v2_funct_1 @ sk_E )
    | ( r1_tarski @ ( k1_relat_1 @ sk_E ) @ ( k2_relat_1 @ sk_D ) )
    | ~ ( v1_funct_1 @ sk_D )
    | ~ ( v1_relat_1 @ sk_D ) ),
    inference('sup-',[status(thm)],['35','36'])).

thf('38',plain,(
    m1_subset_1 @ sk_E @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_B @ sk_C ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('39',plain,(
    ! [X9: $i,X10: $i,X11: $i] :
      ( ( v1_relat_1 @ X9 )
      | ~ ( m1_subset_1 @ X9 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X10 @ X11 ) ) ) ) ),
    inference(cnf,[status(esa)],[cc1_relset_1])).

thf('40',plain,(
    v1_relat_1 @ sk_E ),
    inference('sup-',[status(thm)],['38','39'])).

thf('41',plain,(
    v1_funct_1 @ sk_E ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('42',plain,(
    v2_funct_1 @ sk_E ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('43',plain,(
    v1_funct_2 @ sk_E @ sk_B @ sk_C ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(d1_funct_2,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) )
     => ( ( ( B = k1_xboole_0 )
         => ( ( ( v1_funct_2 @ C @ A @ B )
            <=> ( C = k1_xboole_0 ) )
            | ( A = k1_xboole_0 ) ) )
        & ( ( ( B = k1_xboole_0 )
           => ( A = k1_xboole_0 ) )
         => ( ( v1_funct_2 @ C @ A @ B )
          <=> ( A
              = ( k1_relset_1 @ A @ B @ C ) ) ) ) ) ) )).

thf(zf_stmt_1,axiom,(
    ! [C: $i,B: $i,A: $i] :
      ( ( zip_tseitin_1 @ C @ B @ A )
     => ( ( v1_funct_2 @ C @ A @ B )
      <=> ( A
          = ( k1_relset_1 @ A @ B @ C ) ) ) ) )).

thf('44',plain,(
    ! [X35: $i,X36: $i,X37: $i] :
      ( ~ ( v1_funct_2 @ X37 @ X35 @ X36 )
      | ( X35
        = ( k1_relset_1 @ X35 @ X36 @ X37 ) )
      | ~ ( zip_tseitin_1 @ X37 @ X36 @ X35 ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_1])).

thf('45',plain,
    ( ~ ( zip_tseitin_1 @ sk_E @ sk_C @ sk_B )
    | ( sk_B
      = ( k1_relset_1 @ sk_B @ sk_C @ sk_E ) ) ),
    inference('sup-',[status(thm)],['43','44'])).

thf(zf_stmt_2,axiom,(
    ! [B: $i,A: $i] :
      ( ( ( B = k1_xboole_0 )
       => ( A = k1_xboole_0 ) )
     => ( zip_tseitin_0 @ B @ A ) ) )).

thf('46',plain,(
    ! [X33: $i,X34: $i] :
      ( ( zip_tseitin_0 @ X33 @ X34 )
      | ( X33 = k1_xboole_0 ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_2])).

thf('47',plain,(
    m1_subset_1 @ sk_E @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_B @ sk_C ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(zf_stmt_3,type,(
    zip_tseitin_1: $i > $i > $i > $o )).

thf(zf_stmt_4,type,(
    zip_tseitin_0: $i > $i > $o )).

thf(zf_stmt_5,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) )
     => ( ( ( zip_tseitin_0 @ B @ A )
         => ( zip_tseitin_1 @ C @ B @ A ) )
        & ( ( B = k1_xboole_0 )
         => ( ( A = k1_xboole_0 )
            | ( ( v1_funct_2 @ C @ A @ B )
            <=> ( C = k1_xboole_0 ) ) ) ) ) ) )).

thf('48',plain,(
    ! [X38: $i,X39: $i,X40: $i] :
      ( ~ ( zip_tseitin_0 @ X38 @ X39 )
      | ( zip_tseitin_1 @ X40 @ X38 @ X39 )
      | ~ ( m1_subset_1 @ X40 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X39 @ X38 ) ) ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_5])).

thf('49',plain,
    ( ( zip_tseitin_1 @ sk_E @ sk_C @ sk_B )
    | ~ ( zip_tseitin_0 @ sk_C @ sk_B ) ),
    inference('sup-',[status(thm)],['47','48'])).

thf('50',plain,
    ( ( sk_C = k1_xboole_0 )
    | ( zip_tseitin_1 @ sk_E @ sk_C @ sk_B ) ),
    inference('sup-',[status(thm)],['46','49'])).

thf('51',plain,(
    sk_C != k1_xboole_0 ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('52',plain,(
    zip_tseitin_1 @ sk_E @ sk_C @ sk_B ),
    inference('simplify_reflect-',[status(thm)],['50','51'])).

thf('53',plain,(
    m1_subset_1 @ sk_E @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_B @ sk_C ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(redefinition_k1_relset_1,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) )
     => ( ( k1_relset_1 @ A @ B @ C )
        = ( k1_relat_1 @ C ) ) ) )).

thf('54',plain,(
    ! [X21: $i,X22: $i,X23: $i] :
      ( ( ( k1_relset_1 @ X22 @ X23 @ X21 )
        = ( k1_relat_1 @ X21 ) )
      | ~ ( m1_subset_1 @ X21 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X22 @ X23 ) ) ) ) ),
    inference(cnf,[status(esa)],[redefinition_k1_relset_1])).

thf('55',plain,
    ( ( k1_relset_1 @ sk_B @ sk_C @ sk_E )
    = ( k1_relat_1 @ sk_E ) ),
    inference('sup-',[status(thm)],['53','54'])).

thf('56',plain,
    ( sk_B
    = ( k1_relat_1 @ sk_E ) ),
    inference(demod,[status(thm)],['45','52','55'])).

thf('57',plain,(
    v1_funct_1 @ sk_D ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('58',plain,(
    v1_relat_1 @ sk_D ),
    inference('sup-',[status(thm)],['5','6'])).

thf('59',plain,
    ( ( sk_C
     != ( k2_relat_1 @ sk_E ) )
    | ( r1_tarski @ sk_B @ ( k2_relat_1 @ sk_D ) ) ),
    inference(demod,[status(thm)],['37','40','41','42','56','57','58'])).

thf('60',plain,
    ( ( k2_relat_1 @ ( k5_relat_1 @ sk_D @ sk_E ) )
    = sk_C ),
    inference('sup+',[status(thm)],['23','34'])).

thf(t45_relat_1,axiom,(
    ! [A: $i] :
      ( ( v1_relat_1 @ A )
     => ! [B: $i] :
          ( ( v1_relat_1 @ B )
         => ( r1_tarski @ ( k2_relat_1 @ ( k5_relat_1 @ A @ B ) ) @ ( k2_relat_1 @ B ) ) ) ) )).

thf('61',plain,(
    ! [X5: $i,X6: $i] :
      ( ~ ( v1_relat_1 @ X5 )
      | ( r1_tarski @ ( k2_relat_1 @ ( k5_relat_1 @ X6 @ X5 ) ) @ ( k2_relat_1 @ X5 ) )
      | ~ ( v1_relat_1 @ X6 ) ) ),
    inference(cnf,[status(esa)],[t45_relat_1])).

thf('62',plain,(
    ! [X0: $i,X2: $i] :
      ( ( X0 = X2 )
      | ~ ( r1_tarski @ X2 @ X0 )
      | ~ ( r1_tarski @ X0 @ X2 ) ) ),
    inference(cnf,[status(esa)],[d10_xboole_0])).

thf('63',plain,(
    ! [X0: $i,X1: $i] :
      ( ~ ( v1_relat_1 @ X1 )
      | ~ ( v1_relat_1 @ X0 )
      | ~ ( r1_tarski @ ( k2_relat_1 @ X0 ) @ ( k2_relat_1 @ ( k5_relat_1 @ X1 @ X0 ) ) )
      | ( ( k2_relat_1 @ X0 )
        = ( k2_relat_1 @ ( k5_relat_1 @ X1 @ X0 ) ) ) ) ),
    inference('sup-',[status(thm)],['61','62'])).

thf('64',plain,
    ( ~ ( r1_tarski @ ( k2_relat_1 @ sk_E ) @ sk_C )
    | ( ( k2_relat_1 @ sk_E )
      = ( k2_relat_1 @ ( k5_relat_1 @ sk_D @ sk_E ) ) )
    | ~ ( v1_relat_1 @ sk_E )
    | ~ ( v1_relat_1 @ sk_D ) ),
    inference('sup-',[status(thm)],['60','63'])).

thf('65',plain,(
    m1_subset_1 @ sk_E @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_B @ sk_C ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('66',plain,(
    ! [X12: $i,X13: $i,X14: $i] :
      ( ( v5_relat_1 @ X12 @ X14 )
      | ~ ( m1_subset_1 @ X12 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X13 @ X14 ) ) ) ) ),
    inference(cnf,[status(esa)],[cc2_relset_1])).

thf('67',plain,(
    v5_relat_1 @ sk_E @ sk_C ),
    inference('sup-',[status(thm)],['65','66'])).

thf('68',plain,(
    ! [X3: $i,X4: $i] :
      ( ~ ( v5_relat_1 @ X3 @ X4 )
      | ( r1_tarski @ ( k2_relat_1 @ X3 ) @ X4 )
      | ~ ( v1_relat_1 @ X3 ) ) ),
    inference(cnf,[status(esa)],[d19_relat_1])).

thf('69',plain,
    ( ~ ( v1_relat_1 @ sk_E )
    | ( r1_tarski @ ( k2_relat_1 @ sk_E ) @ sk_C ) ),
    inference('sup-',[status(thm)],['67','68'])).

thf('70',plain,(
    v1_relat_1 @ sk_E ),
    inference('sup-',[status(thm)],['38','39'])).

thf('71',plain,(
    r1_tarski @ ( k2_relat_1 @ sk_E ) @ sk_C ),
    inference(demod,[status(thm)],['69','70'])).

thf('72',plain,
    ( ( k2_relat_1 @ ( k5_relat_1 @ sk_D @ sk_E ) )
    = sk_C ),
    inference('sup+',[status(thm)],['23','34'])).

thf('73',plain,(
    v1_relat_1 @ sk_E ),
    inference('sup-',[status(thm)],['38','39'])).

thf('74',plain,(
    v1_relat_1 @ sk_D ),
    inference('sup-',[status(thm)],['5','6'])).

thf('75',plain,
    ( ( k2_relat_1 @ sk_E )
    = sk_C ),
    inference(demod,[status(thm)],['64','71','72','73','74'])).

thf('76',plain,
    ( ( sk_C != sk_C )
    | ( r1_tarski @ sk_B @ ( k2_relat_1 @ sk_D ) ) ),
    inference(demod,[status(thm)],['59','75'])).

thf('77',plain,(
    r1_tarski @ sk_B @ ( k2_relat_1 @ sk_D ) ),
    inference(simplify,[status(thm)],['76'])).

thf('78',plain,
    ( sk_B
    = ( k2_relat_1 @ sk_D ) ),
    inference(demod,[status(thm)],['10','77'])).

thf('79',plain,(
    ( k2_relset_1 @ sk_A @ sk_B @ sk_D )
 != sk_B ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('80',plain,(
    m1_subset_1 @ sk_D @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_A @ sk_B ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('81',plain,(
    ! [X24: $i,X25: $i,X26: $i] :
      ( ( ( k2_relset_1 @ X25 @ X26 @ X24 )
        = ( k2_relat_1 @ X24 ) )
      | ~ ( m1_subset_1 @ X24 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X25 @ X26 ) ) ) ) ),
    inference(cnf,[status(esa)],[redefinition_k2_relset_1])).

thf('82',plain,
    ( ( k2_relset_1 @ sk_A @ sk_B @ sk_D )
    = ( k2_relat_1 @ sk_D ) ),
    inference('sup-',[status(thm)],['80','81'])).

thf('83',plain,(
    ( k2_relat_1 @ sk_D )
 != sk_B ),
    inference(demod,[status(thm)],['79','82'])).

thf('84',plain,(
    $false ),
    inference('simplify_reflect-',[status(thm)],['78','83'])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.11/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.11/0.13  % Command    : run_portfolio.sh /export/starexec/sandbox2/benchmark/theBenchmark.p /export/starexec/sandbox2/tmp/tmp.SmqZrArpkZ
% 0.13/0.35  % Computer   : n010.cluster.edu
% 0.13/0.35  % Model      : x86_64 x86_64
% 0.13/0.35  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.35  % Memory     : 8042.1875MB
% 0.13/0.35  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.35  % CPULimit   : 60
% 0.13/0.35  % DateTime   : Tue Dec  1 15:26:29 EST 2020
% 0.13/0.35  % CPUTime    : 
% 0.13/0.35  % Running portfolio for 600 s
% 0.13/0.35  % File         : /export/starexec/sandbox2/benchmark/theBenchmark.p
% 0.13/0.35  % Number of cores: 8
% 0.13/0.36  % Python version: Python 3.6.8
% 0.13/0.36  % Running in FO mode
% 0.89/1.07  % Running /export/starexec/sandbox2/solver/bin/fo/fo7.sh for 78
% 0.89/1.07  % Solved by: fo/fo7.sh
% 0.89/1.07  To remain in the chosen logic fragment, unification with booleans has been disabled.
% 0.89/1.07  % done 522 iterations in 0.608s
% 0.89/1.07  % SZS status Theorem for '/export/starexec/sandbox2/benchmark/theBenchmark.p'
% 0.89/1.07  % SZS output start Refutation
% 0.89/1.07  thf(sk_E_type, type, sk_E: $i).
% 0.89/1.07  thf(zip_tseitin_1_type, type, zip_tseitin_1: $i > $i > $i > $o).
% 0.89/1.07  thf(v1_funct_1_type, type, v1_funct_1: $i > $o).
% 0.89/1.07  thf(sk_C_type, type, sk_C: $i).
% 0.89/1.07  thf(k2_relset_1_type, type, k2_relset_1: $i > $i > $i > $i).
% 0.89/1.07  thf(k1_xboole_0_type, type, k1_xboole_0: $i).
% 0.89/1.07  thf(zip_tseitin_0_type, type, zip_tseitin_0: $i > $i > $o).
% 0.89/1.07  thf(v5_relat_1_type, type, v5_relat_1: $i > $i > $o).
% 0.89/1.07  thf(k1_relset_1_type, type, k1_relset_1: $i > $i > $i > $i).
% 0.89/1.07  thf(k2_zfmisc_1_type, type, k2_zfmisc_1: $i > $i > $i).
% 0.89/1.07  thf(k2_relat_1_type, type, k2_relat_1: $i > $i).
% 0.89/1.07  thf(k1_zfmisc_1_type, type, k1_zfmisc_1: $i > $i).
% 0.89/1.07  thf(sk_A_type, type, sk_A: $i).
% 0.89/1.07  thf(m1_subset_1_type, type, m1_subset_1: $i > $i > $o).
% 0.89/1.07  thf(sk_B_type, type, sk_B: $i).
% 0.89/1.07  thf(k4_relset_1_type, type, k4_relset_1: $i > $i > $i > $i > $i > $i > $i).
% 0.89/1.07  thf(r1_tarski_type, type, r1_tarski: $i > $i > $o).
% 0.89/1.07  thf(v1_funct_2_type, type, v1_funct_2: $i > $i > $i > $o).
% 0.89/1.07  thf(v4_relat_1_type, type, v4_relat_1: $i > $i > $o).
% 0.89/1.07  thf(k1_relat_1_type, type, k1_relat_1: $i > $i).
% 0.89/1.07  thf(sk_D_type, type, sk_D: $i).
% 0.89/1.07  thf(v2_funct_1_type, type, v2_funct_1: $i > $o).
% 0.89/1.07  thf(k5_relat_1_type, type, k5_relat_1: $i > $i > $i).
% 0.89/1.07  thf(k1_partfun1_type, type, k1_partfun1: $i > $i > $i > $i > $i > $i > $i).
% 0.89/1.07  thf(v1_relat_1_type, type, v1_relat_1: $i > $o).
% 0.89/1.07  thf(t28_funct_2, conjecture,
% 0.89/1.07    (![A:$i,B:$i,C:$i,D:$i]:
% 0.89/1.07     ( ( ( v1_funct_1 @ D ) & ( v1_funct_2 @ D @ A @ B ) & 
% 0.89/1.07         ( m1_subset_1 @ D @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) ) =>
% 0.89/1.07       ( ![E:$i]:
% 0.89/1.07         ( ( ( v1_funct_1 @ E ) & ( v1_funct_2 @ E @ B @ C ) & 
% 0.89/1.07             ( m1_subset_1 @ E @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ B @ C ) ) ) ) =>
% 0.89/1.07           ( ( ( ( k2_relset_1 @
% 0.89/1.07                   A @ C @ ( k1_partfun1 @ A @ B @ B @ C @ D @ E ) ) =
% 0.89/1.07                 ( C ) ) & 
% 0.89/1.07               ( v2_funct_1 @ E ) ) =>
% 0.89/1.07             ( ( ( C ) = ( k1_xboole_0 ) ) | 
% 0.89/1.07               ( ( k2_relset_1 @ A @ B @ D ) = ( B ) ) ) ) ) ) ))).
% 0.89/1.07  thf(zf_stmt_0, negated_conjecture,
% 0.89/1.07    (~( ![A:$i,B:$i,C:$i,D:$i]:
% 0.89/1.07        ( ( ( v1_funct_1 @ D ) & ( v1_funct_2 @ D @ A @ B ) & 
% 0.89/1.07            ( m1_subset_1 @ D @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) ) =>
% 0.89/1.07          ( ![E:$i]:
% 0.89/1.07            ( ( ( v1_funct_1 @ E ) & ( v1_funct_2 @ E @ B @ C ) & 
% 0.89/1.07                ( m1_subset_1 @ E @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ B @ C ) ) ) ) =>
% 0.89/1.07              ( ( ( ( k2_relset_1 @
% 0.89/1.07                      A @ C @ ( k1_partfun1 @ A @ B @ B @ C @ D @ E ) ) =
% 0.89/1.07                    ( C ) ) & 
% 0.89/1.07                  ( v2_funct_1 @ E ) ) =>
% 0.89/1.07                ( ( ( C ) = ( k1_xboole_0 ) ) | 
% 0.89/1.07                  ( ( k2_relset_1 @ A @ B @ D ) = ( B ) ) ) ) ) ) ) )),
% 0.89/1.07    inference('cnf.neg', [status(esa)], [t28_funct_2])).
% 0.89/1.07  thf('0', plain,
% 0.89/1.07      ((m1_subset_1 @ sk_D @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_A @ sk_B)))),
% 0.89/1.07      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.89/1.07  thf(cc2_relset_1, axiom,
% 0.89/1.07    (![A:$i,B:$i,C:$i]:
% 0.89/1.07     ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) =>
% 0.89/1.07       ( ( v4_relat_1 @ C @ A ) & ( v5_relat_1 @ C @ B ) ) ))).
% 0.89/1.07  thf('1', plain,
% 0.89/1.07      (![X12 : $i, X13 : $i, X14 : $i]:
% 0.89/1.07         ((v5_relat_1 @ X12 @ X14)
% 0.89/1.07          | ~ (m1_subset_1 @ X12 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X13 @ X14))))),
% 0.89/1.07      inference('cnf', [status(esa)], [cc2_relset_1])).
% 0.89/1.07  thf('2', plain, ((v5_relat_1 @ sk_D @ sk_B)),
% 0.89/1.07      inference('sup-', [status(thm)], ['0', '1'])).
% 0.89/1.07  thf(d19_relat_1, axiom,
% 0.89/1.07    (![A:$i,B:$i]:
% 0.89/1.07     ( ( v1_relat_1 @ B ) =>
% 0.89/1.07       ( ( v5_relat_1 @ B @ A ) <=> ( r1_tarski @ ( k2_relat_1 @ B ) @ A ) ) ))).
% 0.89/1.07  thf('3', plain,
% 0.89/1.07      (![X3 : $i, X4 : $i]:
% 0.89/1.07         (~ (v5_relat_1 @ X3 @ X4)
% 0.89/1.07          | (r1_tarski @ (k2_relat_1 @ X3) @ X4)
% 0.89/1.07          | ~ (v1_relat_1 @ X3))),
% 0.89/1.07      inference('cnf', [status(esa)], [d19_relat_1])).
% 0.89/1.07  thf('4', plain,
% 0.89/1.07      ((~ (v1_relat_1 @ sk_D) | (r1_tarski @ (k2_relat_1 @ sk_D) @ sk_B))),
% 0.89/1.07      inference('sup-', [status(thm)], ['2', '3'])).
% 0.89/1.07  thf('5', plain,
% 0.89/1.07      ((m1_subset_1 @ sk_D @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_A @ sk_B)))),
% 0.89/1.07      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.89/1.07  thf(cc1_relset_1, axiom,
% 0.89/1.07    (![A:$i,B:$i,C:$i]:
% 0.89/1.07     ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) =>
% 0.89/1.07       ( v1_relat_1 @ C ) ))).
% 0.89/1.07  thf('6', plain,
% 0.89/1.07      (![X9 : $i, X10 : $i, X11 : $i]:
% 0.89/1.07         ((v1_relat_1 @ X9)
% 0.89/1.07          | ~ (m1_subset_1 @ X9 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X10 @ X11))))),
% 0.89/1.07      inference('cnf', [status(esa)], [cc1_relset_1])).
% 0.89/1.07  thf('7', plain, ((v1_relat_1 @ sk_D)),
% 0.89/1.07      inference('sup-', [status(thm)], ['5', '6'])).
% 0.89/1.07  thf('8', plain, ((r1_tarski @ (k2_relat_1 @ sk_D) @ sk_B)),
% 0.89/1.07      inference('demod', [status(thm)], ['4', '7'])).
% 0.89/1.07  thf(d10_xboole_0, axiom,
% 0.89/1.07    (![A:$i,B:$i]:
% 0.89/1.07     ( ( ( A ) = ( B ) ) <=> ( ( r1_tarski @ A @ B ) & ( r1_tarski @ B @ A ) ) ))).
% 0.89/1.07  thf('9', plain,
% 0.89/1.07      (![X0 : $i, X2 : $i]:
% 0.89/1.07         (((X0) = (X2)) | ~ (r1_tarski @ X2 @ X0) | ~ (r1_tarski @ X0 @ X2))),
% 0.89/1.07      inference('cnf', [status(esa)], [d10_xboole_0])).
% 0.89/1.07  thf('10', plain,
% 0.89/1.07      ((~ (r1_tarski @ sk_B @ (k2_relat_1 @ sk_D))
% 0.89/1.07        | ((sk_B) = (k2_relat_1 @ sk_D)))),
% 0.89/1.07      inference('sup-', [status(thm)], ['8', '9'])).
% 0.89/1.07  thf('11', plain,
% 0.89/1.07      ((m1_subset_1 @ sk_E @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_B @ sk_C)))),
% 0.89/1.07      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.89/1.07  thf('12', plain,
% 0.89/1.07      ((m1_subset_1 @ sk_D @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_A @ sk_B)))),
% 0.89/1.07      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.89/1.07  thf(dt_k4_relset_1, axiom,
% 0.89/1.07    (![A:$i,B:$i,C:$i,D:$i,E:$i,F:$i]:
% 0.89/1.07     ( ( ( m1_subset_1 @ E @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) & 
% 0.89/1.07         ( m1_subset_1 @ F @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ C @ D ) ) ) ) =>
% 0.89/1.07       ( m1_subset_1 @
% 0.89/1.07         ( k4_relset_1 @ A @ B @ C @ D @ E @ F ) @ 
% 0.89/1.07         ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ D ) ) ) ))).
% 0.89/1.07  thf('13', plain,
% 0.89/1.07      (![X15 : $i, X16 : $i, X17 : $i, X18 : $i, X19 : $i, X20 : $i]:
% 0.89/1.07         (~ (m1_subset_1 @ X15 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X16 @ X17)))
% 0.89/1.07          | ~ (m1_subset_1 @ X18 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X19 @ X20)))
% 0.89/1.07          | (m1_subset_1 @ (k4_relset_1 @ X16 @ X17 @ X19 @ X20 @ X15 @ X18) @ 
% 0.89/1.07             (k1_zfmisc_1 @ (k2_zfmisc_1 @ X16 @ X20))))),
% 0.89/1.07      inference('cnf', [status(esa)], [dt_k4_relset_1])).
% 0.89/1.07  thf('14', plain,
% 0.89/1.07      (![X0 : $i, X1 : $i, X2 : $i]:
% 0.89/1.07         ((m1_subset_1 @ (k4_relset_1 @ sk_A @ sk_B @ X2 @ X0 @ sk_D @ X1) @ 
% 0.89/1.07           (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_A @ X0)))
% 0.89/1.07          | ~ (m1_subset_1 @ X1 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X2 @ X0))))),
% 0.89/1.07      inference('sup-', [status(thm)], ['12', '13'])).
% 0.89/1.07  thf('15', plain,
% 0.89/1.07      ((m1_subset_1 @ 
% 0.89/1.07        (k4_relset_1 @ sk_A @ sk_B @ sk_B @ sk_C @ sk_D @ sk_E) @ 
% 0.89/1.07        (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_A @ sk_C)))),
% 0.89/1.07      inference('sup-', [status(thm)], ['11', '14'])).
% 0.89/1.07  thf('16', plain,
% 0.89/1.07      ((m1_subset_1 @ sk_E @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_B @ sk_C)))),
% 0.89/1.07      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.89/1.07  thf('17', plain,
% 0.89/1.07      ((m1_subset_1 @ sk_D @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_A @ sk_B)))),
% 0.89/1.07      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.89/1.07  thf(redefinition_k4_relset_1, axiom,
% 0.89/1.07    (![A:$i,B:$i,C:$i,D:$i,E:$i,F:$i]:
% 0.89/1.07     ( ( ( m1_subset_1 @ E @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) & 
% 0.89/1.07         ( m1_subset_1 @ F @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ C @ D ) ) ) ) =>
% 0.89/1.07       ( ( k4_relset_1 @ A @ B @ C @ D @ E @ F ) = ( k5_relat_1 @ E @ F ) ) ))).
% 0.89/1.07  thf('18', plain,
% 0.89/1.07      (![X27 : $i, X28 : $i, X29 : $i, X30 : $i, X31 : $i, X32 : $i]:
% 0.89/1.07         (~ (m1_subset_1 @ X27 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X28 @ X29)))
% 0.89/1.07          | ~ (m1_subset_1 @ X30 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X31 @ X32)))
% 0.89/1.07          | ((k4_relset_1 @ X28 @ X29 @ X31 @ X32 @ X27 @ X30)
% 0.89/1.07              = (k5_relat_1 @ X27 @ X30)))),
% 0.89/1.07      inference('cnf', [status(esa)], [redefinition_k4_relset_1])).
% 0.89/1.07  thf('19', plain,
% 0.89/1.07      (![X0 : $i, X1 : $i, X2 : $i]:
% 0.89/1.07         (((k4_relset_1 @ sk_A @ sk_B @ X2 @ X1 @ sk_D @ X0)
% 0.89/1.07            = (k5_relat_1 @ sk_D @ X0))
% 0.89/1.07          | ~ (m1_subset_1 @ X0 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X2 @ X1))))),
% 0.89/1.07      inference('sup-', [status(thm)], ['17', '18'])).
% 0.89/1.07  thf('20', plain,
% 0.89/1.07      (((k4_relset_1 @ sk_A @ sk_B @ sk_B @ sk_C @ sk_D @ sk_E)
% 0.89/1.07         = (k5_relat_1 @ sk_D @ sk_E))),
% 0.89/1.07      inference('sup-', [status(thm)], ['16', '19'])).
% 0.89/1.07  thf('21', plain,
% 0.89/1.07      ((m1_subset_1 @ (k5_relat_1 @ sk_D @ sk_E) @ 
% 0.89/1.07        (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_A @ sk_C)))),
% 0.89/1.07      inference('demod', [status(thm)], ['15', '20'])).
% 0.89/1.07  thf(redefinition_k2_relset_1, axiom,
% 0.89/1.07    (![A:$i,B:$i,C:$i]:
% 0.89/1.07     ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) =>
% 0.89/1.07       ( ( k2_relset_1 @ A @ B @ C ) = ( k2_relat_1 @ C ) ) ))).
% 0.89/1.07  thf('22', plain,
% 0.89/1.07      (![X24 : $i, X25 : $i, X26 : $i]:
% 0.89/1.07         (((k2_relset_1 @ X25 @ X26 @ X24) = (k2_relat_1 @ X24))
% 0.89/1.07          | ~ (m1_subset_1 @ X24 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X25 @ X26))))),
% 0.89/1.07      inference('cnf', [status(esa)], [redefinition_k2_relset_1])).
% 0.89/1.07  thf('23', plain,
% 0.89/1.07      (((k2_relset_1 @ sk_A @ sk_C @ (k5_relat_1 @ sk_D @ sk_E))
% 0.89/1.07         = (k2_relat_1 @ (k5_relat_1 @ sk_D @ sk_E)))),
% 0.89/1.07      inference('sup-', [status(thm)], ['21', '22'])).
% 0.89/1.07  thf('24', plain,
% 0.89/1.07      (((k2_relset_1 @ sk_A @ sk_C @ 
% 0.89/1.07         (k1_partfun1 @ sk_A @ sk_B @ sk_B @ sk_C @ sk_D @ sk_E)) = (sk_C))),
% 0.89/1.07      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.89/1.07  thf('25', plain,
% 0.89/1.07      ((m1_subset_1 @ sk_E @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_B @ sk_C)))),
% 0.89/1.07      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.89/1.07  thf('26', plain,
% 0.89/1.07      ((m1_subset_1 @ sk_D @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_A @ sk_B)))),
% 0.89/1.07      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.89/1.07  thf(redefinition_k1_partfun1, axiom,
% 0.89/1.07    (![A:$i,B:$i,C:$i,D:$i,E:$i,F:$i]:
% 0.89/1.07     ( ( ( v1_funct_1 @ E ) & 
% 0.89/1.07         ( m1_subset_1 @ E @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) & 
% 0.89/1.07         ( v1_funct_1 @ F ) & 
% 0.89/1.07         ( m1_subset_1 @ F @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ C @ D ) ) ) ) =>
% 0.89/1.07       ( ( k1_partfun1 @ A @ B @ C @ D @ E @ F ) = ( k5_relat_1 @ E @ F ) ) ))).
% 0.89/1.07  thf('27', plain,
% 0.89/1.07      (![X41 : $i, X42 : $i, X43 : $i, X44 : $i, X45 : $i, X46 : $i]:
% 0.89/1.07         (~ (m1_subset_1 @ X41 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X42 @ X43)))
% 0.89/1.07          | ~ (v1_funct_1 @ X41)
% 0.89/1.07          | ~ (v1_funct_1 @ X44)
% 0.89/1.07          | ~ (m1_subset_1 @ X44 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X45 @ X46)))
% 0.89/1.07          | ((k1_partfun1 @ X42 @ X43 @ X45 @ X46 @ X41 @ X44)
% 0.89/1.07              = (k5_relat_1 @ X41 @ X44)))),
% 0.89/1.07      inference('cnf', [status(esa)], [redefinition_k1_partfun1])).
% 0.89/1.07  thf('28', plain,
% 0.89/1.07      (![X0 : $i, X1 : $i, X2 : $i]:
% 0.89/1.07         (((k1_partfun1 @ sk_A @ sk_B @ X2 @ X1 @ sk_D @ X0)
% 0.89/1.07            = (k5_relat_1 @ sk_D @ X0))
% 0.89/1.07          | ~ (m1_subset_1 @ X0 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X2 @ X1)))
% 0.89/1.07          | ~ (v1_funct_1 @ X0)
% 0.89/1.07          | ~ (v1_funct_1 @ sk_D))),
% 0.89/1.07      inference('sup-', [status(thm)], ['26', '27'])).
% 0.89/1.07  thf('29', plain, ((v1_funct_1 @ sk_D)),
% 0.89/1.07      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.89/1.07  thf('30', plain,
% 0.89/1.07      (![X0 : $i, X1 : $i, X2 : $i]:
% 0.89/1.07         (((k1_partfun1 @ sk_A @ sk_B @ X2 @ X1 @ sk_D @ X0)
% 0.89/1.07            = (k5_relat_1 @ sk_D @ X0))
% 0.89/1.07          | ~ (m1_subset_1 @ X0 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X2 @ X1)))
% 0.89/1.07          | ~ (v1_funct_1 @ X0))),
% 0.89/1.07      inference('demod', [status(thm)], ['28', '29'])).
% 0.89/1.07  thf('31', plain,
% 0.89/1.07      ((~ (v1_funct_1 @ sk_E)
% 0.89/1.07        | ((k1_partfun1 @ sk_A @ sk_B @ sk_B @ sk_C @ sk_D @ sk_E)
% 0.89/1.07            = (k5_relat_1 @ sk_D @ sk_E)))),
% 0.89/1.07      inference('sup-', [status(thm)], ['25', '30'])).
% 0.89/1.07  thf('32', plain, ((v1_funct_1 @ sk_E)),
% 0.89/1.07      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.89/1.07  thf('33', plain,
% 0.89/1.07      (((k1_partfun1 @ sk_A @ sk_B @ sk_B @ sk_C @ sk_D @ sk_E)
% 0.89/1.07         = (k5_relat_1 @ sk_D @ sk_E))),
% 0.89/1.07      inference('demod', [status(thm)], ['31', '32'])).
% 0.89/1.07  thf('34', plain,
% 0.89/1.07      (((k2_relset_1 @ sk_A @ sk_C @ (k5_relat_1 @ sk_D @ sk_E)) = (sk_C))),
% 0.89/1.07      inference('demod', [status(thm)], ['24', '33'])).
% 0.89/1.07  thf('35', plain, (((k2_relat_1 @ (k5_relat_1 @ sk_D @ sk_E)) = (sk_C))),
% 0.89/1.07      inference('sup+', [status(thm)], ['23', '34'])).
% 0.89/1.07  thf(t51_funct_1, axiom,
% 0.89/1.07    (![A:$i]:
% 0.89/1.07     ( ( ( v1_relat_1 @ A ) & ( v1_funct_1 @ A ) ) =>
% 0.89/1.07       ( ![B:$i]:
% 0.89/1.07         ( ( ( v1_relat_1 @ B ) & ( v1_funct_1 @ B ) ) =>
% 0.89/1.07           ( ( ( ( k2_relat_1 @ ( k5_relat_1 @ B @ A ) ) = ( k2_relat_1 @ A ) ) & 
% 0.89/1.07               ( v2_funct_1 @ A ) ) =>
% 0.89/1.07             ( r1_tarski @ ( k1_relat_1 @ A ) @ ( k2_relat_1 @ B ) ) ) ) ) ))).
% 0.89/1.07  thf('36', plain,
% 0.89/1.07      (![X7 : $i, X8 : $i]:
% 0.89/1.07         (~ (v1_relat_1 @ X7)
% 0.89/1.07          | ~ (v1_funct_1 @ X7)
% 0.89/1.07          | (r1_tarski @ (k1_relat_1 @ X8) @ (k2_relat_1 @ X7))
% 0.89/1.07          | ((k2_relat_1 @ (k5_relat_1 @ X7 @ X8)) != (k2_relat_1 @ X8))
% 0.89/1.07          | ~ (v2_funct_1 @ X8)
% 0.89/1.07          | ~ (v1_funct_1 @ X8)
% 0.89/1.07          | ~ (v1_relat_1 @ X8))),
% 0.89/1.07      inference('cnf', [status(esa)], [t51_funct_1])).
% 0.89/1.07  thf('37', plain,
% 0.89/1.07      ((((sk_C) != (k2_relat_1 @ sk_E))
% 0.89/1.07        | ~ (v1_relat_1 @ sk_E)
% 0.89/1.07        | ~ (v1_funct_1 @ sk_E)
% 0.89/1.07        | ~ (v2_funct_1 @ sk_E)
% 0.89/1.07        | (r1_tarski @ (k1_relat_1 @ sk_E) @ (k2_relat_1 @ sk_D))
% 0.89/1.07        | ~ (v1_funct_1 @ sk_D)
% 0.89/1.07        | ~ (v1_relat_1 @ sk_D))),
% 0.89/1.07      inference('sup-', [status(thm)], ['35', '36'])).
% 0.89/1.07  thf('38', plain,
% 0.89/1.07      ((m1_subset_1 @ sk_E @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_B @ sk_C)))),
% 0.89/1.07      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.89/1.07  thf('39', plain,
% 0.89/1.07      (![X9 : $i, X10 : $i, X11 : $i]:
% 0.89/1.07         ((v1_relat_1 @ X9)
% 0.89/1.07          | ~ (m1_subset_1 @ X9 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X10 @ X11))))),
% 0.89/1.07      inference('cnf', [status(esa)], [cc1_relset_1])).
% 0.89/1.07  thf('40', plain, ((v1_relat_1 @ sk_E)),
% 0.89/1.07      inference('sup-', [status(thm)], ['38', '39'])).
% 0.89/1.07  thf('41', plain, ((v1_funct_1 @ sk_E)),
% 0.89/1.07      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.89/1.07  thf('42', plain, ((v2_funct_1 @ sk_E)),
% 0.89/1.07      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.89/1.07  thf('43', plain, ((v1_funct_2 @ sk_E @ sk_B @ sk_C)),
% 0.89/1.07      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.89/1.07  thf(d1_funct_2, axiom,
% 0.89/1.07    (![A:$i,B:$i,C:$i]:
% 0.89/1.07     ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) =>
% 0.89/1.07       ( ( ( ( B ) = ( k1_xboole_0 ) ) =>
% 0.89/1.07           ( ( ( v1_funct_2 @ C @ A @ B ) <=> ( ( C ) = ( k1_xboole_0 ) ) ) | 
% 0.89/1.07             ( ( A ) = ( k1_xboole_0 ) ) ) ) & 
% 0.89/1.07         ( ( ( ( B ) = ( k1_xboole_0 ) ) => ( ( A ) = ( k1_xboole_0 ) ) ) =>
% 0.89/1.07           ( ( v1_funct_2 @ C @ A @ B ) <=>
% 0.89/1.07             ( ( A ) = ( k1_relset_1 @ A @ B @ C ) ) ) ) ) ))).
% 0.89/1.07  thf(zf_stmt_1, axiom,
% 0.89/1.07    (![C:$i,B:$i,A:$i]:
% 0.89/1.07     ( ( zip_tseitin_1 @ C @ B @ A ) =>
% 0.89/1.07       ( ( v1_funct_2 @ C @ A @ B ) <=> ( ( A ) = ( k1_relset_1 @ A @ B @ C ) ) ) ))).
% 0.89/1.07  thf('44', plain,
% 0.89/1.07      (![X35 : $i, X36 : $i, X37 : $i]:
% 0.89/1.07         (~ (v1_funct_2 @ X37 @ X35 @ X36)
% 0.89/1.07          | ((X35) = (k1_relset_1 @ X35 @ X36 @ X37))
% 0.89/1.07          | ~ (zip_tseitin_1 @ X37 @ X36 @ X35))),
% 0.89/1.07      inference('cnf', [status(esa)], [zf_stmt_1])).
% 0.89/1.07  thf('45', plain,
% 0.89/1.07      ((~ (zip_tseitin_1 @ sk_E @ sk_C @ sk_B)
% 0.89/1.07        | ((sk_B) = (k1_relset_1 @ sk_B @ sk_C @ sk_E)))),
% 0.89/1.07      inference('sup-', [status(thm)], ['43', '44'])).
% 0.89/1.07  thf(zf_stmt_2, axiom,
% 0.89/1.07    (![B:$i,A:$i]:
% 0.89/1.07     ( ( ( ( B ) = ( k1_xboole_0 ) ) => ( ( A ) = ( k1_xboole_0 ) ) ) =>
% 0.89/1.07       ( zip_tseitin_0 @ B @ A ) ))).
% 0.89/1.07  thf('46', plain,
% 0.89/1.07      (![X33 : $i, X34 : $i]:
% 0.89/1.07         ((zip_tseitin_0 @ X33 @ X34) | ((X33) = (k1_xboole_0)))),
% 0.89/1.07      inference('cnf', [status(esa)], [zf_stmt_2])).
% 0.89/1.07  thf('47', plain,
% 0.89/1.07      ((m1_subset_1 @ sk_E @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_B @ sk_C)))),
% 0.89/1.07      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.89/1.07  thf(zf_stmt_3, type, zip_tseitin_1 : $i > $i > $i > $o).
% 0.89/1.07  thf(zf_stmt_4, type, zip_tseitin_0 : $i > $i > $o).
% 0.89/1.07  thf(zf_stmt_5, axiom,
% 0.89/1.07    (![A:$i,B:$i,C:$i]:
% 0.89/1.07     ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) =>
% 0.89/1.07       ( ( ( zip_tseitin_0 @ B @ A ) => ( zip_tseitin_1 @ C @ B @ A ) ) & 
% 0.89/1.07         ( ( ( B ) = ( k1_xboole_0 ) ) =>
% 0.89/1.07           ( ( ( A ) = ( k1_xboole_0 ) ) | 
% 0.89/1.07             ( ( v1_funct_2 @ C @ A @ B ) <=> ( ( C ) = ( k1_xboole_0 ) ) ) ) ) ) ))).
% 0.89/1.07  thf('48', plain,
% 0.89/1.07      (![X38 : $i, X39 : $i, X40 : $i]:
% 0.89/1.07         (~ (zip_tseitin_0 @ X38 @ X39)
% 0.89/1.07          | (zip_tseitin_1 @ X40 @ X38 @ X39)
% 0.89/1.07          | ~ (m1_subset_1 @ X40 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X39 @ X38))))),
% 0.89/1.07      inference('cnf', [status(esa)], [zf_stmt_5])).
% 0.89/1.07  thf('49', plain,
% 0.89/1.07      (((zip_tseitin_1 @ sk_E @ sk_C @ sk_B) | ~ (zip_tseitin_0 @ sk_C @ sk_B))),
% 0.89/1.07      inference('sup-', [status(thm)], ['47', '48'])).
% 0.89/1.07  thf('50', plain,
% 0.89/1.07      ((((sk_C) = (k1_xboole_0)) | (zip_tseitin_1 @ sk_E @ sk_C @ sk_B))),
% 0.89/1.07      inference('sup-', [status(thm)], ['46', '49'])).
% 0.89/1.07  thf('51', plain, (((sk_C) != (k1_xboole_0))),
% 0.89/1.07      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.89/1.07  thf('52', plain, ((zip_tseitin_1 @ sk_E @ sk_C @ sk_B)),
% 0.89/1.07      inference('simplify_reflect-', [status(thm)], ['50', '51'])).
% 0.89/1.07  thf('53', plain,
% 0.89/1.07      ((m1_subset_1 @ sk_E @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_B @ sk_C)))),
% 0.89/1.07      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.89/1.07  thf(redefinition_k1_relset_1, axiom,
% 0.89/1.07    (![A:$i,B:$i,C:$i]:
% 0.89/1.07     ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) =>
% 0.89/1.07       ( ( k1_relset_1 @ A @ B @ C ) = ( k1_relat_1 @ C ) ) ))).
% 0.89/1.07  thf('54', plain,
% 0.89/1.07      (![X21 : $i, X22 : $i, X23 : $i]:
% 0.89/1.07         (((k1_relset_1 @ X22 @ X23 @ X21) = (k1_relat_1 @ X21))
% 0.89/1.07          | ~ (m1_subset_1 @ X21 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X22 @ X23))))),
% 0.89/1.07      inference('cnf', [status(esa)], [redefinition_k1_relset_1])).
% 0.89/1.07  thf('55', plain,
% 0.89/1.07      (((k1_relset_1 @ sk_B @ sk_C @ sk_E) = (k1_relat_1 @ sk_E))),
% 0.89/1.07      inference('sup-', [status(thm)], ['53', '54'])).
% 0.89/1.07  thf('56', plain, (((sk_B) = (k1_relat_1 @ sk_E))),
% 0.89/1.07      inference('demod', [status(thm)], ['45', '52', '55'])).
% 0.89/1.07  thf('57', plain, ((v1_funct_1 @ sk_D)),
% 0.89/1.07      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.89/1.07  thf('58', plain, ((v1_relat_1 @ sk_D)),
% 0.89/1.07      inference('sup-', [status(thm)], ['5', '6'])).
% 0.89/1.07  thf('59', plain,
% 0.89/1.07      ((((sk_C) != (k2_relat_1 @ sk_E))
% 0.89/1.07        | (r1_tarski @ sk_B @ (k2_relat_1 @ sk_D)))),
% 0.89/1.07      inference('demod', [status(thm)],
% 0.89/1.07                ['37', '40', '41', '42', '56', '57', '58'])).
% 0.89/1.07  thf('60', plain, (((k2_relat_1 @ (k5_relat_1 @ sk_D @ sk_E)) = (sk_C))),
% 0.89/1.07      inference('sup+', [status(thm)], ['23', '34'])).
% 0.89/1.07  thf(t45_relat_1, axiom,
% 0.89/1.07    (![A:$i]:
% 0.89/1.07     ( ( v1_relat_1 @ A ) =>
% 0.89/1.07       ( ![B:$i]:
% 0.89/1.07         ( ( v1_relat_1 @ B ) =>
% 0.89/1.07           ( r1_tarski @
% 0.89/1.07             ( k2_relat_1 @ ( k5_relat_1 @ A @ B ) ) @ ( k2_relat_1 @ B ) ) ) ) ))).
% 0.89/1.07  thf('61', plain,
% 0.89/1.07      (![X5 : $i, X6 : $i]:
% 0.89/1.07         (~ (v1_relat_1 @ X5)
% 0.89/1.07          | (r1_tarski @ (k2_relat_1 @ (k5_relat_1 @ X6 @ X5)) @ 
% 0.89/1.07             (k2_relat_1 @ X5))
% 0.89/1.07          | ~ (v1_relat_1 @ X6))),
% 0.89/1.07      inference('cnf', [status(esa)], [t45_relat_1])).
% 0.89/1.07  thf('62', plain,
% 0.89/1.07      (![X0 : $i, X2 : $i]:
% 0.89/1.07         (((X0) = (X2)) | ~ (r1_tarski @ X2 @ X0) | ~ (r1_tarski @ X0 @ X2))),
% 0.89/1.07      inference('cnf', [status(esa)], [d10_xboole_0])).
% 0.89/1.07  thf('63', plain,
% 0.89/1.07      (![X0 : $i, X1 : $i]:
% 0.89/1.07         (~ (v1_relat_1 @ X1)
% 0.89/1.07          | ~ (v1_relat_1 @ X0)
% 0.89/1.07          | ~ (r1_tarski @ (k2_relat_1 @ X0) @ 
% 0.89/1.07               (k2_relat_1 @ (k5_relat_1 @ X1 @ X0)))
% 0.89/1.07          | ((k2_relat_1 @ X0) = (k2_relat_1 @ (k5_relat_1 @ X1 @ X0))))),
% 0.89/1.07      inference('sup-', [status(thm)], ['61', '62'])).
% 0.89/1.07  thf('64', plain,
% 0.89/1.07      ((~ (r1_tarski @ (k2_relat_1 @ sk_E) @ sk_C)
% 0.89/1.07        | ((k2_relat_1 @ sk_E) = (k2_relat_1 @ (k5_relat_1 @ sk_D @ sk_E)))
% 0.89/1.07        | ~ (v1_relat_1 @ sk_E)
% 0.89/1.07        | ~ (v1_relat_1 @ sk_D))),
% 0.89/1.07      inference('sup-', [status(thm)], ['60', '63'])).
% 0.89/1.07  thf('65', plain,
% 0.89/1.07      ((m1_subset_1 @ sk_E @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_B @ sk_C)))),
% 0.89/1.07      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.89/1.07  thf('66', plain,
% 0.89/1.07      (![X12 : $i, X13 : $i, X14 : $i]:
% 0.89/1.07         ((v5_relat_1 @ X12 @ X14)
% 0.89/1.07          | ~ (m1_subset_1 @ X12 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X13 @ X14))))),
% 0.89/1.07      inference('cnf', [status(esa)], [cc2_relset_1])).
% 0.89/1.07  thf('67', plain, ((v5_relat_1 @ sk_E @ sk_C)),
% 0.89/1.07      inference('sup-', [status(thm)], ['65', '66'])).
% 0.89/1.07  thf('68', plain,
% 0.89/1.07      (![X3 : $i, X4 : $i]:
% 0.89/1.07         (~ (v5_relat_1 @ X3 @ X4)
% 0.89/1.07          | (r1_tarski @ (k2_relat_1 @ X3) @ X4)
% 0.89/1.07          | ~ (v1_relat_1 @ X3))),
% 0.89/1.07      inference('cnf', [status(esa)], [d19_relat_1])).
% 0.89/1.07  thf('69', plain,
% 0.89/1.07      ((~ (v1_relat_1 @ sk_E) | (r1_tarski @ (k2_relat_1 @ sk_E) @ sk_C))),
% 0.89/1.07      inference('sup-', [status(thm)], ['67', '68'])).
% 0.89/1.07  thf('70', plain, ((v1_relat_1 @ sk_E)),
% 0.89/1.07      inference('sup-', [status(thm)], ['38', '39'])).
% 0.89/1.07  thf('71', plain, ((r1_tarski @ (k2_relat_1 @ sk_E) @ sk_C)),
% 0.89/1.07      inference('demod', [status(thm)], ['69', '70'])).
% 0.89/1.07  thf('72', plain, (((k2_relat_1 @ (k5_relat_1 @ sk_D @ sk_E)) = (sk_C))),
% 0.89/1.07      inference('sup+', [status(thm)], ['23', '34'])).
% 0.89/1.07  thf('73', plain, ((v1_relat_1 @ sk_E)),
% 0.89/1.07      inference('sup-', [status(thm)], ['38', '39'])).
% 0.89/1.07  thf('74', plain, ((v1_relat_1 @ sk_D)),
% 0.89/1.07      inference('sup-', [status(thm)], ['5', '6'])).
% 0.89/1.07  thf('75', plain, (((k2_relat_1 @ sk_E) = (sk_C))),
% 0.89/1.07      inference('demod', [status(thm)], ['64', '71', '72', '73', '74'])).
% 0.89/1.07  thf('76', plain,
% 0.89/1.07      ((((sk_C) != (sk_C)) | (r1_tarski @ sk_B @ (k2_relat_1 @ sk_D)))),
% 0.89/1.07      inference('demod', [status(thm)], ['59', '75'])).
% 0.89/1.07  thf('77', plain, ((r1_tarski @ sk_B @ (k2_relat_1 @ sk_D))),
% 0.89/1.07      inference('simplify', [status(thm)], ['76'])).
% 0.89/1.07  thf('78', plain, (((sk_B) = (k2_relat_1 @ sk_D))),
% 0.89/1.07      inference('demod', [status(thm)], ['10', '77'])).
% 0.89/1.07  thf('79', plain, (((k2_relset_1 @ sk_A @ sk_B @ sk_D) != (sk_B))),
% 0.89/1.07      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.89/1.07  thf('80', plain,
% 0.89/1.07      ((m1_subset_1 @ sk_D @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_A @ sk_B)))),
% 0.89/1.07      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.89/1.07  thf('81', plain,
% 0.89/1.07      (![X24 : $i, X25 : $i, X26 : $i]:
% 0.89/1.07         (((k2_relset_1 @ X25 @ X26 @ X24) = (k2_relat_1 @ X24))
% 0.89/1.07          | ~ (m1_subset_1 @ X24 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X25 @ X26))))),
% 0.89/1.07      inference('cnf', [status(esa)], [redefinition_k2_relset_1])).
% 0.89/1.07  thf('82', plain,
% 0.89/1.07      (((k2_relset_1 @ sk_A @ sk_B @ sk_D) = (k2_relat_1 @ sk_D))),
% 0.89/1.07      inference('sup-', [status(thm)], ['80', '81'])).
% 0.89/1.07  thf('83', plain, (((k2_relat_1 @ sk_D) != (sk_B))),
% 0.89/1.07      inference('demod', [status(thm)], ['79', '82'])).
% 0.89/1.07  thf('84', plain, ($false),
% 0.89/1.07      inference('simplify_reflect-', [status(thm)], ['78', '83'])).
% 0.89/1.07  
% 0.89/1.07  % SZS output end Refutation
% 0.89/1.07  
% 0.89/1.08  % Zipperpin 1.5 exiting
%------------------------------------------------------------------------------
