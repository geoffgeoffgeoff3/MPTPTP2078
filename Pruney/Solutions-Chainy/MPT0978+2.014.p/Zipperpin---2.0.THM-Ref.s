%------------------------------------------------------------------------------
% File       : Zipperpin---2.0
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_portfolio.sh /export/starexec/sandbox2/benchmark/theBenchmark.p /export/starexec/sandbox2/tmp/tmp.VVeUrHcGj4

% Computer   : n012.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 13:53:53 EST 2020

% Result     : Theorem 0.72s
% Output     : Refutation 0.72s
% Verified   : 
% Statistics : Number of formulae       :  100 ( 209 expanded)
%              Number of leaves         :   36 (  77 expanded)
%              Depth                    :   12
%              Number of atoms          :  868 (3840 expanded)
%              Number of equality atoms :   38 ( 123 expanded)
%              Maximal formula depth    :   18 (   7 average)

% Comments   : 
%------------------------------------------------------------------------------
thf(m1_subset_1_type,type,(
    m1_subset_1: $i > $i > $o )).

thf(v1_funct_1_type,type,(
    v1_funct_1: $i > $o )).

thf(k2_relset_1_type,type,(
    k2_relset_1: $i > $i > $i > $i )).

thf(sk_B_type,type,(
    sk_B: $i )).

thf(k4_relset_1_type,type,(
    k4_relset_1: $i > $i > $i > $i > $i > $i > $i )).

thf(k1_zfmisc_1_type,type,(
    k1_zfmisc_1: $i > $i )).

thf(k1_relat_1_type,type,(
    k1_relat_1: $i > $i )).

thf(sk_A_type,type,(
    sk_A: $i )).

thf(v1_funct_2_type,type,(
    v1_funct_2: $i > $i > $i > $o )).

thf(sk_D_type,type,(
    sk_D: $i )).

thf(k6_partfun1_type,type,(
    k6_partfun1: $i > $i )).

thf(v1_relat_1_type,type,(
    v1_relat_1: $i > $o )).

thf(k1_partfun1_type,type,(
    k1_partfun1: $i > $i > $i > $i > $i > $i > $i )).

thf(k6_relat_1_type,type,(
    k6_relat_1: $i > $i )).

thf(sk_C_type,type,(
    sk_C: $i )).

thf(r1_tarski_type,type,(
    r1_tarski: $i > $i > $o )).

thf(k2_relat_1_type,type,(
    k2_relat_1: $i > $i )).

thf(v1_partfun1_type,type,(
    v1_partfun1: $i > $i > $o )).

thf(r2_relset_1_type,type,(
    r2_relset_1: $i > $i > $i > $i > $o )).

thf(k5_relat_1_type,type,(
    k5_relat_1: $i > $i > $i )).

thf(k2_zfmisc_1_type,type,(
    k2_zfmisc_1: $i > $i > $i )).

thf(t24_funct_2,conjecture,(
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

thf(zf_stmt_0,negated_conjecture,(
    ~ ! [A: $i,B: $i,C: $i] :
        ( ( ( v1_funct_1 @ C )
          & ( v1_funct_2 @ C @ A @ B )
          & ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) )
       => ! [D: $i] :
            ( ( ( v1_funct_1 @ D )
              & ( v1_funct_2 @ D @ B @ A )
              & ( m1_subset_1 @ D @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ B @ A ) ) ) )
           => ( ( r2_relset_1 @ B @ B @ ( k1_partfun1 @ B @ A @ A @ B @ D @ C ) @ ( k6_partfun1 @ B ) )
             => ( ( k2_relset_1 @ A @ B @ C )
                = B ) ) ) ) ),
    inference('cnf.neg',[status(esa)],[t24_funct_2])).

thf('0',plain,(
    r2_relset_1 @ sk_B @ sk_B @ ( k1_partfun1 @ sk_B @ sk_A @ sk_A @ sk_B @ sk_D @ sk_C ) @ ( k6_partfun1 @ sk_B ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(redefinition_k6_partfun1,axiom,(
    ! [A: $i] :
      ( ( k6_partfun1 @ A )
      = ( k6_relat_1 @ A ) ) )).

thf('1',plain,(
    ! [X44: $i] :
      ( ( k6_partfun1 @ X44 )
      = ( k6_relat_1 @ X44 ) ) ),
    inference(cnf,[status(esa)],[redefinition_k6_partfun1])).

thf('2',plain,(
    r2_relset_1 @ sk_B @ sk_B @ ( k1_partfun1 @ sk_B @ sk_A @ sk_A @ sk_B @ sk_D @ sk_C ) @ ( k6_relat_1 @ sk_B ) ),
    inference(demod,[status(thm)],['0','1'])).

thf('3',plain,(
    m1_subset_1 @ sk_C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_A @ sk_B ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('4',plain,(
    m1_subset_1 @ sk_D @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_B @ sk_A ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(redefinition_k1_partfun1,axiom,(
    ! [A: $i,B: $i,C: $i,D: $i,E: $i,F: $i] :
      ( ( ( v1_funct_1 @ E )
        & ( m1_subset_1 @ E @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) )
        & ( v1_funct_1 @ F )
        & ( m1_subset_1 @ F @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ C @ D ) ) ) )
     => ( ( k1_partfun1 @ A @ B @ C @ D @ E @ F )
        = ( k5_relat_1 @ E @ F ) ) ) )).

thf('5',plain,(
    ! [X38: $i,X39: $i,X40: $i,X41: $i,X42: $i,X43: $i] :
      ( ~ ( m1_subset_1 @ X38 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X39 @ X40 ) ) )
      | ~ ( v1_funct_1 @ X38 )
      | ~ ( v1_funct_1 @ X41 )
      | ~ ( m1_subset_1 @ X41 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X42 @ X43 ) ) )
      | ( ( k1_partfun1 @ X39 @ X40 @ X42 @ X43 @ X38 @ X41 )
        = ( k5_relat_1 @ X38 @ X41 ) ) ) ),
    inference(cnf,[status(esa)],[redefinition_k1_partfun1])).

thf('6',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( ( ( k1_partfun1 @ sk_B @ sk_A @ X2 @ X1 @ sk_D @ X0 )
        = ( k5_relat_1 @ sk_D @ X0 ) )
      | ~ ( m1_subset_1 @ X0 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X2 @ X1 ) ) )
      | ~ ( v1_funct_1 @ X0 )
      | ~ ( v1_funct_1 @ sk_D ) ) ),
    inference('sup-',[status(thm)],['4','5'])).

thf('7',plain,(
    v1_funct_1 @ sk_D ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('8',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( ( ( k1_partfun1 @ sk_B @ sk_A @ X2 @ X1 @ sk_D @ X0 )
        = ( k5_relat_1 @ sk_D @ X0 ) )
      | ~ ( m1_subset_1 @ X0 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X2 @ X1 ) ) )
      | ~ ( v1_funct_1 @ X0 ) ) ),
    inference(demod,[status(thm)],['6','7'])).

thf('9',plain,
    ( ~ ( v1_funct_1 @ sk_C )
    | ( ( k1_partfun1 @ sk_B @ sk_A @ sk_A @ sk_B @ sk_D @ sk_C )
      = ( k5_relat_1 @ sk_D @ sk_C ) ) ),
    inference('sup-',[status(thm)],['3','8'])).

