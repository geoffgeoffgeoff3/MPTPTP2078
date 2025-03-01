%------------------------------------------------------------------------------
% File       : Zipperpin---2.0
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_portfolio.sh /export/starexec/sandbox2/benchmark/theBenchmark.p /export/starexec/sandbox2/tmp/tmp.8w0pbOJugM

% Computer   : n020.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 13:55:00 EST 2020

% Result     : Theorem 1.46s
% Output     : Refutation 1.46s
% Verified   : 
% Statistics : Number of formulae       :  147 ( 459 expanded)
%              Number of leaves         :   45 ( 157 expanded)
%              Depth                    :   17
%              Number of atoms          : 1411 (10942 expanded)
%              Number of equality atoms :   86 ( 739 expanded)
%              Maximal formula depth    :   19 (   7 average)

% Comments   : 
%------------------------------------------------------------------------------
thf(v1_funct_1_type,type,(
    v1_funct_1: $i > $o )).

thf(k1_relset_1_type,type,(
    k1_relset_1: $i > $i > $i > $i )).

thf(zip_tseitin_1_type,type,(
    zip_tseitin_1: $i > $i > $i > $o )).

thf(v1_partfun1_type,type,(
    v1_partfun1: $i > $i > $o )).

thf(k2_funct_1_type,type,(
    k2_funct_1: $i > $i )).

thf(v1_funct_2_type,type,(
    v1_funct_2: $i > $i > $i > $o )).

thf(k6_partfun1_type,type,(
    k6_partfun1: $i > $i )).

thf(v2_funct_1_type,type,(
    v2_funct_1: $i > $o )).

thf(sk_B_type,type,(
    sk_B: $i )).

thf(k1_zfmisc_1_type,type,(
    k1_zfmisc_1: $i > $i )).

thf(k1_partfun1_type,type,(
    k1_partfun1: $i > $i > $i > $i > $i > $i > $i )).

thf(sk_A_type,type,(
    sk_A: $i )).

thf(v1_relat_1_type,type,(
    v1_relat_1: $i > $o )).

thf(k5_relat_1_type,type,(
    k5_relat_1: $i > $i > $i )).

thf(k2_zfmisc_1_type,type,(
    k2_zfmisc_1: $i > $i > $i )).

thf(sk_C_type,type,(
    sk_C: $i )).

thf(zip_tseitin_0_type,type,(
    zip_tseitin_0: $i > $i > $o )).

thf(r2_relset_1_type,type,(
    r2_relset_1: $i > $i > $i > $i > $o )).

thf(k6_relat_1_type,type,(
    k6_relat_1: $i > $i )).

thf(k2_relat_1_type,type,(
    k2_relat_1: $i > $i )).

thf(sk_D_type,type,(
    sk_D: $i )).

thf(k2_relset_1_type,type,(
    k2_relset_1: $i > $i > $i > $i )).

thf(m1_subset_1_type,type,(
    m1_subset_1: $i > $i > $o )).

thf(k1_xboole_0_type,type,(
    k1_xboole_0: $i )).

thf(k1_relat_1_type,type,(
    k1_relat_1: $i > $i )).

thf(t36_funct_2,conjecture,(
    ! [A: $i,B: $i,C: $i] :
      ( ( ( v1_funct_1 @ C )
        & ( v1_funct_2 @ C @ A @ B )
        & ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) )
     => ! [D: $i] :
          ( ( ( v1_funct_1 @ D )
            & ( v1_funct_2 @ D @ B @ A )
            & ( m1_subset_1 @ D @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ B @ A ) ) ) )
         => ( ( ( ( k2_relset_1 @ A @ B @ C )
                = B )
              & ( r2_relset_1 @ A @ A @ ( k1_partfun1 @ A @ B @ B @ A @ C @ D ) @ ( k6_partfun1 @ A ) )
              & ( v2_funct_1 @ C ) )
           => ( ( A = k1_xboole_0 )
              | ( B = k1_xboole_0 )
              | ( D
                = ( k2_funct_1 @ C ) ) ) ) ) ) )).

thf(zf_stmt_0,negated_conjecture,(
    ~ ! [A: $i,B: $i,C: $i] :
        ( ( ( v1_funct_1 @ C )
          & ( v1_funct_2 @ C @ A @ B )
          & ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) )
       => ! [D: $i] :
            ( ( ( v1_funct_1 @ D )
              & ( v1_funct_2 @ D @ B @ A )
              & ( m1_subset_1 @ D @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ B @ A ) ) ) )
           => ( ( ( ( k2_relset_1 @ A @ B @ C )
                  = B )
                & ( r2_relset_1 @ A @ A @ ( k1_partfun1 @ A @ B @ B @ A @ C @ D ) @ ( k6_partfun1 @ A ) )
                & ( v2_funct_1 @ C ) )
             => ( ( A = k1_xboole_0 )
                | ( B = k1_xboole_0 )
                | ( D
                  = ( k2_funct_1 @ C ) ) ) ) ) ) ),
    inference('cnf.neg',[status(esa)],[t36_funct_2])).

thf('0',plain,(
    m1_subset_1 @ sk_D @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_B @ sk_A ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('1',plain,(
    m1_subset_1 @ sk_C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_A @ sk_B ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(redefinition_k1_partfun1,axiom,(
    ! [A: $i,B: $i,C: $i,D: $i,E: $i,F: $i] :
      ( ( ( v1_funct_1 @ E )
        & ( m1_subset_1 @ E @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) )
        & ( v1_funct_1 @ F )
        & ( m1_subset_1 @ F @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ C @ D ) ) ) )
     => ( ( k1_partfun1 @ A @ B @ C @ D @ E @ F )
        = ( k5_relat_1 @ E @ F ) ) ) )).

thf('2',plain,(
    ! [X36: $i,X37: $i,X38: $i,X39: $i,X40: $i,X41: $i] :
      ( ~ ( m1_subset_1 @ X36 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X37 @ X38 ) ) )
      | ~ ( v1_funct_1 @ X36 )
      | ~ ( v1_funct_1 @ X39 )
      | ~ ( m1_subset_1 @ X39 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X40 @ X41 ) ) )
      | ( ( k1_partfun1 @ X37 @ X38 @ X40 @ X41 @ X36 @ X39 )
        = ( k5_relat_1 @ X36 @ X39 ) ) ) ),
    inference(cnf,[status(esa)],[redefinition_k1_partfun1])).

thf('3',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( ( ( k1_partfun1 @ sk_A @ sk_B @ X2 @ X1 @ sk_C @ X0 )
        = ( k5_relat_1 @ sk_C @ X0 ) )
      | ~ ( m1_subset_1 @ X0 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X2 @ X1 ) ) )
      | ~ ( v1_funct_1 @ X0 )
      | ~ ( v1_funct_1 @ sk_C ) ) ),
    inference('sup-',[status(thm)],['1','2'])).

thf('4',plain,(
    v1_funct_1 @ sk_C ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('5',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( ( ( k1_partfun1 @ sk_A @ sk_B @ X2 @ X1 @ sk_C @ X0 )
        = ( k5_relat_1 @ sk_C @ X0 ) )
      | ~ ( m1_subset_1 @ X0 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X2 @ X1 ) ) )
      | ~ ( v1_funct_1 @ X0 ) ) ),
    inference(demod,[status(thm)],['3','4'])).

thf('6',plain,
    ( ~ ( v1_funct_1 @ sk_D )
    | ( ( k1_partfun1 @ sk_A @ sk_B @ sk_B @ sk_A @ sk_C @ sk_D )
      = ( k5_relat_1 @ sk_C @ sk_D ) ) ),
    inference('sup-',[status(thm)],['0','5'])).

thf('7',plain,(
    v1_funct_1 @ sk_D ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('8',plain,(
    r2_relset_1 @ sk_A @ sk_A @ ( k1_partfun1 @ sk_A @ sk_B @ sk_B @ sk_A @ sk_C @ sk_D ) @ ( k6_partfun1 @ sk_A ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(redefinition_k6_partfun1,axiom,(
    ! [A: $i] :
      ( ( k6_partfun1 @ A )
      = ( k6_relat_1 @ A ) ) )).

thf('9',plain,(
    ! [X42: $i] :
      ( ( k6_partfun1 @ X42 )
      = ( k6_relat_1 @ X42 ) ) ),
    inference(cnf,[status(esa)],[redefinition_k6_partfun1])).

thf('10',plain,(
    r2_relset_1 @ sk_A @ sk_A @ ( k1_partfun1 @ sk_A @ sk_B @ sk_B @ sk_A @ sk_C @ sk_D ) @ ( k6_relat_1 @ sk_A ) ),
    inference(demod,[status(thm)],['8','9'])).

thf('11',plain,(
    m1_subset_1 @ sk_D @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_B @ sk_A ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('12',plain,(
    m1_subset_1 @ sk_C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_A @ sk_B ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(dt_k1_partfun1,axiom,(
    ! [A: $i,B: $i,C: $i,D: $i,E: $i,F: $i] :
      ( ( ( v1_funct_1 @ E )
        & ( m1_subset_1 @ E @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) )
        & ( v1_funct_1 @ F )
        & ( m1_subset_1 @ F @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ C @ D ) ) ) )
     => ( ( v1_funct_1 @ ( k1_partfun1 @ A @ B @ C @ D @ E @ F ) )
        & ( m1_subset_1 @ ( k1_partfun1 @ A @ B @ C @ D @ E @ F ) @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ D ) ) ) ) ) )).

thf('13',plain,(
    ! [X28: $i,X29: $i,X30: $i,X31: $i,X32: $i,X33: $i] :
      ( ~ ( m1_subset_1 @ X28 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X29 @ X30 ) ) )
      | ~ ( v1_funct_1 @ X28 )
      | ~ ( v1_funct_1 @ X31 )
      | ~ ( m1_subset_1 @ X31 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X32 @ X33 ) ) )
      | ( m1_subset_1 @ ( k1_partfun1 @ X29 @ X30 @ X32 @ X33 @ X28 @ X31 ) @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X29 @ X33 ) ) ) ) ),
    inference(cnf,[status(esa)],[dt_k1_partfun1])).

thf('14',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( ( m1_subset_1 @ ( k1_partfun1 @ sk_A @ sk_B @ X2 @ X0 @ sk_C @ X1 ) @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_A @ X0 ) ) )
      | ~ ( m1_subset_1 @ X1 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X2 @ X0 ) ) )
      | ~ ( v1_funct_1 @ X1 )
      | ~ ( v1_funct_1 @ sk_C ) ) ),
    inference('sup-',[status(thm)],['12','13'])).

thf('15',plain,(
    v1_funct_1 @ sk_C ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('16',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( ( m1_subset_1 @ ( k1_partfun1 @ sk_A @ sk_B @ X2 @ X0 @ sk_C @ X1 ) @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_A @ X0 ) ) )
      | ~ ( m1_subset_1 @ X1 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X2 @ X0 ) ) )
      | ~ ( v1_funct_1 @ X1 ) ) ),
    inference(demod,[status(thm)],['14','15'])).

thf('17',plain,
    ( ~ ( v1_funct_1 @ sk_D )
    | ( m1_subset_1 @ ( k1_partfun1 @ sk_A @ sk_B @ sk_B @ sk_A @ sk_C @ sk_D ) @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_A @ sk_A ) ) ) ),
    inference('sup-',[status(thm)],['11','16'])).