thf('10',plain,(
    v1_funct_1 @ sk_C ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('11',plain,
    ( ( k1_partfun1 @ sk_B @ sk_A @ sk_A @ sk_B @ sk_D @ sk_C )
    = ( k5_relat_1 @ sk_D @ sk_C ) ),
    inference(demod,[status(thm)],['9','10'])).

thf('12',plain,(
    r2_relset_1 @ sk_B @ sk_B @ ( k5_relat_1 @ sk_D @ sk_C ) @ ( k6_relat_1 @ sk_B ) ),
    inference(demod,[status(thm)],['2','11'])).

thf('13',plain,(
    m1_subset_1 @ sk_C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_A @ sk_B ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('14',plain,(
    m1_subset_1 @ sk_D @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_B @ sk_A ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(dt_k4_relset_1,axiom,(
    ! [A: $i,B: $i,C: $i,D: $i,E: $i,F: $i] :
      ( ( ( m1_subset_1 @ E @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) )
        & ( m1_subset_1 @ F @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ C @ D ) ) ) )
     => ( m1_subset_1 @ ( k4_relset_1 @ A @ B @ C @ D @ E @ F ) @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ D ) ) ) ) )).

thf('15',plain,(
    ! [X17: $i,X18: $i,X19: $i,X20: $i,X21: $i,X22: $i] :
      ( ~ ( m1_subset_1 @ X17 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X18 @ X19 ) ) )
      | ~ ( m1_subset_1 @ X20 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X21 @ X22 ) ) )
      | ( m1_subset_1 @ ( k4_relset_1 @ X18 @ X19 @ X21 @ X22 @ X17 @ X20 ) @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X18 @ X22 ) ) ) ) ),
    inference(cnf,[status(esa)],[dt_k4_relset_1])).

thf('16',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( ( m1_subset_1 @ ( k4_relset_1 @ sk_B @ sk_A @ X2 @ X0 @ sk_D @ X1 ) @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_B @ X0 ) ) )
      | ~ ( m1_subset_1 @ X1 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X2 @ X0 ) ) ) ) ),
    inference('sup-',[status(thm)],['14','15'])).

thf('17',plain,(
    m1_subset_1 @ ( k4_relset_1 @ sk_B @ sk_A @ sk_A @ sk_B @ sk_D @ sk_C ) @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_B @ sk_B ) ) ),
    inference('sup-',[status(thm)],['13','16'])).

thf(redefinition_r2_relset_1,axiom,(
    ! [A: $i,B: $i,C: $i,D: $i] :
      ( ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) )
        & ( m1_subset_1 @ D @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) )
     => ( ( r2_relset_1 @ A @ B @ C @ D )
      <=> ( C = D ) ) ) )).

thf('18',plain,(
    ! [X32: $i,X33: $i,X34: $i,X35: $i] :
      ( ~ ( m1_subset_1 @ X32 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X33 @ X34 ) ) )
      | ~ ( m1_subset_1 @ X35 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X33 @ X34 ) ) )
      | ( X32 = X35 )
      | ~ ( r2_relset_1 @ X33 @ X34 @ X32 @ X35 ) ) ),
    inference(cnf,[status(esa)],[redefinition_r2_relset_1])).

thf('19',plain,(
    ! [X0: $i] :
      ( ~ ( r2_relset_1 @ sk_B @ sk_B @ ( k4_relset_1 @ sk_B @ sk_A @ sk_A @ sk_B @ sk_D @ sk_C ) @ X0 )
      | ( ( k4_relset_1 @ sk_B @ sk_A @ sk_A @ sk_B @ sk_D @ sk_C )
        = X0 )
      | ~ ( m1_subset_1 @ X0 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_B @ sk_B ) ) ) ) ),
    inference('sup-',[status(thm)],['17','18'])).

thf('20',plain,(
    m1_subset_1 @ sk_C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_A @ sk_B ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('21',plain,(
    m1_subset_1 @ sk_D @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_B @ sk_A ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(redefinition_k4_relset_1,axiom,(
    ! [A: $i,B: $i,C: $i,D: $i,E: $i,F: $i] :
      ( ( ( m1_subset_1 @ E @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) )
        & ( m1_subset_1 @ F @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ C @ D ) ) ) )
     => ( ( k4_relset_1 @ A @ B @ C @ D @ E @ F )
        = ( k5_relat_1 @ E @ F ) ) ) )).

thf('22',plain,(
    ! [X26: $i,X27: $i,X28: $i,X29: $i,X30: $i,X31: $i] :
      ( ~ ( m1_subset_1 @ X26 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X27 @ X28 ) ) )
      | ~ ( m1_subset_1 @ X29 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X30 @ X31 ) ) )
      | ( ( k4_relset_1 @ X27 @ X28 @ X30 @ X31 @ X26 @ X29 )
        = ( k5_relat_1 @ X26 @ X29 ) ) ) ),
    inference(cnf,[status(esa)],[redefinition_k4_relset_1])).

thf('23',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( ( ( k4_relset_1 @ sk_B @ sk_A @ X2 @ X1 @ sk_D @ X0 )
        = ( k5_relat_1 @ sk_D @ X0 ) )
      | ~ ( m1_subset_1 @ X0 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X2 @ X1 ) ) ) ) ),
    inference('sup-',[status(thm)],['21','22'])).

thf('24',plain,
    ( ( k4_relset_1 @ sk_B @ sk_A @ sk_A @ sk_B @ sk_D @ sk_C )
    = ( k5_relat_1 @ sk_D @ sk_C ) ),
    inference('sup-',[status(thm)],['20','23'])).

thf('25',plain,
    ( ( k4_relset_1 @ sk_B @ sk_A @ sk_A @ sk_B @ sk_D @ sk_C )
    = ( k5_relat_1 @ sk_D @ sk_C ) ),
    inference('sup-',[status(thm)],['20','23'])).

thf('26',plain,(
    ! [X0: $i] :
      ( ~ ( r2_relset_1 @ sk_B @ sk_B @ ( k5_relat_1 @ sk_D @ sk_C ) @ X0 )
      | ( ( k5_relat_1 @ sk_D @ sk_C )
        = X0 )
      | ~ ( m1_subset_1 @ X0 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_B @ sk_B ) ) ) ) ),
    inference(demod,[status(thm)],['19','24','25'])).

thf('27',plain,
    ( ~ ( m1_subset_1 @ ( k6_relat_1 @ sk_B ) @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_B @ sk_B ) ) )
    | ( ( k5_relat_1 @ sk_D @ sk_C )
      = ( k6_relat_1 @ sk_B ) ) ),
    inference('sup-',[status(thm)],['12','26'])).

thf(dt_k6_partfun1,axiom,(
    ! [A: $i] :
      ( ( m1_subset_1 @ ( k6_partfun1 @ A ) @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ A ) ) )
      & ( v1_partfun1 @ ( k6_partfun1 @ A ) @ A ) ) )).

thf('28',plain,(
    ! [X37: $i] :
      ( m1_subset_1 @ ( k6_partfun1 @ X37 ) @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X37 @ X37 ) ) ) ),
    inference(cnf,[status(esa)],[dt_k6_partfun1])).

thf('29',plain,(
    ! [X44: $i] :
      ( ( k6_partfun1 @ X44 )
      = ( k6_relat_1 @ X44 ) ) ),
    inference(cnf,[status(esa)],[redefinition_k6_partfun1])).