thf('18',plain,(
    v1_funct_1 @ sk_D ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('19',plain,(
    m1_subset_1 @ ( k1_partfun1 @ sk_A @ sk_B @ sk_B @ sk_A @ sk_C @ sk_D ) @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_A @ sk_A ) ) ),
    inference(demod,[status(thm)],['17','18'])).

thf(redefinition_r2_relset_1,axiom,(
    ! [A: $i,B: $i,C: $i,D: $i] :
      ( ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) )
        & ( m1_subset_1 @ D @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) )
     => ( ( r2_relset_1 @ A @ B @ C @ D )
      <=> ( C = D ) ) ) )).

thf('20',plain,(
    ! [X16: $i,X17: $i,X18: $i,X19: $i] :
      ( ~ ( m1_subset_1 @ X16 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X17 @ X18 ) ) )
      | ~ ( m1_subset_1 @ X19 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X17 @ X18 ) ) )
      | ( X16 = X19 )
      | ~ ( r2_relset_1 @ X17 @ X18 @ X16 @ X19 ) ) ),
    inference(cnf,[status(esa)],[redefinition_r2_relset_1])).

thf('21',plain,(
    ! [X0: $i] :
      ( ~ ( r2_relset_1 @ sk_A @ sk_A @ ( k1_partfun1 @ sk_A @ sk_B @ sk_B @ sk_A @ sk_C @ sk_D ) @ X0 )
      | ( ( k1_partfun1 @ sk_A @ sk_B @ sk_B @ sk_A @ sk_C @ sk_D )
        = X0 )
      | ~ ( m1_subset_1 @ X0 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_A @ sk_A ) ) ) ) ),
    inference('sup-',[status(thm)],['19','20'])).

thf('22',plain,
    ( ~ ( m1_subset_1 @ ( k6_relat_1 @ sk_A ) @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_A @ sk_A ) ) )
    | ( ( k1_partfun1 @ sk_A @ sk_B @ sk_B @ sk_A @ sk_C @ sk_D )
      = ( k6_relat_1 @ sk_A ) ) ),
    inference('sup-',[status(thm)],['10','21'])).

thf(dt_k6_partfun1,axiom,(
    ! [A: $i] :
      ( ( m1_subset_1 @ ( k6_partfun1 @ A ) @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ A ) ) )
      & ( v1_partfun1 @ ( k6_partfun1 @ A ) @ A ) ) )).

thf('23',plain,(
    ! [X35: $i] :
      ( m1_subset_1 @ ( k6_partfun1 @ X35 ) @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X35 @ X35 ) ) ) ),
    inference(cnf,[status(esa)],[dt_k6_partfun1])).

thf('24',plain,(
    ! [X42: $i] :
      ( ( k6_partfun1 @ X42 )
      = ( k6_relat_1 @ X42 ) ) ),
    inference(cnf,[status(esa)],[redefinition_k6_partfun1])).

thf('25',plain,(
    ! [X35: $i] :
      ( m1_subset_1 @ ( k6_relat_1 @ X35 ) @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X35 @ X35 ) ) ) ),
    inference(demod,[status(thm)],['23','24'])).

thf('26',plain,
    ( ( k1_partfun1 @ sk_A @ sk_B @ sk_B @ sk_A @ sk_C @ sk_D )
    = ( k6_relat_1 @ sk_A ) ),
    inference(demod,[status(thm)],['22','25'])).

thf('27',plain,
    ( ( k6_relat_1 @ sk_A )
    = ( k5_relat_1 @ sk_C @ sk_D ) ),
    inference(demod,[status(thm)],['6','7','26'])).

thf(t64_funct_1,axiom,(
    ! [A: $i] :
      ( ( ( v1_relat_1 @ A )
        & ( v1_funct_1 @ A ) )
     => ! [B: $i] :
          ( ( ( v1_relat_1 @ B )
            & ( v1_funct_1 @ B ) )
         => ( ( ( v2_funct_1 @ A )
              & ( ( k2_relat_1 @ B )
                = ( k1_relat_1 @ A ) )
              & ( ( k5_relat_1 @ B @ A )
                = ( k6_relat_1 @ ( k2_relat_1 @ A ) ) ) )
           => ( B
              = ( k2_funct_1 @ A ) ) ) ) ) )).

thf('28',plain,(
    ! [X4: $i,X5: $i] :
      ( ~ ( v1_relat_1 @ X4 )
      | ~ ( v1_funct_1 @ X4 )
      | ( X4
        = ( k2_funct_1 @ X5 ) )
      | ( ( k5_relat_1 @ X4 @ X5 )
       != ( k6_relat_1 @ ( k2_relat_1 @ X5 ) ) )
      | ( ( k2_relat_1 @ X4 )
       != ( k1_relat_1 @ X5 ) )
      | ~ ( v2_funct_1 @ X5 )
      | ~ ( v1_funct_1 @ X5 )
      | ~ ( v1_relat_1 @ X5 ) ) ),
    inference(cnf,[status(esa)],[t64_funct_1])).

thf('29',plain,
    ( ( ( k6_relat_1 @ sk_A )
     != ( k6_relat_1 @ ( k2_relat_1 @ sk_D ) ) )
    | ~ ( v1_relat_1 @ sk_D )
    | ~ ( v1_funct_1 @ sk_D )
    | ~ ( v2_funct_1 @ sk_D )
    | ( ( k2_relat_1 @ sk_C )
     != ( k1_relat_1 @ sk_D ) )
    | ( sk_C
      = ( k2_funct_1 @ sk_D ) )
    | ~ ( v1_funct_1 @ sk_C )
    | ~ ( v1_relat_1 @ sk_C ) ),
    inference('sup-',[status(thm)],['27','28'])).

thf('30',plain,
    ( ( k1_partfun1 @ sk_A @ sk_B @ sk_B @ sk_A @ sk_C @ sk_D )
    = ( k6_relat_1 @ sk_A ) ),
    inference(demod,[status(thm)],['22','25'])).

thf('31',plain,(
    m1_subset_1 @ sk_C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_A @ sk_B ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(t24_funct_2,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( ( v1_funct_1 @ C )
        & ( v1_funct_2 @ C @ A @ B )
        & ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) )
     => ! [D: $i] :
          ( ( ( v1_funct_1 @ D )
            & ( v1_funct_2 @ D @ B @ A )
            & ( m1_subset_1 @ D @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ B @ A ) ) ) )
         => ( ( r2_relset_1 @ B @ B @ ( k1_partfun1 @ B @ A @ A @ B @ D @ C ) @ ( k6_partfun1 @ B ) )
           => ( ( k2_relset_1 @ A @ B @ C )
              = B ) ) ) ) )).

thf('32',plain,(
    ! [X43: $i,X44: $i,X45: $i,X46: $i] :
      ( ~ ( v1_funct_1 @ X43 )
      | ~ ( v1_funct_2 @ X43 @ X44 @ X45 )
      | ~ ( m1_subset_1 @ X43 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X44 @ X45 ) ) )
      | ~ ( r2_relset_1 @ X44 @ X44 @ ( k1_partfun1 @ X44 @ X45 @ X45 @ X44 @ X43 @ X46 ) @ ( k6_partfun1 @ X44 ) )
      | ( ( k2_relset_1 @ X45 @ X44 @ X46 )
        = X44 )
      | ~ ( m1_subset_1 @ X46 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X45 @ X44 ) ) )
      | ~ ( v1_funct_2 @ X46 @ X45 @ X44 )
      | ~ ( v1_funct_1 @ X46 ) ) ),
    inference(cnf,[status(esa)],[t24_funct_2])).

thf('33',plain,(
    ! [X42: $i] :
      ( ( k6_partfun1 @ X42 )
      = ( k6_relat_1 @ X42 ) ) ),
    inference(cnf,[status(esa)],[redefinition_k6_partfun1])).

thf('34',plain,(
    ! [X43: $i,X44: $i,X45: $i,X46: $i] :
      ( ~ ( v1_funct_1 @ X43 )
      | ~ ( v1_funct_2 @ X43 @ X44 @ X45 )
      | ~ ( m1_subset_1 @ X43 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X44 @ X45 ) ) )
      | ~ ( r2_relset_1 @ X44 @ X44 @ ( k1_partfun1 @ X44 @ X45 @ X45 @ X44 @ X43 @ X46 ) @ ( k6_relat_1 @ X44 ) )
      | ( ( k2_relset_1 @ X45 @ X44 @ X46 )
        = X44 )
      | ~ ( m1_subset_1 @ X46 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X45 @ X44 ) ) )
      | ~ ( v1_funct_2 @ X46 @ X45 @ X44 )
      | ~ ( v1_funct_1 @ X46 ) ) ),
    inference(demod,[status(thm)],['32','33'])).

thf('35',plain,(
    ! [X0: $i] :
      ( ~ ( v1_funct_1 @ X0 )
      | ~ ( v1_funct_2 @ X0 @ sk_B @ sk_A )
      | ~ ( m1_subset_1 @ X0 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_B @ sk_A ) ) )
      | ( ( k2_relset_1 @ sk_B @ sk_A @ X0 )
        = sk_A )
      | ~ ( r2_relset_1 @ sk_A @ sk_A @ ( k1_partfun1 @ sk_A @ sk_B @ sk_B @ sk_A @ sk_C @ X0 ) @ ( k6_relat_1 @ sk_A ) )
      | ~ ( v1_funct_2 @ sk_C @ sk_A @ sk_B )
      | ~ ( v1_funct_1 @ sk_C ) ) ),
    inference('sup-',[status(thm)],['31','34'])).

thf('36',plain,(
    v1_funct_2 @ sk_C @ sk_A @ sk_B ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('37',plain,(
    v1_funct_1 @ sk_C ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('38',plain,(
    ! [X0: $i] :
      ( ~ ( v1_funct_1 @ X0 )
      | ~ ( v1_funct_2 @ X0 @ sk_B @ sk_A )
      | ~ ( m1_subset_1 @ X0 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_B @ sk_A ) ) )
      | ( ( k2_relset_1 @ sk_B @ sk_A @ X0 )
        = sk_A )
      | ~ ( r2_relset_1 @ sk_A @ sk_A @ ( k1_partfun1 @ sk_A @ sk_B @ sk_B @ sk_A @ sk_C @ X0 ) @ ( k6_relat_1 @ sk_A ) ) ) ),
    inference(demod,[status(thm)],['35','36','37'])).

thf('39',plain,
    ( ~ ( r2_relset_1 @ sk_A @ sk_A @ ( k6_relat_1 @ sk_A ) @ ( k6_relat_1 @ sk_A ) )
    | ( ( k2_relset_1 @ sk_B @ sk_A @ sk_D )
      = sk_A )
    | ~ ( m1_subset_1 @ sk_D @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_B @ sk_A ) ) )
    | ~ ( v1_funct_2 @ sk_D @ sk_B @ sk_A )
    | ~ ( v1_funct_1 @ sk_D ) ),
    inference('sup-',[status(thm)],['30','38'])).

thf('40',plain,(
    ! [X35: $i] :
      ( m1_subset_1 @ ( k6_relat_1 @ X35 ) @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X35 @ X35 ) ) ) ),
    inference(demod,[status(thm)],['23','24'])).