thf('30',plain,(
    ! [X37: $i] :
      ( m1_subset_1 @ ( k6_relat_1 @ X37 ) @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X37 @ X37 ) ) ) ),
    inference(demod,[status(thm)],['28','29'])).

thf('31',plain,
    ( ( k5_relat_1 @ sk_D @ sk_C )
    = ( k6_relat_1 @ sk_B ) ),
    inference(demod,[status(thm)],['27','30'])).

thf(t45_relat_1,axiom,(
    ! [A: $i] :
      ( ( v1_relat_1 @ A )
     => ! [B: $i] :
          ( ( v1_relat_1 @ B )
         => ( r1_tarski @ ( k2_relat_1 @ ( k5_relat_1 @ A @ B ) ) @ ( k2_relat_1 @ B ) ) ) ) )).

thf('32',plain,(
    ! [X10: $i,X11: $i] :
      ( ~ ( v1_relat_1 @ X10 )
      | ( r1_tarski @ ( k2_relat_1 @ ( k5_relat_1 @ X11 @ X10 ) ) @ ( k2_relat_1 @ X10 ) )
      | ~ ( v1_relat_1 @ X11 ) ) ),
    inference(cnf,[status(esa)],[t45_relat_1])).

thf(d10_xboole_0,axiom,(
    ! [A: $i,B: $i] :
      ( ( A = B )
    <=> ( ( r1_tarski @ A @ B )
        & ( r1_tarski @ B @ A ) ) ) )).

thf('33',plain,(
    ! [X0: $i,X2: $i] :
      ( ( X0 = X2 )
      | ~ ( r1_tarski @ X2 @ X0 )
      | ~ ( r1_tarski @ X0 @ X2 ) ) ),
    inference(cnf,[status(esa)],[d10_xboole_0])).

thf('34',plain,(
    ! [X0: $i,X1: $i] :
      ( ~ ( v1_relat_1 @ X1 )
      | ~ ( v1_relat_1 @ X0 )
      | ~ ( r1_tarski @ ( k2_relat_1 @ X0 ) @ ( k2_relat_1 @ ( k5_relat_1 @ X1 @ X0 ) ) )
      | ( ( k2_relat_1 @ X0 )
        = ( k2_relat_1 @ ( k5_relat_1 @ X1 @ X0 ) ) ) ) ),
    inference('sup-',[status(thm)],['32','33'])).

thf('35',plain,
    ( ~ ( r1_tarski @ ( k2_relat_1 @ sk_C ) @ ( k2_relat_1 @ ( k6_relat_1 @ sk_B ) ) )
    | ( ( k2_relat_1 @ sk_C )
      = ( k2_relat_1 @ ( k5_relat_1 @ sk_D @ sk_C ) ) )
    | ~ ( v1_relat_1 @ sk_C )
    | ~ ( v1_relat_1 @ sk_D ) ),
    inference('sup-',[status(thm)],['31','34'])).

thf(t71_relat_1,axiom,(
    ! [A: $i] :
      ( ( ( k2_relat_1 @ ( k6_relat_1 @ A ) )
        = A )
      & ( ( k1_relat_1 @ ( k6_relat_1 @ A ) )
        = A ) ) )).

thf('36',plain,(
    ! [X13: $i] :
      ( ( k2_relat_1 @ ( k6_relat_1 @ X13 ) )
      = X13 ) ),
    inference(cnf,[status(esa)],[t71_relat_1])).

thf('37',plain,(
    m1_subset_1 @ sk_C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_A @ sk_B ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(dt_k2_relset_1,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) )
     => ( m1_subset_1 @ ( k2_relset_1 @ A @ B @ C ) @ ( k1_zfmisc_1 @ B ) ) ) )).

thf('38',plain,(
    ! [X14: $i,X15: $i,X16: $i] :
      ( ( m1_subset_1 @ ( k2_relset_1 @ X14 @ X15 @ X16 ) @ ( k1_zfmisc_1 @ X15 ) )
      | ~ ( m1_subset_1 @ X16 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X14 @ X15 ) ) ) ) ),
    inference(cnf,[status(esa)],[dt_k2_relset_1])).

thf('39',plain,(
    m1_subset_1 @ ( k2_relset_1 @ sk_A @ sk_B @ sk_C ) @ ( k1_zfmisc_1 @ sk_B ) ),
    inference('sup-',[status(thm)],['37','38'])).

thf('40',plain,(
    m1_subset_1 @ sk_C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_A @ sk_B ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(redefinition_k2_relset_1,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) )
     => ( ( k2_relset_1 @ A @ B @ C )
        = ( k2_relat_1 @ C ) ) ) )).

thf('41',plain,(
    ! [X23: $i,X24: $i,X25: $i] :
      ( ( ( k2_relset_1 @ X24 @ X25 @ X23 )
        = ( k2_relat_1 @ X23 ) )
      | ~ ( m1_subset_1 @ X23 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X24 @ X25 ) ) ) ) ),
    inference(cnf,[status(esa)],[redefinition_k2_relset_1])).

thf('42',plain,
    ( ( k2_relset_1 @ sk_A @ sk_B @ sk_C )
    = ( k2_relat_1 @ sk_C ) ),
    inference('sup-',[status(thm)],['40','41'])).

thf('43',plain,(
    m1_subset_1 @ ( k2_relat_1 @ sk_C ) @ ( k1_zfmisc_1 @ sk_B ) ),
    inference(demod,[status(thm)],['39','42'])).

thf(t3_subset,axiom,(
    ! [A: $i,B: $i] :
      ( ( m1_subset_1 @ A @ ( k1_zfmisc_1 @ B ) )
    <=> ( r1_tarski @ A @ B ) ) )).

thf('44',plain,(
    ! [X3: $i,X4: $i] :
      ( ( r1_tarski @ X3 @ X4 )
      | ~ ( m1_subset_1 @ X3 @ ( k1_zfmisc_1 @ X4 ) ) ) ),
    inference(cnf,[status(esa)],[t3_subset])).

thf('45',plain,(
    r1_tarski @ ( k2_relat_1 @ sk_C ) @ sk_B ),
    inference('sup-',[status(thm)],['43','44'])).

thf('46',plain,
    ( ( k5_relat_1 @ sk_D @ sk_C )
    = ( k6_relat_1 @ sk_B ) ),
    inference(demod,[status(thm)],['27','30'])).

thf('47',plain,(
    ! [X13: $i] :
      ( ( k2_relat_1 @ ( k6_relat_1 @ X13 ) )
      = X13 ) ),
    inference(cnf,[status(esa)],[t71_relat_1])).

thf('48',plain,(
    m1_subset_1 @ sk_C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_A @ sk_B ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(cc2_relat_1,axiom,(
    ! [A: $i] :
      ( ( v1_relat_1 @ A )
     => ! [B: $i] :
          ( ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ A ) )
         => ( v1_relat_1 @ B ) ) ) )).

thf('49',plain,(
    ! [X6: $i,X7: $i] :
      ( ~ ( m1_subset_1 @ X6 @ ( k1_zfmisc_1 @ X7 ) )
      | ( v1_relat_1 @ X6 )
      | ~ ( v1_relat_1 @ X7 ) ) ),
    inference(cnf,[status(esa)],[cc2_relat_1])).