thf('41',plain,(
    ! [X16: $i,X17: $i,X18: $i,X19: $i] :
      ( ~ ( m1_subset_1 @ X16 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X17 @ X18 ) ) )
      | ~ ( m1_subset_1 @ X19 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X17 @ X18 ) ) )
      | ( r2_relset_1 @ X17 @ X18 @ X16 @ X19 )
      | ( X16 != X19 ) ) ),
    inference(cnf,[status(esa)],[redefinition_r2_relset_1])).

thf('42',plain,(
    ! [X17: $i,X18: $i,X19: $i] :
      ( ( r2_relset_1 @ X17 @ X18 @ X19 @ X19 )
      | ~ ( m1_subset_1 @ X19 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X17 @ X18 ) ) ) ) ),
    inference(simplify,[status(thm)],['41'])).

thf('43',plain,(
    ! [X0: $i] :
      ( r2_relset_1 @ X0 @ X0 @ ( k6_relat_1 @ X0 ) @ ( k6_relat_1 @ X0 ) ) ),
    inference('sup-',[status(thm)],['40','42'])).

thf('44',plain,(
    m1_subset_1 @ sk_D @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_B @ sk_A ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(redefinition_k2_relset_1,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) )
     => ( ( k2_relset_1 @ A @ B @ C )
        = ( k2_relat_1 @ C ) ) ) )).

thf('45',plain,(
    ! [X13: $i,X14: $i,X15: $i] :
      ( ( ( k2_relset_1 @ X14 @ X15 @ X13 )
        = ( k2_relat_1 @ X13 ) )
      | ~ ( m1_subset_1 @ X13 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X14 @ X15 ) ) ) ) ),
    inference(cnf,[status(esa)],[redefinition_k2_relset_1])).

thf('46',plain,
    ( ( k2_relset_1 @ sk_B @ sk_A @ sk_D )
    = ( k2_relat_1 @ sk_D ) ),
    inference('sup-',[status(thm)],['44','45'])).

thf('47',plain,(
    m1_subset_1 @ sk_D @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_B @ sk_A ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('48',plain,(
    v1_funct_2 @ sk_D @ sk_B @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('49',plain,(
    v1_funct_1 @ sk_D ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('50',plain,
    ( ( k2_relat_1 @ sk_D )
    = sk_A ),
    inference(demod,[status(thm)],['39','43','46','47','48','49'])).

thf('51',plain,(
    m1_subset_1 @ sk_D @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_B @ sk_A ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(cc1_relset_1,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) )
     => ( v1_relat_1 @ C ) ) )).

thf('52',plain,(
    ! [X7: $i,X8: $i,X9: $i] :
      ( ( v1_relat_1 @ X7 )
      | ~ ( m1_subset_1 @ X7 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X8 @ X9 ) ) ) ) ),
    inference(cnf,[status(esa)],[cc1_relset_1])).

thf('53',plain,(
    v1_relat_1 @ sk_D ),
    inference('sup-',[status(thm)],['51','52'])).

thf('54',plain,(
    v1_funct_1 @ sk_D ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('55',plain,(
    m1_subset_1 @ sk_C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_A @ sk_B ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('56',plain,(
    ! [X13: $i,X14: $i,X15: $i] :
      ( ( ( k2_relset_1 @ X14 @ X15 @ X13 )
        = ( k2_relat_1 @ X13 ) )
      | ~ ( m1_subset_1 @ X13 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X14 @ X15 ) ) ) ) ),
    inference(cnf,[status(esa)],[redefinition_k2_relset_1])).

thf('57',plain,
    ( ( k2_relset_1 @ sk_A @ sk_B @ sk_C )
    = ( k2_relat_1 @ sk_C ) ),
    inference('sup-',[status(thm)],['55','56'])).

thf('58',plain,
    ( ( k2_relset_1 @ sk_A @ sk_B @ sk_C )
    = sk_B ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('59',plain,
    ( ( k2_relat_1 @ sk_C )
    = sk_B ),
    inference('sup+',[status(thm)],['57','58'])).

thf('60',plain,(
    v1_funct_2 @ sk_D @ sk_B @ sk_A ),
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

thf('61',plain,(
    ! [X22: $i,X23: $i,X24: $i] :
      ( ~ ( v1_funct_2 @ X24 @ X22 @ X23 )
      | ( X22
        = ( k1_relset_1 @ X22 @ X23 @ X24 ) )
      | ~ ( zip_tseitin_1 @ X24 @ X23 @ X22 ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_1])).

thf('62',plain,
    ( ~ ( zip_tseitin_1 @ sk_D @ sk_A @ sk_B )
    | ( sk_B
      = ( k1_relset_1 @ sk_B @ sk_A @ sk_D ) ) ),
    inference('sup-',[status(thm)],['60','61'])).

thf(zf_stmt_2,axiom,(
    ! [B: $i,A: $i] :
      ( ( ( B = k1_xboole_0 )
       => ( A = k1_xboole_0 ) )
     => ( zip_tseitin_0 @ B @ A ) ) )).

thf('63',plain,(
    ! [X20: $i,X21: $i] :
      ( ( zip_tseitin_0 @ X20 @ X21 )
      | ( X20 = k1_xboole_0 ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_2])).

thf('64',plain,(
    m1_subset_1 @ sk_D @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_B @ sk_A ) ) ),
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

thf('65',plain,(
    ! [X25: $i,X26: $i,X27: $i] :
      ( ~ ( zip_tseitin_0 @ X25 @ X26 )
      | ( zip_tseitin_1 @ X27 @ X25 @ X26 )
      | ~ ( m1_subset_1 @ X27 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X26 @ X25 ) ) ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_5])).

thf('66',plain,
    ( ( zip_tseitin_1 @ sk_D @ sk_A @ sk_B )
    | ~ ( zip_tseitin_0 @ sk_A @ sk_B ) ),
    inference('sup-',[status(thm)],['64','65'])).

thf('67',plain,
    ( ( sk_A = k1_xboole_0 )
    | ( zip_tseitin_1 @ sk_D @ sk_A @ sk_B ) ),
    inference('sup-',[status(thm)],['63','66'])).

thf('68',plain,(
    sk_A != k1_xboole_0 ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('69',plain,(
    zip_tseitin_1 @ sk_D @ sk_A @ sk_B ),
    inference('simplify_reflect-',[status(thm)],['67','68'])).

thf('70',plain,(
    m1_subset_1 @ sk_D @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_B @ sk_A ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(redefinition_k1_relset_1,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) )
     => ( ( k1_relset_1 @ A @ B @ C )
        = ( k1_relat_1 @ C ) ) ) )).

thf('71',plain,(
    ! [X10: $i,X11: $i,X12: $i] :
      ( ( ( k1_relset_1 @ X11 @ X12 @ X10 )
        = ( k1_relat_1 @ X10 ) )
      | ~ ( m1_subset_1 @ X10 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X11 @ X12 ) ) ) ) ),
    inference(cnf,[status(esa)],[redefinition_k1_relset_1])).

thf('72',plain,
    ( ( k1_relset_1 @ sk_B @ sk_A @ sk_D )
    = ( k1_relat_1 @ sk_D ) ),
    inference('sup-',[status(thm)],['70','71'])).

thf('73',plain,
    ( sk_B
    = ( k1_relat_1 @ sk_D ) ),
    inference(demod,[status(thm)],['62','69','72'])).

thf('74',plain,(
    v1_funct_1 @ sk_C ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('75',plain,(
    m1_subset_1 @ sk_C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_A @ sk_B ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('76',plain,(
    ! [X7: $i,X8: $i,X9: $i] :
      ( ( v1_relat_1 @ X7 )
      | ~ ( m1_subset_1 @ X7 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X8 @ X9 ) ) ) ) ),
    inference(cnf,[status(esa)],[cc1_relset_1])).

thf('77',plain,(
    v1_relat_1 @ sk_C ),
    inference('sup-',[status(thm)],['75','76'])).

thf('78',plain,
    ( ( ( k6_relat_1 @ sk_A )
     != ( k6_relat_1 @ sk_A ) )
    | ~ ( v2_funct_1 @ sk_D )
    | ( sk_B != sk_B )
    | ( sk_C
      = ( k2_funct_1 @ sk_D ) ) ),
    inference(demod,[status(thm)],['29','50','53','54','59','73','74','77'])).

thf('79',plain,
    ( ( sk_C
      = ( k2_funct_1 @ sk_D ) )
    | ~ ( v2_funct_1 @ sk_D ) ),
    inference(simplify,[status(thm)],['78'])).

thf('80',plain,
    ( ( k6_relat_1 @ sk_A )
    = ( k5_relat_1 @ sk_C @ sk_D ) ),
    inference(demod,[status(thm)],['6','7','26'])).

thf(t48_funct_1,axiom,(
    ! [A: $i] :
      ( ( ( v1_relat_1 @ A )
        & ( v1_funct_1 @ A ) )
     => ! [B: $i] :
          ( ( ( v1_relat_1 @ B )
            & ( v1_funct_1 @ B ) )
         => ( ( ( v2_funct_1 @ ( k5_relat_1 @ B @ A ) )
              & ( ( k2_relat_1 @ B )
                = ( k1_relat_1 @ A ) ) )
           => ( ( v2_funct_1 @ B )
              & ( v2_funct_1 @ A ) ) ) ) ) )).

thf('81',plain,(
    ! [X2: $i,X3: $i] :
      ( ~ ( v1_relat_1 @ X2 )
      | ~ ( v1_funct_1 @ X2 )
      | ( v2_funct_1 @ X3 )
      | ( ( k2_relat_1 @ X2 )
       != ( k1_relat_1 @ X3 ) )
      | ~ ( v2_funct_1 @ ( k5_relat_1 @ X2 @ X3 ) )
      | ~ ( v1_funct_1 @ X3 )
      | ~ ( v1_relat_1 @ X3 ) ) ),
    inference(cnf,[status(esa)],[t48_funct_1])).

thf('82',plain,
    ( ~ ( v2_funct_1 @ ( k6_relat_1 @ sk_A ) )
    | ~ ( v1_relat_1 @ sk_D )
    | ~ ( v1_funct_1 @ sk_D )
    | ( ( k2_relat_1 @ sk_C )
     != ( k1_relat_1 @ sk_D ) )
    | ( v2_funct_1 @ sk_D )
    | ~ ( v1_funct_1 @ sk_C )
    | ~ ( v1_relat_1 @ sk_C ) ),
    inference('sup-',[status(thm)],['80','81'])).

thf(fc4_funct_1,axiom,(
    ! [A: $i] :
      ( ( v2_funct_1 @ ( k6_relat_1 @ A ) )
      & ( v1_relat_1 @ ( k6_relat_1 @ A ) ) ) )).

thf('83',plain,(
    ! [X1: $i] :
      ( v2_funct_1 @ ( k6_relat_1 @ X1 ) ) ),
    inference(cnf,[status(esa)],[fc4_funct_1])).

thf('84',plain,(
    v1_relat_1 @ sk_D ),
    inference('sup-',[status(thm)],['51','52'])).

thf('85',plain,(
    v1_funct_1 @ sk_D ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('86',plain,
    ( ( k2_relat_1 @ sk_C )
    = sk_B ),
    inference('sup+',[status(thm)],['57','58'])).

thf('87',plain,
    ( sk_B
    = ( k1_relat_1 @ sk_D ) ),
    inference(demod,[status(thm)],['62','69','72'])).

thf('88',plain,(
    v1_funct_1 @ sk_C ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('89',plain,(
    v1_relat_1 @ sk_C ),
    inference('sup-',[status(thm)],['75','76'])).

thf('90',plain,
    ( ( sk_B != sk_B )
    | ( v2_funct_1 @ sk_D ) ),
    inference(demod,[status(thm)],['82','83','84','85','86','87','88','89'])).

thf('91',plain,(
    v2_funct_1 @ sk_D ),
    inference(simplify,[status(thm)],['90'])).

thf('92',plain,
    ( sk_C
    = ( k2_funct_1 @ sk_D ) ),
    inference(demod,[status(thm)],['79','91'])).

thf(t65_funct_1,axiom,(
    ! [A: $i] :
      ( ( ( v1_relat_1 @ A )
        & ( v1_funct_1 @ A ) )
     => ( ( v2_funct_1 @ A )
       => ( ( k2_funct_1 @ ( k2_funct_1 @ A ) )
          = A ) ) ) )).

thf('93',plain,(
    ! [X6: $i] :
      ( ~ ( v2_funct_1 @ X6 )
      | ( ( k2_funct_1 @ ( k2_funct_1 @ X6 ) )
        = X6 )
      | ~ ( v1_funct_1 @ X6 )
      | ~ ( v1_relat_1 @ X6 ) ) ),
    inference(cnf,[status(esa)],[t65_funct_1])).

thf('94',plain,
    ( ( ( k2_funct_1 @ sk_C )
      = sk_D )
    | ~ ( v1_relat_1 @ sk_D )
    | ~ ( v1_funct_1 @ sk_D )
    | ~ ( v2_funct_1 @ sk_D ) ),
    inference('sup+',[status(thm)],['92','93'])).

thf('95',plain,(
    v1_relat_1 @ sk_D ),
    inference('sup-',[status(thm)],['51','52'])).

thf('96',plain,(
    v1_funct_1 @ sk_D ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('97',plain,(
    v2_funct_1 @ sk_D ),
    inference(simplify,[status(thm)],['90'])).

thf('98',plain,
    ( ( k2_funct_1 @ sk_C )
    = sk_D ),
    inference(demod,[status(thm)],['94','95','96','97'])).

thf('99',plain,(
    sk_D
 != ( k2_funct_1 @ sk_C ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('100',plain,(
    $false ),
    inference('simplify_reflect-',[status(thm)],['98','99'])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.11/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.11/0.13  % Command    : run_portfolio.sh /export/starexec/sandbox2/benchmark/theBenchmark.p /export/starexec/sandbox2/tmp/tmp.8w0pbOJugM
% 0.13/0.33  % Computer   : n020.cluster.edu
% 0.13/0.33  % Model      : x86_64 x86_64
% 0.13/0.33  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.33  % Memory     : 8042.1875MB
% 0.13/0.33  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.33  % CPULimit   : 60
% 0.13/0.33  % DateTime   : Tue Dec  1 16:34:52 EST 2020
% 0.13/0.33  % CPUTime    : 
% 0.13/0.33  % Running portfolio for 600 s
% 0.13/0.33  % File         : /export/starexec/sandbox2/benchmark/theBenchmark.p
% 0.13/0.34  % Number of cores: 8
% 0.13/0.34  % Python version: Python 3.6.8
% 0.13/0.34  % Running in FO mode
% 1.46/1.65  % Running /export/starexec/sandbox2/solver/bin/fo/fo7.sh for 78
% 1.46/1.65  % Solved by: fo/fo7.sh
% 1.46/1.65  To remain in the chosen logic fragment, unification with booleans has been disabled.
% 1.46/1.65  % done 387 iterations in 1.203s
% 1.46/1.65  % SZS status Theorem for '/export/starexec/sandbox2/benchmark/theBenchmark.p'
% 1.46/1.65  % SZS output start Refutation
% 1.46/1.65  thf(v1_funct_1_type, type, v1_funct_1: $i > $o).
% 1.46/1.65  thf(k1_relset_1_type, type, k1_relset_1: $i > $i > $i > $i).
% 1.46/1.65  thf(zip_tseitin_1_type, type, zip_tseitin_1: $i > $i > $i > $o).
% 1.46/1.65  thf(v1_partfun1_type, type, v1_partfun1: $i > $i > $o).
% 1.46/1.65  thf(k2_funct_1_type, type, k2_funct_1: $i > $i).
% 1.46/1.65  thf(v1_funct_2_type, type, v1_funct_2: $i > $i > $i > $o).
% 1.46/1.65  thf(k6_partfun1_type, type, k6_partfun1: $i > $i).
% 1.46/1.65  thf(v2_funct_1_type, type, v2_funct_1: $i > $o).
% 1.46/1.65  thf(sk_B_type, type, sk_B: $i).
% 1.46/1.65  thf(k1_zfmisc_1_type, type, k1_zfmisc_1: $i > $i).
% 1.46/1.65  thf(k1_partfun1_type, type, k1_partfun1: $i > $i > $i > $i > $i > $i > $i).
% 1.46/1.65  thf(sk_A_type, type, sk_A: $i).
% 1.46/1.65  thf(v1_relat_1_type, type, v1_relat_1: $i > $o).
% 1.46/1.65  thf(k5_relat_1_type, type, k5_relat_1: $i > $i > $i).
% 1.46/1.65  thf(k2_zfmisc_1_type, type, k2_zfmisc_1: $i > $i > $i).
% 1.46/1.65  thf(sk_C_type, type, sk_C: $i).
% 1.46/1.65  thf(zip_tseitin_0_type, type, zip_tseitin_0: $i > $i > $o).
% 1.46/1.65  thf(r2_relset_1_type, type, r2_relset_1: $i > $i > $i > $i > $o).
% 1.46/1.65  thf(k6_relat_1_type, type, k6_relat_1: $i > $i).
% 1.46/1.65  thf(k2_relat_1_type, type, k2_relat_1: $i > $i).
% 1.46/1.65  thf(sk_D_type, type, sk_D: $i).
% 1.46/1.65  thf(k2_relset_1_type, type, k2_relset_1: $i > $i > $i > $i).
% 1.46/1.65  thf(m1_subset_1_type, type, m1_subset_1: $i > $i > $o).
% 1.46/1.65  thf(k1_xboole_0_type, type, k1_xboole_0: $i).
% 1.46/1.65  thf(k1_relat_1_type, type, k1_relat_1: $i > $i).
% 1.46/1.65  thf(t36_funct_2, conjecture,
% 1.46/1.65    (![A:$i,B:$i,C:$i]:
% 1.46/1.65     ( ( ( v1_funct_1 @ C ) & ( v1_funct_2 @ C @ A @ B ) & 
% 1.46/1.65         ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) ) =>
% 1.46/1.65       ( ![D:$i]:
% 1.46/1.65         ( ( ( v1_funct_1 @ D ) & ( v1_funct_2 @ D @ B @ A ) & 
% 1.46/1.65             ( m1_subset_1 @ D @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ B @ A ) ) ) ) =>
% 1.46/1.65           ( ( ( ( k2_relset_1 @ A @ B @ C ) = ( B ) ) & 
% 1.46/1.65               ( r2_relset_1 @
% 1.46/1.65                 A @ A @ ( k1_partfun1 @ A @ B @ B @ A @ C @ D ) @ 
% 1.46/1.65                 ( k6_partfun1 @ A ) ) & 
% 1.46/1.65               ( v2_funct_1 @ C ) ) =>
% 1.46/1.65             ( ( ( A ) = ( k1_xboole_0 ) ) | ( ( B ) = ( k1_xboole_0 ) ) | 
% 1.46/1.65               ( ( D ) = ( k2_funct_1 @ C ) ) ) ) ) ) ))).
% 1.46/1.65  thf(zf_stmt_0, negated_conjecture,
% 1.46/1.65    (~( ![A:$i,B:$i,C:$i]:
% 1.46/1.65        ( ( ( v1_funct_1 @ C ) & ( v1_funct_2 @ C @ A @ B ) & 
% 1.46/1.65            ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) ) =>
% 1.46/1.65          ( ![D:$i]:
% 1.46/1.65            ( ( ( v1_funct_1 @ D ) & ( v1_funct_2 @ D @ B @ A ) & 
% 1.46/1.65                ( m1_subset_1 @ D @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ B @ A ) ) ) ) =>
% 1.46/1.65              ( ( ( ( k2_relset_1 @ A @ B @ C ) = ( B ) ) & 
% 1.46/1.65                  ( r2_relset_1 @
% 1.46/1.65                    A @ A @ ( k1_partfun1 @ A @ B @ B @ A @ C @ D ) @ 
% 1.46/1.65                    ( k6_partfun1 @ A ) ) & 
% 1.46/1.65                  ( v2_funct_1 @ C ) ) =>
% 1.46/1.65                ( ( ( A ) = ( k1_xboole_0 ) ) | ( ( B ) = ( k1_xboole_0 ) ) | 
% 1.46/1.65                  ( ( D ) = ( k2_funct_1 @ C ) ) ) ) ) ) ) )),
% 1.46/1.65    inference('cnf.neg', [status(esa)], [t36_funct_2])).
% 1.46/1.65  thf('0', plain,
% 1.46/1.65      ((m1_subset_1 @ sk_D @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_B @ sk_A)))),
% 1.46/1.65      inference('cnf', [status(esa)], [zf_stmt_0])).
% 1.46/1.65  thf('1', plain,
% 1.46/1.65      ((m1_subset_1 @ sk_C @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_A @ sk_B)))),
% 1.46/1.65      inference('cnf', [status(esa)], [zf_stmt_0])).
% 1.46/1.65  thf(redefinition_k1_partfun1, axiom,
% 1.46/1.65    (![A:$i,B:$i,C:$i,D:$i,E:$i,F:$i]:
% 1.46/1.65     ( ( ( v1_funct_1 @ E ) & 
% 1.46/1.65         ( m1_subset_1 @ E @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) & 
% 1.46/1.65         ( v1_funct_1 @ F ) & 
% 1.46/1.65         ( m1_subset_1 @ F @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ C @ D ) ) ) ) =>
% 1.46/1.65       ( ( k1_partfun1 @ A @ B @ C @ D @ E @ F ) = ( k5_relat_1 @ E @ F ) ) ))).
% 1.46/1.65  thf('2', plain,
% 1.46/1.65      (![X36 : $i, X37 : $i, X38 : $i, X39 : $i, X40 : $i, X41 : $i]:
% 1.46/1.65         (~ (m1_subset_1 @ X36 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X37 @ X38)))
% 1.46/1.65          | ~ (v1_funct_1 @ X36)
% 1.46/1.65          | ~ (v1_funct_1 @ X39)
% 1.46/1.65          | ~ (m1_subset_1 @ X39 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X40 @ X41)))
% 1.46/1.65          | ((k1_partfun1 @ X37 @ X38 @ X40 @ X41 @ X36 @ X39)
% 1.46/1.65              = (k5_relat_1 @ X36 @ X39)))),
% 1.46/1.65      inference('cnf', [status(esa)], [redefinition_k1_partfun1])).
% 1.46/1.65  thf('3', plain,
% 1.46/1.65      (![X0 : $i, X1 : $i, X2 : $i]:
% 1.46/1.65         (((k1_partfun1 @ sk_A @ sk_B @ X2 @ X1 @ sk_C @ X0)
% 1.46/1.65            = (k5_relat_1 @ sk_C @ X0))
% 1.46/1.65          | ~ (m1_subset_1 @ X0 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X2 @ X1)))
% 1.46/1.65          | ~ (v1_funct_1 @ X0)
% 1.46/1.65          | ~ (v1_funct_1 @ sk_C))),
% 1.46/1.65      inference('sup-', [status(thm)], ['1', '2'])).
% 1.46/1.65  thf('4', plain, ((v1_funct_1 @ sk_C)),
% 1.46/1.65      inference('cnf', [status(esa)], [zf_stmt_0])).
% 1.46/1.65  thf('5', plain,
% 1.46/1.65      (![X0 : $i, X1 : $i, X2 : $i]:
% 1.46/1.65         (((k1_partfun1 @ sk_A @ sk_B @ X2 @ X1 @ sk_C @ X0)
% 1.46/1.65            = (k5_relat_1 @ sk_C @ X0))
% 1.46/1.65          | ~ (m1_subset_1 @ X0 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X2 @ X1)))
% 1.46/1.65          | ~ (v1_funct_1 @ X0))),
% 1.46/1.65      inference('demod', [status(thm)], ['3', '4'])).
% 1.46/1.65  thf('6', plain,
% 1.46/1.65      ((~ (v1_funct_1 @ sk_D)
% 1.46/1.65        | ((k1_partfun1 @ sk_A @ sk_B @ sk_B @ sk_A @ sk_C @ sk_D)
% 1.46/1.65            = (k5_relat_1 @ sk_C @ sk_D)))),
% 1.46/1.65      inference('sup-', [status(thm)], ['0', '5'])).
% 1.46/1.65  thf('7', plain, ((v1_funct_1 @ sk_D)),
% 1.46/1.65      inference('cnf', [status(esa)], [zf_stmt_0])).
% 1.46/1.65  thf('8', plain,
% 1.46/1.65      ((r2_relset_1 @ sk_A @ sk_A @ 
% 1.46/1.65        (k1_partfun1 @ sk_A @ sk_B @ sk_B @ sk_A @ sk_C @ sk_D) @ 
% 1.46/1.65        (k6_partfun1 @ sk_A))),
% 1.46/1.65      inference('cnf', [status(esa)], [zf_stmt_0])).
% 1.46/1.65  thf(redefinition_k6_partfun1, axiom,
% 1.46/1.65    (![A:$i]: ( ( k6_partfun1 @ A ) = ( k6_relat_1 @ A ) ))).
% 1.46/1.65  thf('9', plain, (![X42 : $i]: ((k6_partfun1 @ X42) = (k6_relat_1 @ X42))),
% 1.46/1.65      inference('cnf', [status(esa)], [redefinition_k6_partfun1])).
% 1.46/1.65  thf('10', plain,
% 1.46/1.65      ((r2_relset_1 @ sk_A @ sk_A @ 
% 1.46/1.65        (k1_partfun1 @ sk_A @ sk_B @ sk_B @ sk_A @ sk_C @ sk_D) @ 
% 1.46/1.65        (k6_relat_1 @ sk_A))),
% 1.46/1.65      inference('demod', [status(thm)], ['8', '9'])).
% 1.46/1.65  thf('11', plain,
% 1.46/1.65      ((m1_subset_1 @ sk_D @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_B @ sk_A)))),
% 1.46/1.65      inference('cnf', [status(esa)], [zf_stmt_0])).
% 1.46/1.65  thf('12', plain,
% 1.46/1.65      ((m1_subset_1 @ sk_C @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_A @ sk_B)))),
% 1.46/1.65      inference('cnf', [status(esa)], [zf_stmt_0])).
% 1.46/1.65  thf(dt_k1_partfun1, axiom,
% 1.46/1.65    (![A:$i,B:$i,C:$i,D:$i,E:$i,F:$i]:
% 1.46/1.65     ( ( ( v1_funct_1 @ E ) & 
% 1.46/1.65         ( m1_subset_1 @ E @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) & 
% 1.46/1.65         ( v1_funct_1 @ F ) & 
% 1.46/1.65         ( m1_subset_1 @ F @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ C @ D ) ) ) ) =>
% 1.46/1.65       ( ( v1_funct_1 @ ( k1_partfun1 @ A @ B @ C @ D @ E @ F ) ) & 
% 1.46/1.65         ( m1_subset_1 @
% 1.46/1.65           ( k1_partfun1 @ A @ B @ C @ D @ E @ F ) @ 
% 1.46/1.65           ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ D ) ) ) ) ))).
% 1.46/1.65  thf('13', plain,
% 1.46/1.65      (![X28 : $i, X29 : $i, X30 : $i, X31 : $i, X32 : $i, X33 : $i]:
% 1.46/1.65         (~ (m1_subset_1 @ X28 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X29 @ X30)))
% 1.46/1.65          | ~ (v1_funct_1 @ X28)
% 1.46/1.65          | ~ (v1_funct_1 @ X31)
% 1.46/1.65          | ~ (m1_subset_1 @ X31 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X32 @ X33)))
% 1.46/1.65          | (m1_subset_1 @ (k1_partfun1 @ X29 @ X30 @ X32 @ X33 @ X28 @ X31) @ 
% 1.46/1.65             (k1_zfmisc_1 @ (k2_zfmisc_1 @ X29 @ X33))))),
% 1.46/1.65      inference('cnf', [status(esa)], [dt_k1_partfun1])).
% 1.46/1.65  thf('14', plain,
% 1.46/1.65      (![X0 : $i, X1 : $i, X2 : $i]:
% 1.46/1.65         ((m1_subset_1 @ (k1_partfun1 @ sk_A @ sk_B @ X2 @ X0 @ sk_C @ X1) @ 
% 1.46/1.65           (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_A @ X0)))
% 1.46/1.65          | ~ (m1_subset_1 @ X1 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X2 @ X0)))
% 1.46/1.65          | ~ (v1_funct_1 @ X1)
% 1.46/1.65          | ~ (v1_funct_1 @ sk_C))),
% 1.46/1.65      inference('sup-', [status(thm)], ['12', '13'])).
% 1.46/1.65  thf('15', plain, ((v1_funct_1 @ sk_C)),
% 1.46/1.65      inference('cnf', [status(esa)], [zf_stmt_0])).
% 1.46/1.65  thf('16', plain,
% 1.46/1.65      (![X0 : $i, X1 : $i, X2 : $i]:
% 1.46/1.65         ((m1_subset_1 @ (k1_partfun1 @ sk_A @ sk_B @ X2 @ X0 @ sk_C @ X1) @ 
% 1.46/1.65           (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_A @ X0)))
% 1.46/1.65          | ~ (m1_subset_1 @ X1 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X2 @ X0)))
% 1.46/1.65          | ~ (v1_funct_1 @ X1))),
% 1.46/1.65      inference('demod', [status(thm)], ['14', '15'])).
% 1.46/1.65  thf('17', plain,
% 1.46/1.65      ((~ (v1_funct_1 @ sk_D)
% 1.46/1.65        | (m1_subset_1 @ 
% 1.46/1.65           (k1_partfun1 @ sk_A @ sk_B @ sk_B @ sk_A @ sk_C @ sk_D) @ 
% 1.46/1.65           (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_A @ sk_A))))),
% 1.46/1.65      inference('sup-', [status(thm)], ['11', '16'])).
% 1.46/1.65  thf('18', plain, ((v1_funct_1 @ sk_D)),
% 1.46/1.65      inference('cnf', [status(esa)], [zf_stmt_0])).
% 1.46/1.65  thf('19', plain,
% 1.46/1.65      ((m1_subset_1 @ 
% 1.46/1.65        (k1_partfun1 @ sk_A @ sk_B @ sk_B @ sk_A @ sk_C @ sk_D) @ 
% 1.46/1.65        (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_A @ sk_A)))),
% 1.46/1.65      inference('demod', [status(thm)], ['17', '18'])).
% 1.46/1.65  thf(redefinition_r2_relset_1, axiom,
% 1.46/1.65    (![A:$i,B:$i,C:$i,D:$i]:
% 1.46/1.65     ( ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) & 
% 1.46/1.65         ( m1_subset_1 @ D @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) ) =>
% 1.46/1.65       ( ( r2_relset_1 @ A @ B @ C @ D ) <=> ( ( C ) = ( D ) ) ) ))).
% 1.46/1.65  thf('20', plain,
% 1.46/1.65      (![X16 : $i, X17 : $i, X18 : $i, X19 : $i]:
% 1.46/1.65         (~ (m1_subset_1 @ X16 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X17 @ X18)))
% 1.46/1.65          | ~ (m1_subset_1 @ X19 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X17 @ X18)))
% 1.46/1.65          | ((X16) = (X19))
% 1.46/1.65          | ~ (r2_relset_1 @ X17 @ X18 @ X16 @ X19))),
% 1.46/1.65      inference('cnf', [status(esa)], [redefinition_r2_relset_1])).
% 1.46/1.65  thf('21', plain,
% 1.46/1.65      (![X0 : $i]:
% 1.46/1.65         (~ (r2_relset_1 @ sk_A @ sk_A @ 
% 1.46/1.65             (k1_partfun1 @ sk_A @ sk_B @ sk_B @ sk_A @ sk_C @ sk_D) @ X0)
% 1.46/1.65          | ((k1_partfun1 @ sk_A @ sk_B @ sk_B @ sk_A @ sk_C @ sk_D) = (X0))
% 1.46/1.65          | ~ (m1_subset_1 @ X0 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_A @ sk_A))))),
% 1.46/1.65      inference('sup-', [status(thm)], ['19', '20'])).
% 1.46/1.65  thf('22', plain,
% 1.46/1.65      ((~ (m1_subset_1 @ (k6_relat_1 @ sk_A) @ 
% 1.46/1.65           (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_A @ sk_A)))
% 1.46/1.65        | ((k1_partfun1 @ sk_A @ sk_B @ sk_B @ sk_A @ sk_C @ sk_D)
% 1.46/1.65            = (k6_relat_1 @ sk_A)))),
% 1.46/1.65      inference('sup-', [status(thm)], ['10', '21'])).
% 1.46/1.65  thf(dt_k6_partfun1, axiom,
% 1.46/1.65    (![A:$i]:
% 1.46/1.65     ( ( m1_subset_1 @
% 1.46/1.65         ( k6_partfun1 @ A ) @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ A ) ) ) & 
% 1.46/1.65       ( v1_partfun1 @ ( k6_partfun1 @ A ) @ A ) ))).
% 1.46/1.65  thf('23', plain,
% 1.46/1.65      (![X35 : $i]:
% 1.46/1.65         (m1_subset_1 @ (k6_partfun1 @ X35) @ 
% 1.46/1.65          (k1_zfmisc_1 @ (k2_zfmisc_1 @ X35 @ X35)))),
% 1.46/1.65      inference('cnf', [status(esa)], [dt_k6_partfun1])).
% 1.46/1.65  thf('24', plain, (![X42 : $i]: ((k6_partfun1 @ X42) = (k6_relat_1 @ X42))),
% 1.46/1.65      inference('cnf', [status(esa)], [redefinition_k6_partfun1])).
% 1.46/1.65  thf('25', plain,
% 1.46/1.65      (![X35 : $i]:
% 1.46/1.65         (m1_subset_1 @ (k6_relat_1 @ X35) @ 
% 1.46/1.65          (k1_zfmisc_1 @ (k2_zfmisc_1 @ X35 @ X35)))),
% 1.46/1.65      inference('demod', [status(thm)], ['23', '24'])).
% 1.46/1.65  thf('26', plain,
% 1.46/1.65      (((k1_partfun1 @ sk_A @ sk_B @ sk_B @ sk_A @ sk_C @ sk_D)
% 1.46/1.65         = (k6_relat_1 @ sk_A))),
% 1.46/1.65      inference('demod', [status(thm)], ['22', '25'])).
% 1.46/1.65  thf('27', plain, (((k6_relat_1 @ sk_A) = (k5_relat_1 @ sk_C @ sk_D))),
% 1.46/1.65      inference('demod', [status(thm)], ['6', '7', '26'])).
% 1.46/1.65  thf(t64_funct_1, axiom,
% 1.46/1.65    (![A:$i]:
% 1.46/1.65     ( ( ( v1_relat_1 @ A ) & ( v1_funct_1 @ A ) ) =>
% 1.46/1.65       ( ![B:$i]:
% 1.46/1.65         ( ( ( v1_relat_1 @ B ) & ( v1_funct_1 @ B ) ) =>
% 1.46/1.65           ( ( ( v2_funct_1 @ A ) & 
% 1.46/1.65               ( ( k2_relat_1 @ B ) = ( k1_relat_1 @ A ) ) & 
% 1.46/1.65               ( ( k5_relat_1 @ B @ A ) = ( k6_relat_1 @ ( k2_relat_1 @ A ) ) ) ) =>
% 1.46/1.65             ( ( B ) = ( k2_funct_1 @ A ) ) ) ) ) ))).
% 1.46/1.65  thf('28', plain,
% 1.46/1.65      (![X4 : $i, X5 : $i]:
% 1.46/1.65         (~ (v1_relat_1 @ X4)
% 1.46/1.65          | ~ (v1_funct_1 @ X4)
% 1.46/1.65          | ((X4) = (k2_funct_1 @ X5))
% 1.46/1.65          | ((k5_relat_1 @ X4 @ X5) != (k6_relat_1 @ (k2_relat_1 @ X5)))
% 1.46/1.65          | ((k2_relat_1 @ X4) != (k1_relat_1 @ X5))
% 1.46/1.65          | ~ (v2_funct_1 @ X5)
% 1.46/1.65          | ~ (v1_funct_1 @ X5)
% 1.46/1.65          | ~ (v1_relat_1 @ X5))),
% 1.46/1.65      inference('cnf', [status(esa)], [t64_funct_1])).
% 1.46/1.65  thf('29', plain,
% 1.46/1.65      ((((k6_relat_1 @ sk_A) != (k6_relat_1 @ (k2_relat_1 @ sk_D)))
% 1.46/1.65        | ~ (v1_relat_1 @ sk_D)
% 1.46/1.65        | ~ (v1_funct_1 @ sk_D)
% 1.46/1.65        | ~ (v2_funct_1 @ sk_D)
% 1.46/1.65        | ((k2_relat_1 @ sk_C) != (k1_relat_1 @ sk_D))
% 1.46/1.65        | ((sk_C) = (k2_funct_1 @ sk_D))
% 1.46/1.65        | ~ (v1_funct_1 @ sk_C)
% 1.46/1.65        | ~ (v1_relat_1 @ sk_C))),
% 1.46/1.65      inference('sup-', [status(thm)], ['27', '28'])).
% 1.46/1.65  thf('30', plain,
% 1.46/1.65      (((k1_partfun1 @ sk_A @ sk_B @ sk_B @ sk_A @ sk_C @ sk_D)
% 1.46/1.65         = (k6_relat_1 @ sk_A))),
% 1.46/1.65      inference('demod', [status(thm)], ['22', '25'])).
% 1.46/1.65  thf('31', plain,
% 1.46/1.65      ((m1_subset_1 @ sk_C @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_A @ sk_B)))),
% 1.46/1.65      inference('cnf', [status(esa)], [zf_stmt_0])).
% 1.46/1.65  thf(t24_funct_2, axiom,
% 1.46/1.65    (![A:$i,B:$i,C:$i]:
% 1.46/1.65     ( ( ( v1_funct_1 @ C ) & ( v1_funct_2 @ C @ A @ B ) & 
% 1.46/1.65         ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) ) =>
% 1.46/1.65       ( ![D:$i]:
% 1.46/1.65         ( ( ( v1_funct_1 @ D ) & ( v1_funct_2 @ D @ B @ A ) & 
% 1.46/1.65             ( m1_subset_1 @ D @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ B @ A ) ) ) ) =>
% 1.46/1.65           ( ( r2_relset_1 @
% 1.46/1.65               B @ B @ ( k1_partfun1 @ B @ A @ A @ B @ D @ C ) @ 
% 1.46/1.65               ( k6_partfun1 @ B ) ) =>
% 1.46/1.65             ( ( k2_relset_1 @ A @ B @ C ) = ( B ) ) ) ) ) ))).
% 1.46/1.65  thf('32', plain,
% 1.46/1.65      (![X43 : $i, X44 : $i, X45 : $i, X46 : $i]:
% 1.46/1.65         (~ (v1_funct_1 @ X43)
% 1.46/1.65          | ~ (v1_funct_2 @ X43 @ X44 @ X45)
% 1.46/1.65          | ~ (m1_subset_1 @ X43 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X44 @ X45)))
% 1.46/1.65          | ~ (r2_relset_1 @ X44 @ X44 @ 
% 1.46/1.65               (k1_partfun1 @ X44 @ X45 @ X45 @ X44 @ X43 @ X46) @ 
% 1.46/1.65               (k6_partfun1 @ X44))
% 1.46/1.65          | ((k2_relset_1 @ X45 @ X44 @ X46) = (X44))
% 1.46/1.65          | ~ (m1_subset_1 @ X46 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X45 @ X44)))
% 1.46/1.65          | ~ (v1_funct_2 @ X46 @ X45 @ X44)
% 1.46/1.65          | ~ (v1_funct_1 @ X46))),
% 1.46/1.65      inference('cnf', [status(esa)], [t24_funct_2])).
% 1.46/1.65  thf('33', plain, (![X42 : $i]: ((k6_partfun1 @ X42) = (k6_relat_1 @ X42))),
% 1.46/1.65      inference('cnf', [status(esa)], [redefinition_k6_partfun1])).
% 1.46/1.65  thf('34', plain,
% 1.46/1.65      (![X43 : $i, X44 : $i, X45 : $i, X46 : $i]:
% 1.46/1.65         (~ (v1_funct_1 @ X43)
% 1.46/1.65          | ~ (v1_funct_2 @ X43 @ X44 @ X45)
% 1.46/1.65          | ~ (m1_subset_1 @ X43 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X44 @ X45)))
% 1.46/1.65          | ~ (r2_relset_1 @ X44 @ X44 @ 
% 1.46/1.65               (k1_partfun1 @ X44 @ X45 @ X45 @ X44 @ X43 @ X46) @ 
% 1.46/1.65               (k6_relat_1 @ X44))
% 1.46/1.65          | ((k2_relset_1 @ X45 @ X44 @ X46) = (X44))
% 1.46/1.65          | ~ (m1_subset_1 @ X46 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X45 @ X44)))
% 1.46/1.65          | ~ (v1_funct_2 @ X46 @ X45 @ X44)
% 1.46/1.65          | ~ (v1_funct_1 @ X46))),
% 1.46/1.65      inference('demod', [status(thm)], ['32', '33'])).
% 1.46/1.65  thf('35', plain,
% 1.46/1.65      (![X0 : $i]:
% 1.46/1.65         (~ (v1_funct_1 @ X0)
% 1.46/1.65          | ~ (v1_funct_2 @ X0 @ sk_B @ sk_A)
% 1.46/1.65          | ~ (m1_subset_1 @ X0 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_B @ sk_A)))
% 1.46/1.65          | ((k2_relset_1 @ sk_B @ sk_A @ X0) = (sk_A))
% 1.46/1.65          | ~ (r2_relset_1 @ sk_A @ sk_A @ 
% 1.46/1.65               (k1_partfun1 @ sk_A @ sk_B @ sk_B @ sk_A @ sk_C @ X0) @ 
% 1.46/1.65               (k6_relat_1 @ sk_A))
% 1.46/1.65          | ~ (v1_funct_2 @ sk_C @ sk_A @ sk_B)
% 1.46/1.65          | ~ (v1_funct_1 @ sk_C))),
% 1.46/1.65      inference('sup-', [status(thm)], ['31', '34'])).
% 1.46/1.65  thf('36', plain, ((v1_funct_2 @ sk_C @ sk_A @ sk_B)),
% 1.46/1.65      inference('cnf', [status(esa)], [zf_stmt_0])).
% 1.46/1.65  thf('37', plain, ((v1_funct_1 @ sk_C)),
% 1.46/1.65      inference('cnf', [status(esa)], [zf_stmt_0])).
% 1.46/1.65  thf('38', plain,
% 1.46/1.65      (![X0 : $i]:
% 1.46/1.65         (~ (v1_funct_1 @ X0)
% 1.46/1.65          | ~ (v1_funct_2 @ X0 @ sk_B @ sk_A)
% 1.46/1.65          | ~ (m1_subset_1 @ X0 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_B @ sk_A)))
% 1.46/1.65          | ((k2_relset_1 @ sk_B @ sk_A @ X0) = (sk_A))
% 1.46/1.65          | ~ (r2_relset_1 @ sk_A @ sk_A @ 
% 1.46/1.65               (k1_partfun1 @ sk_A @ sk_B @ sk_B @ sk_A @ sk_C @ X0) @ 
% 1.46/1.65               (k6_relat_1 @ sk_A)))),
% 1.46/1.65      inference('demod', [status(thm)], ['35', '36', '37'])).
% 1.46/1.65  thf('39', plain,
% 1.46/1.65      ((~ (r2_relset_1 @ sk_A @ sk_A @ (k6_relat_1 @ sk_A) @ 
% 1.46/1.65           (k6_relat_1 @ sk_A))
% 1.46/1.65        | ((k2_relset_1 @ sk_B @ sk_A @ sk_D) = (sk_A))
% 1.46/1.65        | ~ (m1_subset_1 @ sk_D @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_B @ sk_A)))
% 1.46/1.65        | ~ (v1_funct_2 @ sk_D @ sk_B @ sk_A)
% 1.46/1.65        | ~ (v1_funct_1 @ sk_D))),
% 1.46/1.65      inference('sup-', [status(thm)], ['30', '38'])).
% 1.46/1.65  thf('40', plain,
% 1.46/1.65      (![X35 : $i]:
% 1.46/1.65         (m1_subset_1 @ (k6_relat_1 @ X35) @ 
% 1.46/1.65          (k1_zfmisc_1 @ (k2_zfmisc_1 @ X35 @ X35)))),
% 1.46/1.65      inference('demod', [status(thm)], ['23', '24'])).
% 1.46/1.65  thf('41', plain,
% 1.46/1.65      (![X16 : $i, X17 : $i, X18 : $i, X19 : $i]:
% 1.46/1.65         (~ (m1_subset_1 @ X16 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X17 @ X18)))
% 1.46/1.65          | ~ (m1_subset_1 @ X19 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X17 @ X18)))
% 1.46/1.65          | (r2_relset_1 @ X17 @ X18 @ X16 @ X19)
% 1.46/1.65          | ((X16) != (X19)))),
% 1.46/1.65      inference('cnf', [status(esa)], [redefinition_r2_relset_1])).
% 1.46/1.65  thf('42', plain,
% 1.46/1.65      (![X17 : $i, X18 : $i, X19 : $i]:
% 1.46/1.65         ((r2_relset_1 @ X17 @ X18 @ X19 @ X19)
% 1.46/1.65          | ~ (m1_subset_1 @ X19 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X17 @ X18))))),
% 1.46/1.65      inference('simplify', [status(thm)], ['41'])).
% 1.46/1.65  thf('43', plain,
% 1.46/1.65      (![X0 : $i]:
% 1.46/1.65         (r2_relset_1 @ X0 @ X0 @ (k6_relat_1 @ X0) @ (k6_relat_1 @ X0))),
% 1.46/1.65      inference('sup-', [status(thm)], ['40', '42'])).
% 1.46/1.65  thf('44', plain,
% 1.46/1.65      ((m1_subset_1 @ sk_D @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_B @ sk_A)))),
% 1.46/1.65      inference('cnf', [status(esa)], [zf_stmt_0])).
% 1.46/1.65  thf(redefinition_k2_relset_1, axiom,
% 1.46/1.65    (![A:$i,B:$i,C:$i]:
% 1.46/1.65     ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) =>
% 1.46/1.65       ( ( k2_relset_1 @ A @ B @ C ) = ( k2_relat_1 @ C ) ) ))).
% 1.46/1.65  thf('45', plain,
% 1.46/1.65      (![X13 : $i, X14 : $i, X15 : $i]:
% 1.46/1.65         (((k2_relset_1 @ X14 @ X15 @ X13) = (k2_relat_1 @ X13))
% 1.46/1.65          | ~ (m1_subset_1 @ X13 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X14 @ X15))))),
% 1.46/1.65      inference('cnf', [status(esa)], [redefinition_k2_relset_1])).
% 1.46/1.65  thf('46', plain,
% 1.46/1.65      (((k2_relset_1 @ sk_B @ sk_A @ sk_D) = (k2_relat_1 @ sk_D))),
% 1.46/1.65      inference('sup-', [status(thm)], ['44', '45'])).
% 1.46/1.65  thf('47', plain,
% 1.46/1.65      ((m1_subset_1 @ sk_D @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_B @ sk_A)))),
% 1.46/1.65      inference('cnf', [status(esa)], [zf_stmt_0])).
% 1.46/1.65  thf('48', plain, ((v1_funct_2 @ sk_D @ sk_B @ sk_A)),
% 1.46/1.65      inference('cnf', [status(esa)], [zf_stmt_0])).
% 1.46/1.65  thf('49', plain, ((v1_funct_1 @ sk_D)),
% 1.46/1.65      inference('cnf', [status(esa)], [zf_stmt_0])).
% 1.46/1.65  thf('50', plain, (((k2_relat_1 @ sk_D) = (sk_A))),
% 1.46/1.65      inference('demod', [status(thm)], ['39', '43', '46', '47', '48', '49'])).
% 1.46/1.65  thf('51', plain,
% 1.46/1.65      ((m1_subset_1 @ sk_D @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_B @ sk_A)))),
% 1.46/1.65      inference('cnf', [status(esa)], [zf_stmt_0])).
% 1.46/1.65  thf(cc1_relset_1, axiom,
% 1.46/1.65    (![A:$i,B:$i,C:$i]:
% 1.46/1.65     ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) =>
% 1.46/1.65       ( v1_relat_1 @ C ) ))).
% 1.46/1.65  thf('52', plain,
% 1.46/1.65      (![X7 : $i, X8 : $i, X9 : $i]:
% 1.46/1.65         ((v1_relat_1 @ X7)
% 1.46/1.65          | ~ (m1_subset_1 @ X7 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X8 @ X9))))),
% 1.46/1.65      inference('cnf', [status(esa)], [cc1_relset_1])).
% 1.46/1.65  thf('53', plain, ((v1_relat_1 @ sk_D)),
% 1.46/1.65      inference('sup-', [status(thm)], ['51', '52'])).
% 1.46/1.65  thf('54', plain, ((v1_funct_1 @ sk_D)),
% 1.46/1.65      inference('cnf', [status(esa)], [zf_stmt_0])).
% 1.46/1.65  thf('55', plain,
% 1.46/1.65      ((m1_subset_1 @ sk_C @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_A @ sk_B)))),
% 1.46/1.65      inference('cnf', [status(esa)], [zf_stmt_0])).
% 1.46/1.65  thf('56', plain,
% 1.46/1.65      (![X13 : $i, X14 : $i, X15 : $i]:
% 1.46/1.65         (((k2_relset_1 @ X14 @ X15 @ X13) = (k2_relat_1 @ X13))
% 1.46/1.65          | ~ (m1_subset_1 @ X13 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X14 @ X15))))),
% 1.46/1.65      inference('cnf', [status(esa)], [redefinition_k2_relset_1])).
% 1.46/1.65  thf('57', plain,
% 1.46/1.65      (((k2_relset_1 @ sk_A @ sk_B @ sk_C) = (k2_relat_1 @ sk_C))),
% 1.46/1.65      inference('sup-', [status(thm)], ['55', '56'])).
% 1.46/1.65  thf('58', plain, (((k2_relset_1 @ sk_A @ sk_B @ sk_C) = (sk_B))),
% 1.46/1.65      inference('cnf', [status(esa)], [zf_stmt_0])).
% 1.46/1.65  thf('59', plain, (((k2_relat_1 @ sk_C) = (sk_B))),
% 1.46/1.65      inference('sup+', [status(thm)], ['57', '58'])).
% 1.46/1.65  thf('60', plain, ((v1_funct_2 @ sk_D @ sk_B @ sk_A)),
% 1.46/1.65      inference('cnf', [status(esa)], [zf_stmt_0])).
% 1.46/1.65  thf(d1_funct_2, axiom,
% 1.46/1.65    (![A:$i,B:$i,C:$i]:
% 1.46/1.65     ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) =>
% 1.46/1.65       ( ( ( ( B ) = ( k1_xboole_0 ) ) =>
% 1.46/1.65           ( ( ( v1_funct_2 @ C @ A @ B ) <=> ( ( C ) = ( k1_xboole_0 ) ) ) | 
% 1.46/1.65             ( ( A ) = ( k1_xboole_0 ) ) ) ) & 
% 1.46/1.65         ( ( ( ( B ) = ( k1_xboole_0 ) ) => ( ( A ) = ( k1_xboole_0 ) ) ) =>
% 1.46/1.65           ( ( v1_funct_2 @ C @ A @ B ) <=>
% 1.46/1.65             ( ( A ) = ( k1_relset_1 @ A @ B @ C ) ) ) ) ) ))).
% 1.46/1.65  thf(zf_stmt_1, axiom,
% 1.46/1.65    (![C:$i,B:$i,A:$i]:
% 1.46/1.65     ( ( zip_tseitin_1 @ C @ B @ A ) =>
% 1.46/1.65       ( ( v1_funct_2 @ C @ A @ B ) <=> ( ( A ) = ( k1_relset_1 @ A @ B @ C ) ) ) ))).
% 1.46/1.65  thf('61', plain,
% 1.46/1.65      (![X22 : $i, X23 : $i, X24 : $i]:
% 1.46/1.65         (~ (v1_funct_2 @ X24 @ X22 @ X23)
% 1.46/1.65          | ((X22) = (k1_relset_1 @ X22 @ X23 @ X24))
% 1.46/1.65          | ~ (zip_tseitin_1 @ X24 @ X23 @ X22))),
% 1.46/1.65      inference('cnf', [status(esa)], [zf_stmt_1])).
% 1.46/1.65  thf('62', plain,
% 1.46/1.65      ((~ (zip_tseitin_1 @ sk_D @ sk_A @ sk_B)
% 1.46/1.65        | ((sk_B) = (k1_relset_1 @ sk_B @ sk_A @ sk_D)))),
% 1.46/1.65      inference('sup-', [status(thm)], ['60', '61'])).
% 1.46/1.65  thf(zf_stmt_2, axiom,
% 1.46/1.65    (![B:$i,A:$i]:
% 1.46/1.65     ( ( ( ( B ) = ( k1_xboole_0 ) ) => ( ( A ) = ( k1_xboole_0 ) ) ) =>
% 1.46/1.65       ( zip_tseitin_0 @ B @ A ) ))).
% 1.46/1.65  thf('63', plain,
% 1.46/1.65      (![X20 : $i, X21 : $i]:
% 1.46/1.65         ((zip_tseitin_0 @ X20 @ X21) | ((X20) = (k1_xboole_0)))),
% 1.46/1.65      inference('cnf', [status(esa)], [zf_stmt_2])).
% 1.46/1.65  thf('64', plain,
% 1.46/1.65      ((m1_subset_1 @ sk_D @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_B @ sk_A)))),
% 1.46/1.65      inference('cnf', [status(esa)], [zf_stmt_0])).
% 1.46/1.65  thf(zf_stmt_3, type, zip_tseitin_1 : $i > $i > $i > $o).
% 1.46/1.65  thf(zf_stmt_4, type, zip_tseitin_0 : $i > $i > $o).
% 1.46/1.65  thf(zf_stmt_5, axiom,
% 1.46/1.65    (![A:$i,B:$i,C:$i]:
% 1.46/1.65     ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) =>
% 1.46/1.65       ( ( ( zip_tseitin_0 @ B @ A ) => ( zip_tseitin_1 @ C @ B @ A ) ) & 
% 1.46/1.65         ( ( ( B ) = ( k1_xboole_0 ) ) =>
% 1.46/1.65           ( ( ( A ) = ( k1_xboole_0 ) ) | 
% 1.46/1.65             ( ( v1_funct_2 @ C @ A @ B ) <=> ( ( C ) = ( k1_xboole_0 ) ) ) ) ) ) ))).
% 1.46/1.65  thf('65', plain,
% 1.46/1.65      (![X25 : $i, X26 : $i, X27 : $i]:
% 1.46/1.65         (~ (zip_tseitin_0 @ X25 @ X26)
% 1.46/1.65          | (zip_tseitin_1 @ X27 @ X25 @ X26)
% 1.46/1.65          | ~ (m1_subset_1 @ X27 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X26 @ X25))))),
% 1.46/1.65      inference('cnf', [status(esa)], [zf_stmt_5])).
% 1.46/1.65  thf('66', plain,
% 1.46/1.65      (((zip_tseitin_1 @ sk_D @ sk_A @ sk_B) | ~ (zip_tseitin_0 @ sk_A @ sk_B))),
% 1.46/1.65      inference('sup-', [status(thm)], ['64', '65'])).
% 1.46/1.65  thf('67', plain,
% 1.46/1.65      ((((sk_A) = (k1_xboole_0)) | (zip_tseitin_1 @ sk_D @ sk_A @ sk_B))),
% 1.46/1.65      inference('sup-', [status(thm)], ['63', '66'])).
% 1.46/1.65  thf('68', plain, (((sk_A) != (k1_xboole_0))),
% 1.46/1.65      inference('cnf', [status(esa)], [zf_stmt_0])).
% 1.46/1.65  thf('69', plain, ((zip_tseitin_1 @ sk_D @ sk_A @ sk_B)),
% 1.46/1.65      inference('simplify_reflect-', [status(thm)], ['67', '68'])).
% 1.46/1.65  thf('70', plain,
% 1.46/1.65      ((m1_subset_1 @ sk_D @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_B @ sk_A)))),
% 1.46/1.65      inference('cnf', [status(esa)], [zf_stmt_0])).
% 1.46/1.65  thf(redefinition_k1_relset_1, axiom,
% 1.46/1.65    (![A:$i,B:$i,C:$i]:
% 1.46/1.65     ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) =>
% 1.46/1.65       ( ( k1_relset_1 @ A @ B @ C ) = ( k1_relat_1 @ C ) ) ))).
% 1.46/1.65  thf('71', plain,
% 1.46/1.65      (![X10 : $i, X11 : $i, X12 : $i]:
% 1.46/1.65         (((k1_relset_1 @ X11 @ X12 @ X10) = (k1_relat_1 @ X10))
% 1.46/1.65          | ~ (m1_subset_1 @ X10 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X11 @ X12))))),
% 1.46/1.65      inference('cnf', [status(esa)], [redefinition_k1_relset_1])).
% 1.46/1.65  thf('72', plain,
% 1.46/1.65      (((k1_relset_1 @ sk_B @ sk_A @ sk_D) = (k1_relat_1 @ sk_D))),
% 1.46/1.65      inference('sup-', [status(thm)], ['70', '71'])).
% 1.46/1.65  thf('73', plain, (((sk_B) = (k1_relat_1 @ sk_D))),
% 1.46/1.65      inference('demod', [status(thm)], ['62', '69', '72'])).
% 1.46/1.65  thf('74', plain, ((v1_funct_1 @ sk_C)),
% 1.46/1.65      inference('cnf', [status(esa)], [zf_stmt_0])).
% 1.46/1.65  thf('75', plain,
% 1.46/1.65      ((m1_subset_1 @ sk_C @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_A @ sk_B)))),
% 1.46/1.65      inference('cnf', [status(esa)], [zf_stmt_0])).
% 1.46/1.65  thf('76', plain,
% 1.46/1.65      (![X7 : $i, X8 : $i, X9 : $i]:
% 1.46/1.65         ((v1_relat_1 @ X7)
% 1.46/1.65          | ~ (m1_subset_1 @ X7 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X8 @ X9))))),
% 1.46/1.65      inference('cnf', [status(esa)], [cc1_relset_1])).
% 1.46/1.65  thf('77', plain, ((v1_relat_1 @ sk_C)),
% 1.46/1.65      inference('sup-', [status(thm)], ['75', '76'])).
% 1.46/1.65  thf('78', plain,
% 1.46/1.65      ((((k6_relat_1 @ sk_A) != (k6_relat_1 @ sk_A))
% 1.46/1.65        | ~ (v2_funct_1 @ sk_D)
% 1.46/1.65        | ((sk_B) != (sk_B))
% 1.46/1.65        | ((sk_C) = (k2_funct_1 @ sk_D)))),
% 1.46/1.65      inference('demod', [status(thm)],
% 1.46/1.65                ['29', '50', '53', '54', '59', '73', '74', '77'])).
% 1.46/1.65  thf('79', plain, ((((sk_C) = (k2_funct_1 @ sk_D)) | ~ (v2_funct_1 @ sk_D))),
% 1.46/1.65      inference('simplify', [status(thm)], ['78'])).
% 1.46/1.65  thf('80', plain, (((k6_relat_1 @ sk_A) = (k5_relat_1 @ sk_C @ sk_D))),
% 1.46/1.65      inference('demod', [status(thm)], ['6', '7', '26'])).
% 1.46/1.65  thf(t48_funct_1, axiom,
% 1.46/1.65    (![A:$i]:
% 1.46/1.65     ( ( ( v1_relat_1 @ A ) & ( v1_funct_1 @ A ) ) =>
% 1.46/1.65       ( ![B:$i]:
% 1.46/1.65         ( ( ( v1_relat_1 @ B ) & ( v1_funct_1 @ B ) ) =>
% 1.46/1.65           ( ( ( v2_funct_1 @ ( k5_relat_1 @ B @ A ) ) & 
% 1.46/1.65               ( ( k2_relat_1 @ B ) = ( k1_relat_1 @ A ) ) ) =>
% 1.46/1.65             ( ( v2_funct_1 @ B ) & ( v2_funct_1 @ A ) ) ) ) ) ))).
% 1.46/1.65  thf('81', plain,
% 1.46/1.65      (![X2 : $i, X3 : $i]:
% 1.46/1.65         (~ (v1_relat_1 @ X2)
% 1.46/1.65          | ~ (v1_funct_1 @ X2)
% 1.46/1.65          | (v2_funct_1 @ X3)
% 1.46/1.65          | ((k2_relat_1 @ X2) != (k1_relat_1 @ X3))
% 1.46/1.65          | ~ (v2_funct_1 @ (k5_relat_1 @ X2 @ X3))
% 1.46/1.65          | ~ (v1_funct_1 @ X3)
% 1.46/1.65          | ~ (v1_relat_1 @ X3))),
% 1.46/1.65      inference('cnf', [status(esa)], [t48_funct_1])).
% 1.46/1.65  thf('82', plain,
% 1.46/1.65      ((~ (v2_funct_1 @ (k6_relat_1 @ sk_A))
% 1.46/1.65        | ~ (v1_relat_1 @ sk_D)
% 1.46/1.65        | ~ (v1_funct_1 @ sk_D)
% 1.46/1.65        | ((k2_relat_1 @ sk_C) != (k1_relat_1 @ sk_D))
% 1.46/1.65        | (v2_funct_1 @ sk_D)
% 1.46/1.65        | ~ (v1_funct_1 @ sk_C)
% 1.46/1.65        | ~ (v1_relat_1 @ sk_C))),
% 1.46/1.65      inference('sup-', [status(thm)], ['80', '81'])).
% 1.46/1.65  thf(fc4_funct_1, axiom,
% 1.46/1.65    (![A:$i]:
% 1.46/1.65     ( ( v2_funct_1 @ ( k6_relat_1 @ A ) ) & 
% 1.46/1.65       ( v1_relat_1 @ ( k6_relat_1 @ A ) ) ))).
% 1.46/1.65  thf('83', plain, (![X1 : $i]: (v2_funct_1 @ (k6_relat_1 @ X1))),
% 1.46/1.65      inference('cnf', [status(esa)], [fc4_funct_1])).
% 1.46/1.65  thf('84', plain, ((v1_relat_1 @ sk_D)),
% 1.46/1.65      inference('sup-', [status(thm)], ['51', '52'])).
% 1.46/1.65  thf('85', plain, ((v1_funct_1 @ sk_D)),
% 1.46/1.65      inference('cnf', [status(esa)], [zf_stmt_0])).
% 1.46/1.65  thf('86', plain, (((k2_relat_1 @ sk_C) = (sk_B))),
% 1.46/1.65      inference('sup+', [status(thm)], ['57', '58'])).
% 1.46/1.65  thf('87', plain, (((sk_B) = (k1_relat_1 @ sk_D))),
% 1.46/1.65      inference('demod', [status(thm)], ['62', '69', '72'])).
% 1.46/1.65  thf('88', plain, ((v1_funct_1 @ sk_C)),
% 1.46/1.65      inference('cnf', [status(esa)], [zf_stmt_0])).
% 1.46/1.65  thf('89', plain, ((v1_relat_1 @ sk_C)),
% 1.46/1.65      inference('sup-', [status(thm)], ['75', '76'])).
% 1.46/1.65  thf('90', plain, ((((sk_B) != (sk_B)) | (v2_funct_1 @ sk_D))),
% 1.46/1.65      inference('demod', [status(thm)],
% 1.46/1.65                ['82', '83', '84', '85', '86', '87', '88', '89'])).
% 1.46/1.65  thf('91', plain, ((v2_funct_1 @ sk_D)),
% 1.46/1.65      inference('simplify', [status(thm)], ['90'])).
% 1.46/1.65  thf('92', plain, (((sk_C) = (k2_funct_1 @ sk_D))),
% 1.46/1.65      inference('demod', [status(thm)], ['79', '91'])).
% 1.46/1.65  thf(t65_funct_1, axiom,
% 1.46/1.65    (![A:$i]:
% 1.46/1.65     ( ( ( v1_relat_1 @ A ) & ( v1_funct_1 @ A ) ) =>
% 1.46/1.65       ( ( v2_funct_1 @ A ) => ( ( k2_funct_1 @ ( k2_funct_1 @ A ) ) = ( A ) ) ) ))).
% 1.46/1.65  thf('93', plain,
% 1.46/1.65      (![X6 : $i]:
% 1.46/1.65         (~ (v2_funct_1 @ X6)
% 1.46/1.65          | ((k2_funct_1 @ (k2_funct_1 @ X6)) = (X6))
% 1.46/1.65          | ~ (v1_funct_1 @ X6)
% 1.46/1.65          | ~ (v1_relat_1 @ X6))),
% 1.46/1.65      inference('cnf', [status(esa)], [t65_funct_1])).
% 1.46/1.65  thf('94', plain,
% 1.46/1.65      ((((k2_funct_1 @ sk_C) = (sk_D))
% 1.46/1.65        | ~ (v1_relat_1 @ sk_D)
% 1.46/1.65        | ~ (v1_funct_1 @ sk_D)
% 1.46/1.65        | ~ (v2_funct_1 @ sk_D))),
% 1.46/1.65      inference('sup+', [status(thm)], ['92', '93'])).
% 1.46/1.65  thf('95', plain, ((v1_relat_1 @ sk_D)),
% 1.46/1.65      inference('sup-', [status(thm)], ['51', '52'])).
% 1.46/1.65  thf('96', plain, ((v1_funct_1 @ sk_D)),
% 1.46/1.65      inference('cnf', [status(esa)], [zf_stmt_0])).
% 1.46/1.65  thf('97', plain, ((v2_funct_1 @ sk_D)),
% 1.46/1.65      inference('simplify', [status(thm)], ['90'])).
% 1.46/1.65  thf('98', plain, (((k2_funct_1 @ sk_C) = (sk_D))),
% 1.46/1.65      inference('demod', [status(thm)], ['94', '95', '96', '97'])).
% 1.46/1.65  thf('99', plain, (((sk_D) != (k2_funct_1 @ sk_C))),
% 1.46/1.65      inference('cnf', [status(esa)], [zf_stmt_0])).
% 1.46/1.65  thf('100', plain, ($false),
% 1.46/1.65      inference('simplify_reflect-', [status(thm)], ['98', '99'])).
% 1.46/1.65  
% 1.46/1.65  % SZS output end Refutation
% 1.46/1.65  
% 1.46/1.66  % Zipperpin 1.5 exiting
%------------------------------------------------------------------------------