thf('50',plain,
    ( ~ ( v1_relat_1 @ ( k2_zfmisc_1 @ sk_A @ sk_B ) )
    | ( v1_relat_1 @ sk_C ) ),
    inference('sup-',[status(thm)],['48','49'])).

thf(fc6_relat_1,axiom,(
    ! [A: $i,B: $i] :
      ( v1_relat_1 @ ( k2_zfmisc_1 @ A @ B ) ) )).

thf('51',plain,(
    ! [X8: $i,X9: $i] :
      ( v1_relat_1 @ ( k2_zfmisc_1 @ X8 @ X9 ) ) ),
    inference(cnf,[status(esa)],[fc6_relat_1])).

thf('52',plain,(
    v1_relat_1 @ sk_C ),
    inference(demod,[status(thm)],['50','51'])).

thf('53',plain,(
    m1_subset_1 @ sk_D @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_B @ sk_A ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('54',plain,(
    ! [X6: $i,X7: $i] :
      ( ~ ( m1_subset_1 @ X6 @ ( k1_zfmisc_1 @ X7 ) )
      | ( v1_relat_1 @ X6 )
      | ~ ( v1_relat_1 @ X7 ) ) ),
    inference(cnf,[status(esa)],[cc2_relat_1])).

thf('55',plain,
    ( ~ ( v1_relat_1 @ ( k2_zfmisc_1 @ sk_B @ sk_A ) )
    | ( v1_relat_1 @ sk_D ) ),
    inference('sup-',[status(thm)],['53','54'])).

thf('56',plain,(
    ! [X8: $i,X9: $i] :
      ( v1_relat_1 @ ( k2_zfmisc_1 @ X8 @ X9 ) ) ),
    inference(cnf,[status(esa)],[fc6_relat_1])).

thf('57',plain,(
    v1_relat_1 @ sk_D ),
    inference(demod,[status(thm)],['55','56'])).

thf('58',plain,
    ( ( k2_relat_1 @ sk_C )
    = sk_B ),
    inference(demod,[status(thm)],['35','36','45','46','47','52','57'])).

thf('59',plain,(
    ( k2_relset_1 @ sk_A @ sk_B @ sk_C )
 != sk_B ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('60',plain,
    ( ( k2_relset_1 @ sk_A @ sk_B @ sk_C )
    = ( k2_relat_1 @ sk_C ) ),
    inference('sup-',[status(thm)],['40','41'])).

thf('61',plain,(
    ( k2_relat_1 @ sk_C )
 != sk_B ),
    inference(demod,[status(thm)],['59','60'])).

thf('62',plain,(
    $false ),
    inference('simplify_reflect-',[status(thm)],['58','61'])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.11/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.11/0.13  % Command    : run_portfolio.sh /export/starexec/sandbox2/benchmark/theBenchmark.p /export/starexec/sandbox2/tmp/tmp.VVeUrHcGj4
% 0.14/0.35  % Computer   : n012.cluster.edu
% 0.14/0.35  % Model      : x86_64 x86_64
% 0.14/0.35  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.14/0.35  % Memory     : 8042.1875MB
% 0.14/0.35  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.14/0.35  % CPULimit   : 60
% 0.14/0.35  % DateTime   : Tue Dec  1 10:23:07 EST 2020
% 0.14/0.35  % CPUTime    : 
% 0.14/0.35  % Running portfolio for 600 s
% 0.14/0.35  % File         : /export/starexec/sandbox2/benchmark/theBenchmark.p
% 0.14/0.35  % Number of cores: 8
% 0.14/0.35  % Python version: Python 3.6.8
% 0.14/0.36  % Running in FO mode
% 0.72/0.92  % Running /export/starexec/sandbox2/solver/bin/fo/fo7.sh for 78
% 0.72/0.92  % Solved by: fo/fo7.sh
% 0.72/0.92  To remain in the chosen logic fragment, unification with booleans has been disabled.
% 0.72/0.92  % done 704 iterations in 0.464s
% 0.72/0.92  % SZS status Theorem for '/export/starexec/sandbox2/benchmark/theBenchmark.p'
% 0.72/0.92  % SZS output start Refutation
% 0.72/0.92  thf(m1_subset_1_type, type, m1_subset_1: $i > $i > $o).
% 0.72/0.92  thf(v1_funct_1_type, type, v1_funct_1: $i > $o).
% 0.72/0.92  thf(k2_relset_1_type, type, k2_relset_1: $i > $i > $i > $i).
% 0.72/0.92  thf(sk_B_type, type, sk_B: $i).
% 0.72/0.92  thf(k4_relset_1_type, type, k4_relset_1: $i > $i > $i > $i > $i > $i > $i).
% 0.72/0.92  thf(k1_zfmisc_1_type, type, k1_zfmisc_1: $i > $i).
% 0.72/0.92  thf(k1_relat_1_type, type, k1_relat_1: $i > $i).
% 0.72/0.92  thf(sk_A_type, type, sk_A: $i).
% 0.72/0.92  thf(v1_funct_2_type, type, v1_funct_2: $i > $i > $i > $o).
% 0.72/0.92  thf(sk_D_type, type, sk_D: $i).
% 0.72/0.92  thf(k6_partfun1_type, type, k6_partfun1: $i > $i).
% 0.72/0.92  thf(v1_relat_1_type, type, v1_relat_1: $i > $o).
% 0.72/0.92  thf(k1_partfun1_type, type, k1_partfun1: $i > $i > $i > $i > $i > $i > $i).
% 0.72/0.92  thf(k6_relat_1_type, type, k6_relat_1: $i > $i).
% 0.72/0.92  thf(sk_C_type, type, sk_C: $i).
% 0.72/0.92  thf(r1_tarski_type, type, r1_tarski: $i > $i > $o).
% 0.72/0.92  thf(k2_relat_1_type, type, k2_relat_1: $i > $i).
% 0.72/0.92  thf(v1_partfun1_type, type, v1_partfun1: $i > $i > $o).
% 0.72/0.92  thf(r2_relset_1_type, type, r2_relset_1: $i > $i > $i > $i > $o).
% 0.72/0.92  thf(k5_relat_1_type, type, k5_relat_1: $i > $i > $i).
% 0.72/0.92  thf(k2_zfmisc_1_type, type, k2_zfmisc_1: $i > $i > $i).
% 0.72/0.92  thf(t24_funct_2, conjecture,
% 0.72/0.92    (![A:$i,B:$i,C:$i]:
% 0.72/0.92     ( ( ( v1_funct_1 @ C ) & ( v1_funct_2 @ C @ A @ B ) & 
% 0.72/0.92         ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) ) =>
% 0.72/0.92       ( ![D:$i]:
% 0.72/0.92         ( ( ( v1_funct_1 @ D ) & ( v1_funct_2 @ D @ B @ A ) & 
% 0.72/0.92             ( m1_subset_1 @ D @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ B @ A ) ) ) ) =>
% 0.72/0.92           ( ( r2_relset_1 @
% 0.72/0.92               B @ B @ ( k1_partfun1 @ B @ A @ A @ B @ D @ C ) @ 
% 0.72/0.92               ( k6_partfun1 @ B ) ) =>
% 0.72/0.92             ( ( k2_relset_1 @ A @ B @ C ) = ( B ) ) ) ) ) ))).
% 0.72/0.92  thf(zf_stmt_0, negated_conjecture,
% 0.72/0.92    (~( ![A:$i,B:$i,C:$i]:
% 0.72/0.92        ( ( ( v1_funct_1 @ C ) & ( v1_funct_2 @ C @ A @ B ) & 
% 0.72/0.92            ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) ) =>
% 0.72/0.92          ( ![D:$i]:
% 0.72/0.92            ( ( ( v1_funct_1 @ D ) & ( v1_funct_2 @ D @ B @ A ) & 
% 0.72/0.92                ( m1_subset_1 @ D @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ B @ A ) ) ) ) =>
% 0.72/0.92              ( ( r2_relset_1 @
% 0.72/0.92                  B @ B @ ( k1_partfun1 @ B @ A @ A @ B @ D @ C ) @ 
% 0.72/0.92                  ( k6_partfun1 @ B ) ) =>
% 0.72/0.92                ( ( k2_relset_1 @ A @ B @ C ) = ( B ) ) ) ) ) ) )),
% 0.72/0.92    inference('cnf.neg', [status(esa)], [t24_funct_2])).
% 0.72/0.92  thf('0', plain,
% 0.72/0.92      ((r2_relset_1 @ sk_B @ sk_B @ 
% 0.72/0.92        (k1_partfun1 @ sk_B @ sk_A @ sk_A @ sk_B @ sk_D @ sk_C) @ 
% 0.72/0.92        (k6_partfun1 @ sk_B))),
% 0.72/0.92      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.72/0.92  thf(redefinition_k6_partfun1, axiom,
% 0.72/0.92    (![A:$i]: ( ( k6_partfun1 @ A ) = ( k6_relat_1 @ A ) ))).
% 0.72/0.92  thf('1', plain, (![X44 : $i]: ((k6_partfun1 @ X44) = (k6_relat_1 @ X44))),
% 0.72/0.92      inference('cnf', [status(esa)], [redefinition_k6_partfun1])).
% 0.72/0.92  thf('2', plain,
% 0.72/0.92      ((r2_relset_1 @ sk_B @ sk_B @ 
% 0.72/0.92        (k1_partfun1 @ sk_B @ sk_A @ sk_A @ sk_B @ sk_D @ sk_C) @ 
% 0.72/0.92        (k6_relat_1 @ sk_B))),
% 0.72/0.92      inference('demod', [status(thm)], ['0', '1'])).
% 0.72/0.92  thf('3', plain,
% 0.72/0.92      ((m1_subset_1 @ sk_C @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_A @ sk_B)))),
% 0.72/0.92      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.72/0.92  thf('4', plain,
% 0.72/0.92      ((m1_subset_1 @ sk_D @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_B @ sk_A)))),
% 0.72/0.92      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.72/0.92  thf(redefinition_k1_partfun1, axiom,
% 0.72/0.92    (![A:$i,B:$i,C:$i,D:$i,E:$i,F:$i]:
% 0.72/0.92     ( ( ( v1_funct_1 @ E ) & 
% 0.72/0.92         ( m1_subset_1 @ E @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) & 
% 0.72/0.92         ( v1_funct_1 @ F ) & 
% 0.72/0.92         ( m1_subset_1 @ F @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ C @ D ) ) ) ) =>
% 0.72/0.92       ( ( k1_partfun1 @ A @ B @ C @ D @ E @ F ) = ( k5_relat_1 @ E @ F ) ) ))).
% 0.72/0.92  thf('5', plain,
% 0.72/0.92      (![X38 : $i, X39 : $i, X40 : $i, X41 : $i, X42 : $i, X43 : $i]:
% 0.72/0.92         (~ (m1_subset_1 @ X38 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X39 @ X40)))
% 0.72/0.92          | ~ (v1_funct_1 @ X38)
% 0.72/0.92          | ~ (v1_funct_1 @ X41)
% 0.72/0.92          | ~ (m1_subset_1 @ X41 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X42 @ X43)))
% 0.72/0.92          | ((k1_partfun1 @ X39 @ X40 @ X42 @ X43 @ X38 @ X41)
% 0.72/0.92              = (k5_relat_1 @ X38 @ X41)))),
% 0.72/0.92      inference('cnf', [status(esa)], [redefinition_k1_partfun1])).
% 0.72/0.92  thf('6', plain,
% 0.72/0.92      (![X0 : $i, X1 : $i, X2 : $i]:
% 0.72/0.92         (((k1_partfun1 @ sk_B @ sk_A @ X2 @ X1 @ sk_D @ X0)
% 0.72/0.92            = (k5_relat_1 @ sk_D @ X0))
% 0.72/0.92          | ~ (m1_subset_1 @ X0 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X2 @ X1)))
% 0.72/0.92          | ~ (v1_funct_1 @ X0)
% 0.72/0.92          | ~ (v1_funct_1 @ sk_D))),
% 0.72/0.92      inference('sup-', [status(thm)], ['4', '5'])).
% 0.72/0.92  thf('7', plain, ((v1_funct_1 @ sk_D)),
% 0.72/0.92      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.72/0.92  thf('8', plain,
% 0.72/0.92      (![X0 : $i, X1 : $i, X2 : $i]:
% 0.72/0.92         (((k1_partfun1 @ sk_B @ sk_A @ X2 @ X1 @ sk_D @ X0)
% 0.72/0.92            = (k5_relat_1 @ sk_D @ X0))
% 0.72/0.92          | ~ (m1_subset_1 @ X0 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X2 @ X1)))
% 0.72/0.92          | ~ (v1_funct_1 @ X0))),
% 0.72/0.92      inference('demod', [status(thm)], ['6', '7'])).
% 0.72/0.92  thf('9', plain,
% 0.72/0.92      ((~ (v1_funct_1 @ sk_C)
% 0.72/0.92        | ((k1_partfun1 @ sk_B @ sk_A @ sk_A @ sk_B @ sk_D @ sk_C)
% 0.72/0.92            = (k5_relat_1 @ sk_D @ sk_C)))),
% 0.72/0.92      inference('sup-', [status(thm)], ['3', '8'])).
% 0.72/0.92  thf('10', plain, ((v1_funct_1 @ sk_C)),
% 0.72/0.92      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.72/0.92  thf('11', plain,
% 0.72/0.92      (((k1_partfun1 @ sk_B @ sk_A @ sk_A @ sk_B @ sk_D @ sk_C)
% 0.72/0.92         = (k5_relat_1 @ sk_D @ sk_C))),
% 0.72/0.92      inference('demod', [status(thm)], ['9', '10'])).
% 0.72/0.92  thf('12', plain,
% 0.72/0.92      ((r2_relset_1 @ sk_B @ sk_B @ (k5_relat_1 @ sk_D @ sk_C) @ 
% 0.72/0.92        (k6_relat_1 @ sk_B))),
% 0.72/0.92      inference('demod', [status(thm)], ['2', '11'])).
% 0.72/0.92  thf('13', plain,
% 0.72/0.92      ((m1_subset_1 @ sk_C @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_A @ sk_B)))),
% 0.72/0.92      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.72/0.92  thf('14', plain,
% 0.72/0.92      ((m1_subset_1 @ sk_D @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_B @ sk_A)))),
% 0.72/0.92      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.72/0.92  thf(dt_k4_relset_1, axiom,
% 0.72/0.92    (![A:$i,B:$i,C:$i,D:$i,E:$i,F:$i]:
% 0.72/0.92     ( ( ( m1_subset_1 @ E @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) & 
% 0.72/0.92         ( m1_subset_1 @ F @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ C @ D ) ) ) ) =>
% 0.72/0.92       ( m1_subset_1 @
% 0.72/0.92         ( k4_relset_1 @ A @ B @ C @ D @ E @ F ) @ 
% 0.72/0.92         ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ D ) ) ) ))).
% 0.72/0.92  thf('15', plain,
% 0.72/0.92      (![X17 : $i, X18 : $i, X19 : $i, X20 : $i, X21 : $i, X22 : $i]:
% 0.72/0.92         (~ (m1_subset_1 @ X17 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X18 @ X19)))
% 0.72/0.92          | ~ (m1_subset_1 @ X20 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X21 @ X22)))
% 0.72/0.92          | (m1_subset_1 @ (k4_relset_1 @ X18 @ X19 @ X21 @ X22 @ X17 @ X20) @ 
% 0.72/0.92             (k1_zfmisc_1 @ (k2_zfmisc_1 @ X18 @ X22))))),
% 0.72/0.92      inference('cnf', [status(esa)], [dt_k4_relset_1])).
% 0.72/0.92  thf('16', plain,
% 0.72/0.92      (![X0 : $i, X1 : $i, X2 : $i]:
% 0.72/0.92         ((m1_subset_1 @ (k4_relset_1 @ sk_B @ sk_A @ X2 @ X0 @ sk_D @ X1) @ 
% 0.72/0.92           (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_B @ X0)))
% 0.72/0.92          | ~ (m1_subset_1 @ X1 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X2 @ X0))))),
% 0.72/0.92      inference('sup-', [status(thm)], ['14', '15'])).
% 0.72/0.92  thf('17', plain,
% 0.72/0.92      ((m1_subset_1 @ 
% 0.72/0.92        (k4_relset_1 @ sk_B @ sk_A @ sk_A @ sk_B @ sk_D @ sk_C) @ 
% 0.72/0.92        (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_B @ sk_B)))),
% 0.72/0.92      inference('sup-', [status(thm)], ['13', '16'])).
% 0.72/0.92  thf(redefinition_r2_relset_1, axiom,
% 0.72/0.92    (![A:$i,B:$i,C:$i,D:$i]:
% 0.72/0.92     ( ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) & 
% 0.72/0.92         ( m1_subset_1 @ D @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) ) =>
% 0.72/0.92       ( ( r2_relset_1 @ A @ B @ C @ D ) <=> ( ( C ) = ( D ) ) ) ))).
% 0.72/0.92  thf('18', plain,
% 0.72/0.92      (![X32 : $i, X33 : $i, X34 : $i, X35 : $i]:
% 0.72/0.92         (~ (m1_subset_1 @ X32 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X33 @ X34)))
% 0.72/0.92          | ~ (m1_subset_1 @ X35 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X33 @ X34)))
% 0.72/0.92          | ((X32) = (X35))
% 0.72/0.92          | ~ (r2_relset_1 @ X33 @ X34 @ X32 @ X35))),
% 0.72/0.92      inference('cnf', [status(esa)], [redefinition_r2_relset_1])).
% 0.72/0.92  thf('19', plain,
% 0.72/0.92      (![X0 : $i]:
% 0.72/0.92         (~ (r2_relset_1 @ sk_B @ sk_B @ 
% 0.72/0.92             (k4_relset_1 @ sk_B @ sk_A @ sk_A @ sk_B @ sk_D @ sk_C) @ X0)
% 0.72/0.92          | ((k4_relset_1 @ sk_B @ sk_A @ sk_A @ sk_B @ sk_D @ sk_C) = (X0))
% 0.72/0.92          | ~ (m1_subset_1 @ X0 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_B @ sk_B))))),
% 0.72/0.92      inference('sup-', [status(thm)], ['17', '18'])).
% 0.72/0.92  thf('20', plain,
% 0.72/0.92      ((m1_subset_1 @ sk_C @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_A @ sk_B)))),
% 0.72/0.92      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.72/0.92  thf('21', plain,
% 0.72/0.92      ((m1_subset_1 @ sk_D @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_B @ sk_A)))),
% 0.72/0.92      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.72/0.92  thf(redefinition_k4_relset_1, axiom,
% 0.72/0.92    (![A:$i,B:$i,C:$i,D:$i,E:$i,F:$i]:
% 0.72/0.92     ( ( ( m1_subset_1 @ E @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) & 
% 0.72/0.92         ( m1_subset_1 @ F @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ C @ D ) ) ) ) =>
% 0.72/0.92       ( ( k4_relset_1 @ A @ B @ C @ D @ E @ F ) = ( k5_relat_1 @ E @ F ) ) ))).
% 0.72/0.92  thf('22', plain,
% 0.72/0.92      (![X26 : $i, X27 : $i, X28 : $i, X29 : $i, X30 : $i, X31 : $i]:
% 0.72/0.92         (~ (m1_subset_1 @ X26 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X27 @ X28)))
% 0.72/0.92          | ~ (m1_subset_1 @ X29 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X30 @ X31)))
% 0.72/0.92          | ((k4_relset_1 @ X27 @ X28 @ X30 @ X31 @ X26 @ X29)
% 0.72/0.92              = (k5_relat_1 @ X26 @ X29)))),
% 0.72/0.92      inference('cnf', [status(esa)], [redefinition_k4_relset_1])).
% 0.72/0.92  thf('23', plain,
% 0.72/0.92      (![X0 : $i, X1 : $i, X2 : $i]:
% 0.72/0.92         (((k4_relset_1 @ sk_B @ sk_A @ X2 @ X1 @ sk_D @ X0)
% 0.72/0.92            = (k5_relat_1 @ sk_D @ X0))
% 0.72/0.92          | ~ (m1_subset_1 @ X0 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X2 @ X1))))),
% 0.72/0.92      inference('sup-', [status(thm)], ['21', '22'])).
% 0.72/0.92  thf('24', plain,
% 0.72/0.92      (((k4_relset_1 @ sk_B @ sk_A @ sk_A @ sk_B @ sk_D @ sk_C)
% 0.72/0.92         = (k5_relat_1 @ sk_D @ sk_C))),
% 0.72/0.92      inference('sup-', [status(thm)], ['20', '23'])).
% 0.72/0.92  thf('25', plain,
% 0.72/0.92      (((k4_relset_1 @ sk_B @ sk_A @ sk_A @ sk_B @ sk_D @ sk_C)
% 0.72/0.92         = (k5_relat_1 @ sk_D @ sk_C))),
% 0.72/0.92      inference('sup-', [status(thm)], ['20', '23'])).
% 0.72/0.92  thf('26', plain,
% 0.72/0.92      (![X0 : $i]:
% 0.72/0.92         (~ (r2_relset_1 @ sk_B @ sk_B @ (k5_relat_1 @ sk_D @ sk_C) @ X0)
% 0.72/0.92          | ((k5_relat_1 @ sk_D @ sk_C) = (X0))
% 0.72/0.92          | ~ (m1_subset_1 @ X0 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_B @ sk_B))))),
% 0.72/0.92      inference('demod', [status(thm)], ['19', '24', '25'])).
% 0.72/0.92  thf('27', plain,
% 0.72/0.92      ((~ (m1_subset_1 @ (k6_relat_1 @ sk_B) @ 
% 0.72/0.92           (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_B @ sk_B)))
% 0.72/0.92        | ((k5_relat_1 @ sk_D @ sk_C) = (k6_relat_1 @ sk_B)))),
% 0.72/0.92      inference('sup-', [status(thm)], ['12', '26'])).
% 0.72/0.92  thf(dt_k6_partfun1, axiom,
% 0.72/0.92    (![A:$i]:
% 0.72/0.92     ( ( m1_subset_1 @
% 0.72/0.92         ( k6_partfun1 @ A ) @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ A ) ) ) & 
% 0.72/0.92       ( v1_partfun1 @ ( k6_partfun1 @ A ) @ A ) ))).
% 0.72/0.92  thf('28', plain,
% 0.72/0.92      (![X37 : $i]:
% 0.72/0.92         (m1_subset_1 @ (k6_partfun1 @ X37) @ 
% 0.72/0.92          (k1_zfmisc_1 @ (k2_zfmisc_1 @ X37 @ X37)))),
% 0.72/0.92      inference('cnf', [status(esa)], [dt_k6_partfun1])).
% 0.72/0.92  thf('29', plain, (![X44 : $i]: ((k6_partfun1 @ X44) = (k6_relat_1 @ X44))),
% 0.72/0.92      inference('cnf', [status(esa)], [redefinition_k6_partfun1])).
% 0.72/0.92  thf('30', plain,
% 0.72/0.92      (![X37 : $i]:
% 0.72/0.92         (m1_subset_1 @ (k6_relat_1 @ X37) @ 
% 0.72/0.92          (k1_zfmisc_1 @ (k2_zfmisc_1 @ X37 @ X37)))),
% 0.72/0.92      inference('demod', [status(thm)], ['28', '29'])).
% 0.72/0.92  thf('31', plain, (((k5_relat_1 @ sk_D @ sk_C) = (k6_relat_1 @ sk_B))),
% 0.72/0.92      inference('demod', [status(thm)], ['27', '30'])).
% 0.72/0.92  thf(t45_relat_1, axiom,
% 0.72/0.92    (![A:$i]:
% 0.72/0.92     ( ( v1_relat_1 @ A ) =>
% 0.72/0.92       ( ![B:$i]:
% 0.72/0.92         ( ( v1_relat_1 @ B ) =>
% 0.72/0.92           ( r1_tarski @
% 0.72/0.92             ( k2_relat_1 @ ( k5_relat_1 @ A @ B ) ) @ ( k2_relat_1 @ B ) ) ) ) ))).
% 0.72/0.92  thf('32', plain,
% 0.72/0.92      (![X10 : $i, X11 : $i]:
% 0.72/0.92         (~ (v1_relat_1 @ X10)
% 0.72/0.92          | (r1_tarski @ (k2_relat_1 @ (k5_relat_1 @ X11 @ X10)) @ 
% 0.72/0.92             (k2_relat_1 @ X10))
% 0.72/0.92          | ~ (v1_relat_1 @ X11))),
% 0.72/0.92      inference('cnf', [status(esa)], [t45_relat_1])).
% 0.72/0.92  thf(d10_xboole_0, axiom,
% 0.72/0.92    (![A:$i,B:$i]:
% 0.72/0.92     ( ( ( A ) = ( B ) ) <=> ( ( r1_tarski @ A @ B ) & ( r1_tarski @ B @ A ) ) ))).
% 0.72/0.92  thf('33', plain,
% 0.72/0.92      (![X0 : $i, X2 : $i]:
% 0.72/0.92         (((X0) = (X2)) | ~ (r1_tarski @ X2 @ X0) | ~ (r1_tarski @ X0 @ X2))),
% 0.72/0.92      inference('cnf', [status(esa)], [d10_xboole_0])).
% 0.72/0.92  thf('34', plain,
% 0.72/0.92      (![X0 : $i, X1 : $i]:
% 0.72/0.92         (~ (v1_relat_1 @ X1)
% 0.72/0.92          | ~ (v1_relat_1 @ X0)
% 0.72/0.92          | ~ (r1_tarski @ (k2_relat_1 @ X0) @ 
% 0.72/0.92               (k2_relat_1 @ (k5_relat_1 @ X1 @ X0)))
% 0.72/0.92          | ((k2_relat_1 @ X0) = (k2_relat_1 @ (k5_relat_1 @ X1 @ X0))))),
% 0.72/0.92      inference('sup-', [status(thm)], ['32', '33'])).
% 0.72/0.92  thf('35', plain,
% 0.72/0.92      ((~ (r1_tarski @ (k2_relat_1 @ sk_C) @ (k2_relat_1 @ (k6_relat_1 @ sk_B)))
% 0.72/0.92        | ((k2_relat_1 @ sk_C) = (k2_relat_1 @ (k5_relat_1 @ sk_D @ sk_C)))
% 0.72/0.92        | ~ (v1_relat_1 @ sk_C)
% 0.72/0.92        | ~ (v1_relat_1 @ sk_D))),
% 0.72/0.92      inference('sup-', [status(thm)], ['31', '34'])).
% 0.72/0.92  thf(t71_relat_1, axiom,
% 0.72/0.92    (![A:$i]:
% 0.72/0.92     ( ( ( k2_relat_1 @ ( k6_relat_1 @ A ) ) = ( A ) ) & 
% 0.72/0.92       ( ( k1_relat_1 @ ( k6_relat_1 @ A ) ) = ( A ) ) ))).
% 0.72/0.92  thf('36', plain, (![X13 : $i]: ((k2_relat_1 @ (k6_relat_1 @ X13)) = (X13))),
% 0.72/0.92      inference('cnf', [status(esa)], [t71_relat_1])).
% 0.72/0.92  thf('37', plain,
% 0.72/0.92      ((m1_subset_1 @ sk_C @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_A @ sk_B)))),
% 0.72/0.92      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.72/0.92  thf(dt_k2_relset_1, axiom,
% 0.72/0.92    (![A:$i,B:$i,C:$i]:
% 0.72/0.92     ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) =>
% 0.72/0.92       ( m1_subset_1 @ ( k2_relset_1 @ A @ B @ C ) @ ( k1_zfmisc_1 @ B ) ) ))).
% 0.72/0.92  thf('38', plain,
% 0.72/0.92      (![X14 : $i, X15 : $i, X16 : $i]:
% 0.72/0.92         ((m1_subset_1 @ (k2_relset_1 @ X14 @ X15 @ X16) @ (k1_zfmisc_1 @ X15))
% 0.72/0.92          | ~ (m1_subset_1 @ X16 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X14 @ X15))))),
% 0.72/0.92      inference('cnf', [status(esa)], [dt_k2_relset_1])).
% 0.72/0.92  thf('39', plain,
% 0.72/0.92      ((m1_subset_1 @ (k2_relset_1 @ sk_A @ sk_B @ sk_C) @ (k1_zfmisc_1 @ sk_B))),
% 0.72/0.92      inference('sup-', [status(thm)], ['37', '38'])).
% 0.72/0.92  thf('40', plain,
% 0.72/0.92      ((m1_subset_1 @ sk_C @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_A @ sk_B)))),
% 0.72/0.92      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.72/0.92  thf(redefinition_k2_relset_1, axiom,
% 0.72/0.92    (![A:$i,B:$i,C:$i]:
% 0.72/0.92     ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) =>
% 0.72/0.92       ( ( k2_relset_1 @ A @ B @ C ) = ( k2_relat_1 @ C ) ) ))).
% 0.72/0.92  thf('41', plain,
% 0.72/0.92      (![X23 : $i, X24 : $i, X25 : $i]:
% 0.72/0.92         (((k2_relset_1 @ X24 @ X25 @ X23) = (k2_relat_1 @ X23))
% 0.72/0.92          | ~ (m1_subset_1 @ X23 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X24 @ X25))))),
% 0.72/0.92      inference('cnf', [status(esa)], [redefinition_k2_relset_1])).
% 0.72/0.92  thf('42', plain,
% 0.72/0.92      (((k2_relset_1 @ sk_A @ sk_B @ sk_C) = (k2_relat_1 @ sk_C))),
% 0.72/0.92      inference('sup-', [status(thm)], ['40', '41'])).
% 0.72/0.92  thf('43', plain,
% 0.72/0.92      ((m1_subset_1 @ (k2_relat_1 @ sk_C) @ (k1_zfmisc_1 @ sk_B))),
% 0.72/0.92      inference('demod', [status(thm)], ['39', '42'])).
% 0.72/0.92  thf(t3_subset, axiom,
% 0.72/0.92    (![A:$i,B:$i]:
% 0.72/0.92     ( ( m1_subset_1 @ A @ ( k1_zfmisc_1 @ B ) ) <=> ( r1_tarski @ A @ B ) ))).
% 0.72/0.92  thf('44', plain,
% 0.72/0.92      (![X3 : $i, X4 : $i]:
% 0.72/0.92         ((r1_tarski @ X3 @ X4) | ~ (m1_subset_1 @ X3 @ (k1_zfmisc_1 @ X4)))),
% 0.72/0.92      inference('cnf', [status(esa)], [t3_subset])).
% 0.72/0.92  thf('45', plain, ((r1_tarski @ (k2_relat_1 @ sk_C) @ sk_B)),
% 0.72/0.92      inference('sup-', [status(thm)], ['43', '44'])).
% 0.72/0.92  thf('46', plain, (((k5_relat_1 @ sk_D @ sk_C) = (k6_relat_1 @ sk_B))),
% 0.72/0.92      inference('demod', [status(thm)], ['27', '30'])).
% 0.72/0.92  thf('47', plain, (![X13 : $i]: ((k2_relat_1 @ (k6_relat_1 @ X13)) = (X13))),
% 0.72/0.92      inference('cnf', [status(esa)], [t71_relat_1])).
% 0.72/0.92  thf('48', plain,
% 0.72/0.92      ((m1_subset_1 @ sk_C @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_A @ sk_B)))),
% 0.72/0.92      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.72/0.92  thf(cc2_relat_1, axiom,
% 0.72/0.92    (![A:$i]:
% 0.72/0.92     ( ( v1_relat_1 @ A ) =>
% 0.72/0.92       ( ![B:$i]:
% 0.72/0.92         ( ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ A ) ) => ( v1_relat_1 @ B ) ) ) ))).
% 0.72/0.92  thf('49', plain,
% 0.72/0.92      (![X6 : $i, X7 : $i]:
% 0.72/0.92         (~ (m1_subset_1 @ X6 @ (k1_zfmisc_1 @ X7))
% 0.72/0.92          | (v1_relat_1 @ X6)
% 0.72/0.92          | ~ (v1_relat_1 @ X7))),
% 0.72/0.92      inference('cnf', [status(esa)], [cc2_relat_1])).
% 0.72/0.92  thf('50', plain,
% 0.72/0.92      ((~ (v1_relat_1 @ (k2_zfmisc_1 @ sk_A @ sk_B)) | (v1_relat_1 @ sk_C))),
% 0.72/0.92      inference('sup-', [status(thm)], ['48', '49'])).
% 0.72/0.92  thf(fc6_relat_1, axiom,
% 0.72/0.92    (![A:$i,B:$i]: ( v1_relat_1 @ ( k2_zfmisc_1 @ A @ B ) ))).
% 0.72/0.92  thf('51', plain,
% 0.72/0.92      (![X8 : $i, X9 : $i]: (v1_relat_1 @ (k2_zfmisc_1 @ X8 @ X9))),
% 0.72/0.92      inference('cnf', [status(esa)], [fc6_relat_1])).
% 0.72/0.92  thf('52', plain, ((v1_relat_1 @ sk_C)),
% 0.72/0.92      inference('demod', [status(thm)], ['50', '51'])).
% 0.72/0.92  thf('53', plain,
% 0.72/0.92      ((m1_subset_1 @ sk_D @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_B @ sk_A)))),
% 0.72/0.92      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.72/0.92  thf('54', plain,
% 0.72/0.92      (![X6 : $i, X7 : $i]:
% 0.72/0.92         (~ (m1_subset_1 @ X6 @ (k1_zfmisc_1 @ X7))
% 0.72/0.92          | (v1_relat_1 @ X6)
% 0.72/0.92          | ~ (v1_relat_1 @ X7))),
% 0.72/0.92      inference('cnf', [status(esa)], [cc2_relat_1])).
% 0.72/0.92  thf('55', plain,
% 0.72/0.92      ((~ (v1_relat_1 @ (k2_zfmisc_1 @ sk_B @ sk_A)) | (v1_relat_1 @ sk_D))),
% 0.72/0.92      inference('sup-', [status(thm)], ['53', '54'])).
% 0.72/0.92  thf('56', plain,
% 0.72/0.92      (![X8 : $i, X9 : $i]: (v1_relat_1 @ (k2_zfmisc_1 @ X8 @ X9))),
% 0.72/0.92      inference('cnf', [status(esa)], [fc6_relat_1])).
% 0.72/0.92  thf('57', plain, ((v1_relat_1 @ sk_D)),
% 0.72/0.92      inference('demod', [status(thm)], ['55', '56'])).
% 0.72/0.92  thf('58', plain, (((k2_relat_1 @ sk_C) = (sk_B))),
% 0.72/0.92      inference('demod', [status(thm)],
% 0.72/0.92                ['35', '36', '45', '46', '47', '52', '57'])).
% 0.72/0.92  thf('59', plain, (((k2_relset_1 @ sk_A @ sk_B @ sk_C) != (sk_B))),
% 0.72/0.92      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.72/0.92  thf('60', plain,
% 0.72/0.92      (((k2_relset_1 @ sk_A @ sk_B @ sk_C) = (k2_relat_1 @ sk_C))),
% 0.72/0.92      inference('sup-', [status(thm)], ['40', '41'])).
% 0.72/0.92  thf('61', plain, (((k2_relat_1 @ sk_C) != (sk_B))),
% 0.72/0.92      inference('demod', [status(thm)], ['59', '60'])).
% 0.72/0.92  thf('62', plain, ($false),
% 0.72/0.92      inference('simplify_reflect-', [status(thm)], ['58', '61'])).
% 0.72/0.92  
% 0.72/0.92  % SZS output end Refutation
% 0.72/0.92  
% 0.72/0.93  % Zipperpin 1.5 exiting
%------------------------------------------------------------------------------
