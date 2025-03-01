%------------------------------------------------------------------------------
% File       : Zipperpin---2.0
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_portfolio.sh /export/starexec/sandbox/benchmark/theBenchmark.p /export/starexec/sandbox/tmp/tmp.akH8w9QxNn

% Computer   : n024.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 13:55:34 EST 2020

% Result     : Theorem 12.72s
% Output     : Refutation 12.72s
% Verified   : 
% Statistics : Number of formulae       :  188 ( 794 expanded)
%              Number of leaves         :   44 ( 251 expanded)
%              Depth                    :   18
%              Number of atoms          : 1415 (12628 expanded)
%              Number of equality atoms :  107 ( 728 expanded)
%              Maximal formula depth    :   18 (   6 average)

% Comments   : 
%------------------------------------------------------------------------------
thf(k1_relat_1_type,type,(
    k1_relat_1: $i > $i )).

thf(v1_xboole_0_type,type,(
    v1_xboole_0: $i > $o )).

thf(v1_funct_2_type,type,(
    v1_funct_2: $i > $i > $i > $o )).

thf(k1_xboole_0_type,type,(
    k1_xboole_0: $i )).

thf(sk_A_type,type,(
    sk_A: $i )).

thf(sk_B_type,type,(
    sk_B: $i )).

thf(zip_tseitin_1_type,type,(
    zip_tseitin_1: $i > $i > $i > $o )).

thf(zip_tseitin_0_type,type,(
    zip_tseitin_0: $i > $i > $o )).

thf(v4_relat_1_type,type,(
    v4_relat_1: $i > $i > $o )).

thf(k7_relat_1_type,type,(
    k7_relat_1: $i > $i > $i )).

thf(k1_relset_1_type,type,(
    k1_relset_1: $i > $i > $i > $i )).

thf(m1_subset_1_type,type,(
    m1_subset_1: $i > $i > $o )).

thf(v1_funct_1_type,type,(
    v1_funct_1: $i > $o )).

thf(k2_relat_1_type,type,(
    k2_relat_1: $i > $i )).

thf(r1_tarski_type,type,(
    r1_tarski: $i > $i > $o )).

thf(v1_relat_1_type,type,(
    v1_relat_1: $i > $o )).

thf(sk_C_type,type,(
    sk_C: $i )).

thf(k2_partfun1_type,type,(
    k2_partfun1: $i > $i > $i > $i > $i )).

thf(k2_zfmisc_1_type,type,(
    k2_zfmisc_1: $i > $i > $i )).

thf(sk_D_type,type,(
    sk_D: $i )).

thf(v5_relat_1_type,type,(
    v5_relat_1: $i > $i > $o )).

thf(k1_zfmisc_1_type,type,(
    k1_zfmisc_1: $i > $i )).

thf(t38_funct_2,conjecture,(
    ! [A: $i,B: $i,C: $i,D: $i] :
      ( ( ( v1_funct_1 @ D )
        & ( v1_funct_2 @ D @ A @ B )
        & ( m1_subset_1 @ D @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) )
     => ( ( r1_tarski @ C @ A )
       => ( ( ( B = k1_xboole_0 )
            & ( A != k1_xboole_0 ) )
          | ( ( v1_funct_1 @ ( k2_partfun1 @ A @ B @ D @ C ) )
            & ( v1_funct_2 @ ( k2_partfun1 @ A @ B @ D @ C ) @ C @ B )
            & ( m1_subset_1 @ ( k2_partfun1 @ A @ B @ D @ C ) @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ C @ B ) ) ) ) ) ) ) )).

thf(zf_stmt_0,negated_conjecture,(
    ~ ! [A: $i,B: $i,C: $i,D: $i] :
        ( ( ( v1_funct_1 @ D )
          & ( v1_funct_2 @ D @ A @ B )
          & ( m1_subset_1 @ D @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) )
       => ( ( r1_tarski @ C @ A )
         => ( ( ( B = k1_xboole_0 )
              & ( A != k1_xboole_0 ) )
            | ( ( v1_funct_1 @ ( k2_partfun1 @ A @ B @ D @ C ) )
              & ( v1_funct_2 @ ( k2_partfun1 @ A @ B @ D @ C ) @ C @ B )
              & ( m1_subset_1 @ ( k2_partfun1 @ A @ B @ D @ C ) @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ C @ B ) ) ) ) ) ) ) ),
    inference('cnf.neg',[status(esa)],[t38_funct_2])).

thf('0',plain,
    ( ~ ( v1_funct_1 @ ( k2_partfun1 @ sk_A @ sk_B @ sk_D @ sk_C ) )
    | ~ ( v1_funct_2 @ ( k2_partfun1 @ sk_A @ sk_B @ sk_D @ sk_C ) @ sk_C @ sk_B )
    | ~ ( m1_subset_1 @ ( k2_partfun1 @ sk_A @ sk_B @ sk_D @ sk_C ) @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_C @ sk_B ) ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('1',plain,(
    m1_subset_1 @ sk_D @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_A @ sk_B ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(dt_k2_partfun1,axiom,(
    ! [A: $i,B: $i,C: $i,D: $i] :
      ( ( ( v1_funct_1 @ C )
        & ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) )
     => ( ( v1_funct_1 @ ( k2_partfun1 @ A @ B @ C @ D ) )
        & ( m1_subset_1 @ ( k2_partfun1 @ A @ B @ C @ D ) @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) ) ) )).

thf('2',plain,(
    ! [X35: $i,X36: $i,X37: $i,X38: $i] :
      ( ~ ( m1_subset_1 @ X35 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X36 @ X37 ) ) )
      | ~ ( v1_funct_1 @ X35 )
      | ( v1_funct_1 @ ( k2_partfun1 @ X36 @ X37 @ X35 @ X38 ) ) ) ),
    inference(cnf,[status(esa)],[dt_k2_partfun1])).

thf('3',plain,(
    ! [X0: $i] :
      ( ( v1_funct_1 @ ( k2_partfun1 @ sk_A @ sk_B @ sk_D @ X0 ) )
      | ~ ( v1_funct_1 @ sk_D ) ) ),
    inference('sup-',[status(thm)],['1','2'])).

thf('4',plain,(
    v1_funct_1 @ sk_D ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('5',plain,(
    ! [X0: $i] :
      ( v1_funct_1 @ ( k2_partfun1 @ sk_A @ sk_B @ sk_D @ X0 ) ) ),
    inference(demod,[status(thm)],['3','4'])).

thf('6',plain,
    ( ~ ( v1_funct_2 @ ( k2_partfun1 @ sk_A @ sk_B @ sk_D @ sk_C ) @ sk_C @ sk_B )
    | ~ ( m1_subset_1 @ ( k2_partfun1 @ sk_A @ sk_B @ sk_D @ sk_C ) @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_C @ sk_B ) ) ) ),
    inference(demod,[status(thm)],['0','5'])).

thf('7',plain,(
    m1_subset_1 @ sk_D @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_A @ sk_B ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(redefinition_k2_partfun1,axiom,(
    ! [A: $i,B: $i,C: $i,D: $i] :
      ( ( ( v1_funct_1 @ C )
        & ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) )
     => ( ( k2_partfun1 @ A @ B @ C @ D )
        = ( k7_relat_1 @ C @ D ) ) ) )).

thf('8',plain,(
    ! [X39: $i,X40: $i,X41: $i,X42: $i] :
      ( ~ ( m1_subset_1 @ X39 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X40 @ X41 ) ) )
      | ~ ( v1_funct_1 @ X39 )
      | ( ( k2_partfun1 @ X40 @ X41 @ X39 @ X42 )
        = ( k7_relat_1 @ X39 @ X42 ) ) ) ),
    inference(cnf,[status(esa)],[redefinition_k2_partfun1])).

thf('9',plain,(
    ! [X0: $i] :
      ( ( ( k2_partfun1 @ sk_A @ sk_B @ sk_D @ X0 )
        = ( k7_relat_1 @ sk_D @ X0 ) )
      | ~ ( v1_funct_1 @ sk_D ) ) ),
    inference('sup-',[status(thm)],['7','8'])).

thf('10',plain,(
    v1_funct_1 @ sk_D ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('11',plain,(
    ! [X0: $i] :
      ( ( k2_partfun1 @ sk_A @ sk_B @ sk_D @ X0 )
      = ( k7_relat_1 @ sk_D @ X0 ) ) ),
    inference(demod,[status(thm)],['9','10'])).

thf('12',plain,(
    ! [X0: $i] :
      ( ( k2_partfun1 @ sk_A @ sk_B @ sk_D @ X0 )
      = ( k7_relat_1 @ sk_D @ X0 ) ) ),
    inference(demod,[status(thm)],['9','10'])).

thf('13',plain,
    ( ~ ( v1_funct_2 @ ( k7_relat_1 @ sk_D @ sk_C ) @ sk_C @ sk_B )
    | ~ ( m1_subset_1 @ ( k7_relat_1 @ sk_D @ sk_C ) @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_C @ sk_B ) ) ) ),
    inference(demod,[status(thm)],['6','11','12'])).

thf('14',plain,(
    r1_tarski @ sk_C @ sk_A ),
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
    ! [B: $i,A: $i] :
      ( ( ( B = k1_xboole_0 )
       => ( A = k1_xboole_0 ) )
     => ( zip_tseitin_0 @ B @ A ) ) )).

thf('15',plain,(
    ! [X27: $i,X28: $i] :
      ( ( zip_tseitin_0 @ X27 @ X28 )
      | ( X27 = k1_xboole_0 ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_1])).

thf(t2_xboole_1,axiom,(
    ! [A: $i] :
      ( r1_tarski @ k1_xboole_0 @ A ) )).

thf('16',plain,(
    ! [X3: $i] :
      ( r1_tarski @ k1_xboole_0 @ X3 ) ),
    inference(cnf,[status(esa)],[t2_xboole_1])).

thf('17',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( ( r1_tarski @ X0 @ X1 )
      | ( zip_tseitin_0 @ X0 @ X2 ) ) ),
    inference('sup+',[status(thm)],['15','16'])).

thf('18',plain,(
    m1_subset_1 @ sk_D @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_A @ sk_B ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(zf_stmt_2,type,(
    zip_tseitin_1: $i > $i > $i > $o )).

thf(zf_stmt_3,axiom,(
    ! [C: $i,B: $i,A: $i] :
      ( ( zip_tseitin_1 @ C @ B @ A )
     => ( ( v1_funct_2 @ C @ A @ B )
      <=> ( A
          = ( k1_relset_1 @ A @ B @ C ) ) ) ) )).

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

thf('19',plain,(
    ! [X32: $i,X33: $i,X34: $i] :
      ( ~ ( zip_tseitin_0 @ X32 @ X33 )
      | ( zip_tseitin_1 @ X34 @ X32 @ X33 )
      | ~ ( m1_subset_1 @ X34 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X33 @ X32 ) ) ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_5])).

thf('20',plain,
    ( ( zip_tseitin_1 @ sk_D @ sk_B @ sk_A )
    | ~ ( zip_tseitin_0 @ sk_B @ sk_A ) ),
    inference('sup-',[status(thm)],['18','19'])).

thf('21',plain,(
    ! [X0: $i] :
      ( ( r1_tarski @ sk_B @ X0 )
      | ( zip_tseitin_1 @ sk_D @ sk_B @ sk_A ) ) ),
    inference('sup-',[status(thm)],['17','20'])).

thf('22',plain,(
    v1_funct_2 @ sk_D @ sk_A @ sk_B ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('23',plain,(
    ! [X29: $i,X30: $i,X31: $i] :
      ( ~ ( v1_funct_2 @ X31 @ X29 @ X30 )
      | ( X29
        = ( k1_relset_1 @ X29 @ X30 @ X31 ) )
      | ~ ( zip_tseitin_1 @ X31 @ X30 @ X29 ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_3])).

thf('24',plain,
    ( ~ ( zip_tseitin_1 @ sk_D @ sk_B @ sk_A )
    | ( sk_A
      = ( k1_relset_1 @ sk_A @ sk_B @ sk_D ) ) ),
    inference('sup-',[status(thm)],['22','23'])).

thf('25',plain,(
    m1_subset_1 @ sk_D @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_A @ sk_B ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(redefinition_k1_relset_1,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) )
     => ( ( k1_relset_1 @ A @ B @ C )
        = ( k1_relat_1 @ C ) ) ) )).

thf('26',plain,(
    ! [X24: $i,X25: $i,X26: $i] :
      ( ( ( k1_relset_1 @ X25 @ X26 @ X24 )
        = ( k1_relat_1 @ X24 ) )
      | ~ ( m1_subset_1 @ X24 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X25 @ X26 ) ) ) ) ),
    inference(cnf,[status(esa)],[redefinition_k1_relset_1])).

thf('27',plain,
    ( ( k1_relset_1 @ sk_A @ sk_B @ sk_D )
    = ( k1_relat_1 @ sk_D ) ),
    inference('sup-',[status(thm)],['25','26'])).

thf('28',plain,
    ( ~ ( zip_tseitin_1 @ sk_D @ sk_B @ sk_A )
    | ( sk_A
      = ( k1_relat_1 @ sk_D ) ) ),
    inference(demod,[status(thm)],['24','27'])).

thf('29',plain,(
    ! [X0: $i] :
      ( ( r1_tarski @ sk_B @ X0 )
      | ( sk_A
        = ( k1_relat_1 @ sk_D ) ) ) ),
    inference('sup-',[status(thm)],['21','28'])).

thf('30',plain,(
    ! [X3: $i] :
      ( r1_tarski @ k1_xboole_0 @ X3 ) ),
    inference(cnf,[status(esa)],[t2_xboole_1])).

thf(d10_xboole_0,axiom,(
    ! [A: $i,B: $i] :
      ( ( A = B )
    <=> ( ( r1_tarski @ A @ B )
        & ( r1_tarski @ B @ A ) ) ) )).

thf('31',plain,(
    ! [X0: $i,X2: $i] :
      ( ( X0 = X2 )
      | ~ ( r1_tarski @ X2 @ X0 )
      | ~ ( r1_tarski @ X0 @ X2 ) ) ),
    inference(cnf,[status(esa)],[d10_xboole_0])).

thf('32',plain,(
    ! [X0: $i] :
      ( ~ ( r1_tarski @ X0 @ k1_xboole_0 )
      | ( X0 = k1_xboole_0 ) ) ),
    inference('sup-',[status(thm)],['30','31'])).

thf('33',plain,
    ( ( sk_A
      = ( k1_relat_1 @ sk_D ) )
    | ( sk_B = k1_xboole_0 ) ),
    inference('sup-',[status(thm)],['29','32'])).

thf('34',plain,
    ( ( sk_B != k1_xboole_0 )
    | ( sk_A = k1_xboole_0 ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('35',plain,
    ( ( sk_B != k1_xboole_0 )
   <= ( sk_B != k1_xboole_0 ) ),
    inference(split,[status(esa)],['34'])).

thf('36',plain,
    ( ( sk_A = k1_xboole_0 )
   <= ( sk_A = k1_xboole_0 ) ),
    inference(split,[status(esa)],['34'])).

thf('37',plain,
    ( ~ ( v1_funct_2 @ ( k2_partfun1 @ sk_A @ sk_B @ sk_D @ sk_C ) @ sk_C @ sk_B )
    | ~ ( m1_subset_1 @ ( k2_partfun1 @ sk_A @ sk_B @ sk_D @ sk_C ) @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_C @ sk_B ) ) ) ),
    inference(demod,[status(thm)],['0','5'])).

thf('38',plain,
    ( ( ~ ( m1_subset_1 @ ( k2_partfun1 @ k1_xboole_0 @ sk_B @ sk_D @ sk_C ) @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_C @ sk_B ) ) )
      | ~ ( v1_funct_2 @ ( k2_partfun1 @ sk_A @ sk_B @ sk_D @ sk_C ) @ sk_C @ sk_B ) )
   <= ( sk_A = k1_xboole_0 ) ),
    inference('sup-',[status(thm)],['36','37'])).

thf(t113_zfmisc_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( ( k2_zfmisc_1 @ A @ B )
        = k1_xboole_0 )
    <=> ( ( A = k1_xboole_0 )
        | ( B = k1_xboole_0 ) ) ) )).

thf('39',plain,(
    ! [X5: $i,X6: $i] :
      ( ( ( k2_zfmisc_1 @ X5 @ X6 )
        = k1_xboole_0 )
      | ( X5 != k1_xboole_0 ) ) ),
    inference(cnf,[status(esa)],[t113_zfmisc_1])).

thf('40',plain,(
    ! [X6: $i] :
      ( ( k2_zfmisc_1 @ k1_xboole_0 @ X6 )
      = k1_xboole_0 ) ),
    inference(simplify,[status(thm)],['39'])).

thf('41',plain,
    ( ( sk_A = k1_xboole_0 )
   <= ( sk_A = k1_xboole_0 ) ),
    inference(split,[status(esa)],['34'])).

thf('42',plain,(
    m1_subset_1 @ sk_D @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_A @ sk_B ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('43',plain,
    ( ( m1_subset_1 @ sk_D @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ k1_xboole_0 @ sk_B ) ) )
   <= ( sk_A = k1_xboole_0 ) ),
    inference('sup+',[status(thm)],['41','42'])).

thf('44',plain,
    ( ( m1_subset_1 @ sk_D @ ( k1_zfmisc_1 @ k1_xboole_0 ) )
   <= ( sk_A = k1_xboole_0 ) ),
    inference('sup+',[status(thm)],['40','43'])).

thf(t3_subset,axiom,(
    ! [A: $i,B: $i] :
      ( ( m1_subset_1 @ A @ ( k1_zfmisc_1 @ B ) )
    <=> ( r1_tarski @ A @ B ) ) )).

thf('45',plain,(
    ! [X7: $i,X8: $i] :
      ( ( r1_tarski @ X7 @ X8 )
      | ~ ( m1_subset_1 @ X7 @ ( k1_zfmisc_1 @ X8 ) ) ) ),
    inference(cnf,[status(esa)],[t3_subset])).

thf('46',plain,
    ( ( r1_tarski @ sk_D @ k1_xboole_0 )
   <= ( sk_A = k1_xboole_0 ) ),
    inference('sup-',[status(thm)],['44','45'])).

thf('47',plain,(
    ! [X0: $i] :
      ( ~ ( r1_tarski @ X0 @ k1_xboole_0 )
      | ( X0 = k1_xboole_0 ) ) ),
    inference('sup-',[status(thm)],['30','31'])).

thf('48',plain,
    ( ( sk_D = k1_xboole_0 )
   <= ( sk_A = k1_xboole_0 ) ),
    inference('sup-',[status(thm)],['46','47'])).

thf('49',plain,
    ( ( sk_A = k1_xboole_0 )
   <= ( sk_A = k1_xboole_0 ) ),
    inference(split,[status(esa)],['34'])).

thf('50',plain,(
    r1_tarski @ sk_C @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('51',plain,
    ( ( r1_tarski @ sk_C @ k1_xboole_0 )
   <= ( sk_A = k1_xboole_0 ) ),
    inference('sup+',[status(thm)],['49','50'])).

thf('52',plain,(
    ! [X0: $i,X2: $i] :
      ( ( X0 = X2 )
      | ~ ( r1_tarski @ X2 @ X0 )
      | ~ ( r1_tarski @ X0 @ X2 ) ) ),
    inference(cnf,[status(esa)],[d10_xboole_0])).

thf('53',plain,
    ( ( ~ ( r1_tarski @ k1_xboole_0 @ sk_C )
      | ( k1_xboole_0 = sk_C ) )
   <= ( sk_A = k1_xboole_0 ) ),
    inference('sup-',[status(thm)],['51','52'])).

thf('54',plain,(
    ! [X3: $i] :
      ( r1_tarski @ k1_xboole_0 @ X3 ) ),
    inference(cnf,[status(esa)],[t2_xboole_1])).

thf('55',plain,
    ( ( k1_xboole_0 = sk_C )
   <= ( sk_A = k1_xboole_0 ) ),
    inference(demod,[status(thm)],['53','54'])).

thf(cc1_funct_1,axiom,(
    ! [A: $i] :
      ( ( v1_xboole_0 @ A )
     => ( v1_funct_1 @ A ) ) )).

thf('56',plain,(
    ! [X17: $i] :
      ( ( v1_funct_1 @ X17 )
      | ~ ( v1_xboole_0 @ X17 ) ) ),
    inference(cnf,[status(esa)],[cc1_funct_1])).

thf('57',plain,(
    ! [X3: $i] :
      ( r1_tarski @ k1_xboole_0 @ X3 ) ),
    inference(cnf,[status(esa)],[t2_xboole_1])).

thf('58',plain,(
    ! [X7: $i,X9: $i] :
      ( ( m1_subset_1 @ X7 @ ( k1_zfmisc_1 @ X9 ) )
      | ~ ( r1_tarski @ X7 @ X9 ) ) ),
    inference(cnf,[status(esa)],[t3_subset])).

thf('59',plain,(
    ! [X0: $i] :
      ( m1_subset_1 @ k1_xboole_0 @ ( k1_zfmisc_1 @ X0 ) ) ),
    inference('sup-',[status(thm)],['57','58'])).

thf('60',plain,(
    ! [X39: $i,X40: $i,X41: $i,X42: $i] :
      ( ~ ( m1_subset_1 @ X39 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X40 @ X41 ) ) )
      | ~ ( v1_funct_1 @ X39 )
      | ( ( k2_partfun1 @ X40 @ X41 @ X39 @ X42 )
        = ( k7_relat_1 @ X39 @ X42 ) ) ) ),
    inference(cnf,[status(esa)],[redefinition_k2_partfun1])).

thf('61',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( ( ( k2_partfun1 @ X1 @ X0 @ k1_xboole_0 @ X2 )
        = ( k7_relat_1 @ k1_xboole_0 @ X2 ) )
      | ~ ( v1_funct_1 @ k1_xboole_0 ) ) ),
    inference('sup-',[status(thm)],['59','60'])).

thf(t111_relat_1,axiom,(
    ! [A: $i] :
      ( ( k7_relat_1 @ k1_xboole_0 @ A )
      = k1_xboole_0 ) )).

thf('62',plain,(
    ! [X14: $i] :
      ( ( k7_relat_1 @ k1_xboole_0 @ X14 )
      = k1_xboole_0 ) ),
    inference(cnf,[status(esa)],[t111_relat_1])).

thf('63',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( ( ( k2_partfun1 @ X1 @ X0 @ k1_xboole_0 @ X2 )
        = k1_xboole_0 )
      | ~ ( v1_funct_1 @ k1_xboole_0 ) ) ),
    inference(demod,[status(thm)],['61','62'])).

thf('64',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( ~ ( v1_xboole_0 @ k1_xboole_0 )
      | ( ( k2_partfun1 @ X2 @ X1 @ k1_xboole_0 @ X0 )
        = k1_xboole_0 ) ) ),
    inference('sup-',[status(thm)],['56','63'])).

thf(fc1_xboole_0,axiom,(
    v1_xboole_0 @ k1_xboole_0 )).

thf('65',plain,(
    v1_xboole_0 @ k1_xboole_0 ),
    inference(cnf,[status(esa)],[fc1_xboole_0])).

thf('66',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( ( k2_partfun1 @ X2 @ X1 @ k1_xboole_0 @ X0 )
      = k1_xboole_0 ) ),
    inference(demod,[status(thm)],['64','65'])).

thf('67',plain,
    ( ( k1_xboole_0 = sk_C )
   <= ( sk_A = k1_xboole_0 ) ),
    inference(demod,[status(thm)],['53','54'])).

thf('68',plain,(
    ! [X6: $i] :
      ( ( k2_zfmisc_1 @ k1_xboole_0 @ X6 )
      = k1_xboole_0 ) ),
    inference(simplify,[status(thm)],['39'])).

thf('69',plain,(
    ! [X0: $i] :
      ( m1_subset_1 @ k1_xboole_0 @ ( k1_zfmisc_1 @ X0 ) ) ),
    inference('sup-',[status(thm)],['57','58'])).

thf('70',plain,
    ( ( sk_A = k1_xboole_0 )
   <= ( sk_A = k1_xboole_0 ) ),
    inference(split,[status(esa)],['34'])).

thf('71',plain,
    ( ( sk_D = k1_xboole_0 )
   <= ( sk_A = k1_xboole_0 ) ),
    inference('sup-',[status(thm)],['46','47'])).

thf('72',plain,
    ( ( k1_xboole_0 = sk_C )
   <= ( sk_A = k1_xboole_0 ) ),
    inference(demod,[status(thm)],['53','54'])).

thf('73',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( ( k2_partfun1 @ X2 @ X1 @ k1_xboole_0 @ X0 )
      = k1_xboole_0 ) ),
    inference(demod,[status(thm)],['64','65'])).

thf('74',plain,
    ( ( k1_xboole_0 = sk_C )
   <= ( sk_A = k1_xboole_0 ) ),
    inference(demod,[status(thm)],['53','54'])).

thf('75',plain,(
    ! [X0: $i] :
      ( m1_subset_1 @ k1_xboole_0 @ ( k1_zfmisc_1 @ X0 ) ) ),
    inference('sup-',[status(thm)],['57','58'])).

thf('76',plain,(
    ! [X24: $i,X25: $i,X26: $i] :
      ( ( ( k1_relset_1 @ X25 @ X26 @ X24 )
        = ( k1_relat_1 @ X24 ) )
      | ~ ( m1_subset_1 @ X24 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X25 @ X26 ) ) ) ) ),
    inference(cnf,[status(esa)],[redefinition_k1_relset_1])).

thf('77',plain,(
    ! [X0: $i,X1: $i] :
      ( ( k1_relset_1 @ X1 @ X0 @ k1_xboole_0 )
      = ( k1_relat_1 @ k1_xboole_0 ) ) ),
    inference('sup-',[status(thm)],['75','76'])).

thf('78',plain,(
    ! [X14: $i] :
      ( ( k7_relat_1 @ k1_xboole_0 @ X14 )
      = k1_xboole_0 ) ),
    inference(cnf,[status(esa)],[t111_relat_1])).

thf('79',plain,(
    ! [X3: $i] :
      ( r1_tarski @ k1_xboole_0 @ X3 ) ),
    inference(cnf,[status(esa)],[t2_xboole_1])).

thf(t91_relat_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( v1_relat_1 @ B )
     => ( ( r1_tarski @ A @ ( k1_relat_1 @ B ) )
       => ( ( k1_relat_1 @ ( k7_relat_1 @ B @ A ) )
          = A ) ) ) )).

thf('80',plain,(
    ! [X15: $i,X16: $i] :
      ( ~ ( r1_tarski @ X15 @ ( k1_relat_1 @ X16 ) )
      | ( ( k1_relat_1 @ ( k7_relat_1 @ X16 @ X15 ) )
        = X15 )
      | ~ ( v1_relat_1 @ X16 ) ) ),
    inference(cnf,[status(esa)],[t91_relat_1])).

thf('81',plain,(
    ! [X0: $i] :
      ( ~ ( v1_relat_1 @ X0 )
      | ( ( k1_relat_1 @ ( k7_relat_1 @ X0 @ k1_xboole_0 ) )
        = k1_xboole_0 ) ) ),
    inference('sup-',[status(thm)],['79','80'])).

thf('82',plain,
    ( ( ( k1_relat_1 @ k1_xboole_0 )
      = k1_xboole_0 )
    | ~ ( v1_relat_1 @ k1_xboole_0 ) ),
    inference('sup+',[status(thm)],['78','81'])).

thf('83',plain,(
    ! [X0: $i] :
      ( m1_subset_1 @ k1_xboole_0 @ ( k1_zfmisc_1 @ X0 ) ) ),
    inference('sup-',[status(thm)],['57','58'])).

thf(cc1_relset_1,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) )
     => ( v1_relat_1 @ C ) ) )).

thf('84',plain,(
    ! [X18: $i,X19: $i,X20: $i] :
      ( ( v1_relat_1 @ X18 )
      | ~ ( m1_subset_1 @ X18 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X19 @ X20 ) ) ) ) ),
    inference(cnf,[status(esa)],[cc1_relset_1])).

thf('85',plain,(
    v1_relat_1 @ k1_xboole_0 ),
    inference('sup-',[status(thm)],['83','84'])).

thf('86',plain,
    ( ( k1_relat_1 @ k1_xboole_0 )
    = k1_xboole_0 ),
    inference(demod,[status(thm)],['82','85'])).

thf('87',plain,(
    ! [X0: $i,X1: $i] :
      ( ( k1_relset_1 @ X1 @ X0 @ k1_xboole_0 )
      = k1_xboole_0 ) ),
    inference(demod,[status(thm)],['77','86'])).

thf('88',plain,(
    ! [X29: $i,X30: $i,X31: $i] :
      ( ( X29
       != ( k1_relset_1 @ X29 @ X30 @ X31 ) )
      | ( v1_funct_2 @ X31 @ X29 @ X30 )
      | ~ ( zip_tseitin_1 @ X31 @ X30 @ X29 ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_3])).

thf('89',plain,(
    ! [X0: $i,X1: $i] :
      ( ( X1 != k1_xboole_0 )
      | ~ ( zip_tseitin_1 @ k1_xboole_0 @ X0 @ X1 )
      | ( v1_funct_2 @ k1_xboole_0 @ X1 @ X0 ) ) ),
    inference('sup-',[status(thm)],['87','88'])).

thf('90',plain,(
    ! [X0: $i] :
      ( ( v1_funct_2 @ k1_xboole_0 @ k1_xboole_0 @ X0 )
      | ~ ( zip_tseitin_1 @ k1_xboole_0 @ X0 @ k1_xboole_0 ) ) ),
    inference(simplify,[status(thm)],['89'])).

thf('91',plain,(
    ! [X27: $i,X28: $i] :
      ( ( zip_tseitin_0 @ X27 @ X28 )
      | ( X28 != k1_xboole_0 ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_1])).

thf('92',plain,(
    ! [X27: $i] :
      ( zip_tseitin_0 @ X27 @ k1_xboole_0 ) ),
    inference(simplify,[status(thm)],['91'])).

thf('93',plain,(
    ! [X0: $i] :
      ( m1_subset_1 @ k1_xboole_0 @ ( k1_zfmisc_1 @ X0 ) ) ),
    inference('sup-',[status(thm)],['57','58'])).

thf('94',plain,(
    ! [X32: $i,X33: $i,X34: $i] :
      ( ~ ( zip_tseitin_0 @ X32 @ X33 )
      | ( zip_tseitin_1 @ X34 @ X32 @ X33 )
      | ~ ( m1_subset_1 @ X34 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X33 @ X32 ) ) ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_5])).

thf('95',plain,(
    ! [X0: $i,X1: $i] :
      ( ( zip_tseitin_1 @ k1_xboole_0 @ X0 @ X1 )
      | ~ ( zip_tseitin_0 @ X0 @ X1 ) ) ),
    inference('sup-',[status(thm)],['93','94'])).

thf('96',plain,(
    ! [X0: $i] :
      ( zip_tseitin_1 @ k1_xboole_0 @ X0 @ k1_xboole_0 ) ),
    inference('sup-',[status(thm)],['92','95'])).

thf('97',plain,(
    ! [X0: $i] :
      ( v1_funct_2 @ k1_xboole_0 @ k1_xboole_0 @ X0 ) ),
    inference(demod,[status(thm)],['90','96'])).

thf('98',plain,(
    sk_A != k1_xboole_0 ),
    inference(demod,[status(thm)],['38','48','55','66','67','68','69','70','71','72','73','74','97'])).

thf('99',plain,
    ( ( sk_B != k1_xboole_0 )
    | ( sk_A = k1_xboole_0 ) ),
    inference(split,[status(esa)],['34'])).

thf('100',plain,(
    sk_B != k1_xboole_0 ),
    inference('sat_resolution*',[status(thm)],['98','99'])).

thf('101',plain,(
    sk_B != k1_xboole_0 ),
    inference(simpl_trail,[status(thm)],['35','100'])).

thf('102',plain,
    ( sk_A
    = ( k1_relat_1 @ sk_D ) ),
    inference('simplify_reflect-',[status(thm)],['33','101'])).

thf('103',plain,(
    ! [X15: $i,X16: $i] :
      ( ~ ( r1_tarski @ X15 @ ( k1_relat_1 @ X16 ) )
      | ( ( k1_relat_1 @ ( k7_relat_1 @ X16 @ X15 ) )
        = X15 )
      | ~ ( v1_relat_1 @ X16 ) ) ),
    inference(cnf,[status(esa)],[t91_relat_1])).

thf('104',plain,(
    ! [X0: $i] :
      ( ~ ( r1_tarski @ X0 @ sk_A )
      | ~ ( v1_relat_1 @ sk_D )
      | ( ( k1_relat_1 @ ( k7_relat_1 @ sk_D @ X0 ) )
        = X0 ) ) ),
    inference('sup-',[status(thm)],['102','103'])).

thf('105',plain,(
    m1_subset_1 @ sk_D @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_A @ sk_B ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('106',plain,(
    ! [X18: $i,X19: $i,X20: $i] :
      ( ( v1_relat_1 @ X18 )
      | ~ ( m1_subset_1 @ X18 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X19 @ X20 ) ) ) ) ),
    inference(cnf,[status(esa)],[cc1_relset_1])).

thf('107',plain,(
    v1_relat_1 @ sk_D ),
    inference('sup-',[status(thm)],['105','106'])).

thf('108',plain,(
    ! [X0: $i] :
      ( ~ ( r1_tarski @ X0 @ sk_A )
      | ( ( k1_relat_1 @ ( k7_relat_1 @ sk_D @ X0 ) )
        = X0 ) ) ),
    inference(demod,[status(thm)],['104','107'])).

thf('109',plain,
    ( ( k1_relat_1 @ ( k7_relat_1 @ sk_D @ sk_C ) )
    = sk_C ),
    inference('sup-',[status(thm)],['14','108'])).

thf('110',plain,(
    m1_subset_1 @ sk_D @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_A @ sk_B ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('111',plain,(
    ! [X35: $i,X36: $i,X37: $i,X38: $i] :
      ( ~ ( m1_subset_1 @ X35 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X36 @ X37 ) ) )
      | ~ ( v1_funct_1 @ X35 )
      | ( m1_subset_1 @ ( k2_partfun1 @ X36 @ X37 @ X35 @ X38 ) @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X36 @ X37 ) ) ) ) ),
    inference(cnf,[status(esa)],[dt_k2_partfun1])).

thf('112',plain,(
    ! [X0: $i] :
      ( ( m1_subset_1 @ ( k2_partfun1 @ sk_A @ sk_B @ sk_D @ X0 ) @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_A @ sk_B ) ) )
      | ~ ( v1_funct_1 @ sk_D ) ) ),
    inference('sup-',[status(thm)],['110','111'])).

thf('113',plain,(
    v1_funct_1 @ sk_D ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('114',plain,(
    ! [X0: $i] :
      ( m1_subset_1 @ ( k2_partfun1 @ sk_A @ sk_B @ sk_D @ X0 ) @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_A @ sk_B ) ) ) ),
    inference(demod,[status(thm)],['112','113'])).

thf('115',plain,(
    ! [X0: $i] :
      ( ( k2_partfun1 @ sk_A @ sk_B @ sk_D @ X0 )
      = ( k7_relat_1 @ sk_D @ X0 ) ) ),
    inference(demod,[status(thm)],['9','10'])).

thf('116',plain,(
    ! [X0: $i] :
      ( m1_subset_1 @ ( k7_relat_1 @ sk_D @ X0 ) @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_A @ sk_B ) ) ) ),
    inference(demod,[status(thm)],['114','115'])).

thf(cc2_relset_1,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) )
     => ( ( v4_relat_1 @ C @ A )
        & ( v5_relat_1 @ C @ B ) ) ) )).

thf('117',plain,(
    ! [X21: $i,X22: $i,X23: $i] :
      ( ( v5_relat_1 @ X21 @ X23 )
      | ~ ( m1_subset_1 @ X21 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X22 @ X23 ) ) ) ) ),
    inference(cnf,[status(esa)],[cc2_relset_1])).

thf('118',plain,(
    ! [X0: $i] :
      ( v5_relat_1 @ ( k7_relat_1 @ sk_D @ X0 ) @ sk_B ) ),
    inference('sup-',[status(thm)],['116','117'])).

thf(d19_relat_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( v1_relat_1 @ B )
     => ( ( v5_relat_1 @ B @ A )
      <=> ( r1_tarski @ ( k2_relat_1 @ B ) @ A ) ) ) )).

thf('119',plain,(
    ! [X10: $i,X11: $i] :
      ( ~ ( v5_relat_1 @ X10 @ X11 )
      | ( r1_tarski @ ( k2_relat_1 @ X10 ) @ X11 )
      | ~ ( v1_relat_1 @ X10 ) ) ),
    inference(cnf,[status(esa)],[d19_relat_1])).

thf('120',plain,(
    ! [X0: $i] :
      ( ~ ( v1_relat_1 @ ( k7_relat_1 @ sk_D @ X0 ) )
      | ( r1_tarski @ ( k2_relat_1 @ ( k7_relat_1 @ sk_D @ X0 ) ) @ sk_B ) ) ),
    inference('sup-',[status(thm)],['118','119'])).

thf('121',plain,(
    ! [X0: $i] :
      ( m1_subset_1 @ ( k7_relat_1 @ sk_D @ X0 ) @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_A @ sk_B ) ) ) ),
    inference(demod,[status(thm)],['114','115'])).

thf('122',plain,(
    ! [X18: $i,X19: $i,X20: $i] :
      ( ( v1_relat_1 @ X18 )
      | ~ ( m1_subset_1 @ X18 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X19 @ X20 ) ) ) ) ),
    inference(cnf,[status(esa)],[cc1_relset_1])).

thf('123',plain,(
    ! [X0: $i] :
      ( v1_relat_1 @ ( k7_relat_1 @ sk_D @ X0 ) ) ),
    inference('sup-',[status(thm)],['121','122'])).

thf('124',plain,(
    ! [X0: $i] :
      ( r1_tarski @ ( k2_relat_1 @ ( k7_relat_1 @ sk_D @ X0 ) ) @ sk_B ) ),
    inference(demod,[status(thm)],['120','123'])).

thf(t4_funct_2,axiom,(
    ! [A: $i,B: $i] :
      ( ( ( v1_relat_1 @ B )
        & ( v1_funct_1 @ B ) )
     => ( ( r1_tarski @ ( k2_relat_1 @ B ) @ A )
       => ( ( v1_funct_1 @ B )
          & ( v1_funct_2 @ B @ ( k1_relat_1 @ B ) @ A )
          & ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ ( k1_relat_1 @ B ) @ A ) ) ) ) ) ) )).

thf('125',plain,(
    ! [X43: $i,X44: $i] :
      ( ~ ( r1_tarski @ ( k2_relat_1 @ X43 ) @ X44 )
      | ( v1_funct_2 @ X43 @ ( k1_relat_1 @ X43 ) @ X44 )
      | ~ ( v1_funct_1 @ X43 )
      | ~ ( v1_relat_1 @ X43 ) ) ),
    inference(cnf,[status(esa)],[t4_funct_2])).

thf('126',plain,(
    ! [X0: $i] :
      ( ~ ( v1_relat_1 @ ( k7_relat_1 @ sk_D @ X0 ) )
      | ~ ( v1_funct_1 @ ( k7_relat_1 @ sk_D @ X0 ) )
      | ( v1_funct_2 @ ( k7_relat_1 @ sk_D @ X0 ) @ ( k1_relat_1 @ ( k7_relat_1 @ sk_D @ X0 ) ) @ sk_B ) ) ),
    inference('sup-',[status(thm)],['124','125'])).

thf('127',plain,(
    ! [X0: $i] :
      ( v1_relat_1 @ ( k7_relat_1 @ sk_D @ X0 ) ) ),
    inference('sup-',[status(thm)],['121','122'])).

thf('128',plain,(
    ! [X0: $i] :
      ( v1_funct_1 @ ( k2_partfun1 @ sk_A @ sk_B @ sk_D @ X0 ) ) ),
    inference(demod,[status(thm)],['3','4'])).

thf('129',plain,(
    ! [X0: $i] :
      ( ( k2_partfun1 @ sk_A @ sk_B @ sk_D @ X0 )
      = ( k7_relat_1 @ sk_D @ X0 ) ) ),
    inference(demod,[status(thm)],['9','10'])).

thf('130',plain,(
    ! [X0: $i] :
      ( v1_funct_1 @ ( k7_relat_1 @ sk_D @ X0 ) ) ),
    inference(demod,[status(thm)],['128','129'])).

thf('131',plain,(
    ! [X0: $i] :
      ( v1_funct_2 @ ( k7_relat_1 @ sk_D @ X0 ) @ ( k1_relat_1 @ ( k7_relat_1 @ sk_D @ X0 ) ) @ sk_B ) ),
    inference(demod,[status(thm)],['126','127','130'])).

thf('132',plain,(
    v1_funct_2 @ ( k7_relat_1 @ sk_D @ sk_C ) @ sk_C @ sk_B ),
    inference('sup+',[status(thm)],['109','131'])).

thf('133',plain,(
    ~ ( m1_subset_1 @ ( k7_relat_1 @ sk_D @ sk_C ) @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_C @ sk_B ) ) ) ),
    inference(demod,[status(thm)],['13','132'])).

thf('134',plain,
    ( ( k1_relat_1 @ ( k7_relat_1 @ sk_D @ sk_C ) )
    = sk_C ),
    inference('sup-',[status(thm)],['14','108'])).

thf('135',plain,(
    ! [X0: $i] :
      ( r1_tarski @ ( k2_relat_1 @ ( k7_relat_1 @ sk_D @ X0 ) ) @ sk_B ) ),
    inference(demod,[status(thm)],['120','123'])).

thf('136',plain,(
    ! [X43: $i,X44: $i] :
      ( ~ ( r1_tarski @ ( k2_relat_1 @ X43 ) @ X44 )
      | ( m1_subset_1 @ X43 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ ( k1_relat_1 @ X43 ) @ X44 ) ) )
      | ~ ( v1_funct_1 @ X43 )
      | ~ ( v1_relat_1 @ X43 ) ) ),
    inference(cnf,[status(esa)],[t4_funct_2])).

thf('137',plain,(
    ! [X0: $i] :
      ( ~ ( v1_relat_1 @ ( k7_relat_1 @ sk_D @ X0 ) )
      | ~ ( v1_funct_1 @ ( k7_relat_1 @ sk_D @ X0 ) )
      | ( m1_subset_1 @ ( k7_relat_1 @ sk_D @ X0 ) @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ ( k1_relat_1 @ ( k7_relat_1 @ sk_D @ X0 ) ) @ sk_B ) ) ) ) ),
    inference('sup-',[status(thm)],['135','136'])).

thf('138',plain,(
    ! [X0: $i] :
      ( v1_relat_1 @ ( k7_relat_1 @ sk_D @ X0 ) ) ),
    inference('sup-',[status(thm)],['121','122'])).

thf('139',plain,(
    ! [X0: $i] :
      ( v1_funct_1 @ ( k7_relat_1 @ sk_D @ X0 ) ) ),
    inference(demod,[status(thm)],['128','129'])).

thf('140',plain,(
    ! [X0: $i] :
      ( m1_subset_1 @ ( k7_relat_1 @ sk_D @ X0 ) @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ ( k1_relat_1 @ ( k7_relat_1 @ sk_D @ X0 ) ) @ sk_B ) ) ) ),
    inference(demod,[status(thm)],['137','138','139'])).

thf('141',plain,(
    m1_subset_1 @ ( k7_relat_1 @ sk_D @ sk_C ) @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_C @ sk_B ) ) ),
    inference('sup+',[status(thm)],['134','140'])).

thf('142',plain,(
    $false ),
    inference(demod,[status(thm)],['133','141'])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.12/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.12/0.13  % Command    : run_portfolio.sh /export/starexec/sandbox/benchmark/theBenchmark.p /export/starexec/sandbox/tmp/tmp.akH8w9QxNn
% 0.14/0.34  % Computer   : n024.cluster.edu
% 0.14/0.34  % Model      : x86_64 x86_64
% 0.14/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.14/0.34  % Memory     : 8042.1875MB
% 0.14/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.14/0.34  % CPULimit   : 60
% 0.14/0.34  % DateTime   : Tue Dec  1 12:34:21 EST 2020
% 0.14/0.35  % CPUTime    : 
% 0.14/0.35  % Running portfolio for 600 s
% 0.14/0.35  % File         : /export/starexec/sandbox/benchmark/theBenchmark.p
% 0.14/0.35  % Number of cores: 8
% 0.14/0.35  % Python version: Python 3.6.8
% 0.14/0.35  % Running in FO mode
% 12.72/12.91  % Running /export/starexec/sandbox/solver/bin/fo/fo7.sh for 78
% 12.72/12.91  % Solved by: fo/fo7.sh
% 12.72/12.91  To remain in the chosen logic fragment, unification with booleans has been disabled.
% 12.72/12.91  % done 10740 iterations in 12.453s
% 12.72/12.91  % SZS status Theorem for '/export/starexec/sandbox/benchmark/theBenchmark.p'
% 12.72/12.91  % SZS output start Refutation
% 12.72/12.91  thf(k1_relat_1_type, type, k1_relat_1: $i > $i).
% 12.72/12.91  thf(v1_xboole_0_type, type, v1_xboole_0: $i > $o).
% 12.72/12.91  thf(v1_funct_2_type, type, v1_funct_2: $i > $i > $i > $o).
% 12.72/12.91  thf(k1_xboole_0_type, type, k1_xboole_0: $i).
% 12.72/12.91  thf(sk_A_type, type, sk_A: $i).
% 12.72/12.91  thf(sk_B_type, type, sk_B: $i).
% 12.72/12.91  thf(zip_tseitin_1_type, type, zip_tseitin_1: $i > $i > $i > $o).
% 12.72/12.91  thf(zip_tseitin_0_type, type, zip_tseitin_0: $i > $i > $o).
% 12.72/12.91  thf(v4_relat_1_type, type, v4_relat_1: $i > $i > $o).
% 12.72/12.91  thf(k7_relat_1_type, type, k7_relat_1: $i > $i > $i).
% 12.72/12.91  thf(k1_relset_1_type, type, k1_relset_1: $i > $i > $i > $i).
% 12.72/12.91  thf(m1_subset_1_type, type, m1_subset_1: $i > $i > $o).
% 12.72/12.91  thf(v1_funct_1_type, type, v1_funct_1: $i > $o).
% 12.72/12.91  thf(k2_relat_1_type, type, k2_relat_1: $i > $i).
% 12.72/12.91  thf(r1_tarski_type, type, r1_tarski: $i > $i > $o).
% 12.72/12.91  thf(v1_relat_1_type, type, v1_relat_1: $i > $o).
% 12.72/12.91  thf(sk_C_type, type, sk_C: $i).
% 12.72/12.91  thf(k2_partfun1_type, type, k2_partfun1: $i > $i > $i > $i > $i).
% 12.72/12.91  thf(k2_zfmisc_1_type, type, k2_zfmisc_1: $i > $i > $i).
% 12.72/12.91  thf(sk_D_type, type, sk_D: $i).
% 12.72/12.91  thf(v5_relat_1_type, type, v5_relat_1: $i > $i > $o).
% 12.72/12.91  thf(k1_zfmisc_1_type, type, k1_zfmisc_1: $i > $i).
% 12.72/12.91  thf(t38_funct_2, conjecture,
% 12.72/12.91    (![A:$i,B:$i,C:$i,D:$i]:
% 12.72/12.91     ( ( ( v1_funct_1 @ D ) & ( v1_funct_2 @ D @ A @ B ) & 
% 12.72/12.91         ( m1_subset_1 @ D @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) ) =>
% 12.72/12.91       ( ( r1_tarski @ C @ A ) =>
% 12.72/12.91         ( ( ( ( B ) = ( k1_xboole_0 ) ) & ( ( A ) != ( k1_xboole_0 ) ) ) | 
% 12.72/12.91           ( ( v1_funct_1 @ ( k2_partfun1 @ A @ B @ D @ C ) ) & 
% 12.72/12.91             ( v1_funct_2 @ ( k2_partfun1 @ A @ B @ D @ C ) @ C @ B ) & 
% 12.72/12.91             ( m1_subset_1 @
% 12.72/12.91               ( k2_partfun1 @ A @ B @ D @ C ) @ 
% 12.72/12.91               ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ C @ B ) ) ) ) ) ) ))).
% 12.72/12.91  thf(zf_stmt_0, negated_conjecture,
% 12.72/12.91    (~( ![A:$i,B:$i,C:$i,D:$i]:
% 12.72/12.91        ( ( ( v1_funct_1 @ D ) & ( v1_funct_2 @ D @ A @ B ) & 
% 12.72/12.91            ( m1_subset_1 @ D @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) ) =>
% 12.72/12.91          ( ( r1_tarski @ C @ A ) =>
% 12.72/12.91            ( ( ( ( B ) = ( k1_xboole_0 ) ) & ( ( A ) != ( k1_xboole_0 ) ) ) | 
% 12.72/12.91              ( ( v1_funct_1 @ ( k2_partfun1 @ A @ B @ D @ C ) ) & 
% 12.72/12.91                ( v1_funct_2 @ ( k2_partfun1 @ A @ B @ D @ C ) @ C @ B ) & 
% 12.72/12.91                ( m1_subset_1 @
% 12.72/12.91                  ( k2_partfun1 @ A @ B @ D @ C ) @ 
% 12.72/12.91                  ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ C @ B ) ) ) ) ) ) ) )),
% 12.72/12.91    inference('cnf.neg', [status(esa)], [t38_funct_2])).
% 12.72/12.91  thf('0', plain,
% 12.72/12.91      ((~ (v1_funct_1 @ (k2_partfun1 @ sk_A @ sk_B @ sk_D @ sk_C))
% 12.72/12.91        | ~ (v1_funct_2 @ (k2_partfun1 @ sk_A @ sk_B @ sk_D @ sk_C) @ sk_C @ 
% 12.72/12.91             sk_B)
% 12.72/12.91        | ~ (m1_subset_1 @ (k2_partfun1 @ sk_A @ sk_B @ sk_D @ sk_C) @ 
% 12.72/12.91             (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_C @ sk_B))))),
% 12.72/12.91      inference('cnf', [status(esa)], [zf_stmt_0])).
% 12.72/12.91  thf('1', plain,
% 12.72/12.91      ((m1_subset_1 @ sk_D @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_A @ sk_B)))),
% 12.72/12.91      inference('cnf', [status(esa)], [zf_stmt_0])).
% 12.72/12.91  thf(dt_k2_partfun1, axiom,
% 12.72/12.91    (![A:$i,B:$i,C:$i,D:$i]:
% 12.72/12.91     ( ( ( v1_funct_1 @ C ) & 
% 12.72/12.91         ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) ) =>
% 12.72/12.91       ( ( v1_funct_1 @ ( k2_partfun1 @ A @ B @ C @ D ) ) & 
% 12.72/12.91         ( m1_subset_1 @
% 12.72/12.91           ( k2_partfun1 @ A @ B @ C @ D ) @ 
% 12.72/12.91           ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) ) ))).
% 12.72/12.91  thf('2', plain,
% 12.72/12.91      (![X35 : $i, X36 : $i, X37 : $i, X38 : $i]:
% 12.72/12.91         (~ (m1_subset_1 @ X35 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X36 @ X37)))
% 12.72/12.91          | ~ (v1_funct_1 @ X35)
% 12.72/12.91          | (v1_funct_1 @ (k2_partfun1 @ X36 @ X37 @ X35 @ X38)))),
% 12.72/12.91      inference('cnf', [status(esa)], [dt_k2_partfun1])).
% 12.72/12.91  thf('3', plain,
% 12.72/12.91      (![X0 : $i]:
% 12.72/12.91         ((v1_funct_1 @ (k2_partfun1 @ sk_A @ sk_B @ sk_D @ X0))
% 12.72/12.91          | ~ (v1_funct_1 @ sk_D))),
% 12.72/12.91      inference('sup-', [status(thm)], ['1', '2'])).
% 12.72/12.91  thf('4', plain, ((v1_funct_1 @ sk_D)),
% 12.72/12.91      inference('cnf', [status(esa)], [zf_stmt_0])).
% 12.72/12.91  thf('5', plain,
% 12.72/12.91      (![X0 : $i]: (v1_funct_1 @ (k2_partfun1 @ sk_A @ sk_B @ sk_D @ X0))),
% 12.72/12.91      inference('demod', [status(thm)], ['3', '4'])).
% 12.72/12.91  thf('6', plain,
% 12.72/12.91      ((~ (v1_funct_2 @ (k2_partfun1 @ sk_A @ sk_B @ sk_D @ sk_C) @ sk_C @ sk_B)
% 12.72/12.91        | ~ (m1_subset_1 @ (k2_partfun1 @ sk_A @ sk_B @ sk_D @ sk_C) @ 
% 12.72/12.91             (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_C @ sk_B))))),
% 12.72/12.91      inference('demod', [status(thm)], ['0', '5'])).
% 12.72/12.91  thf('7', plain,
% 12.72/12.91      ((m1_subset_1 @ sk_D @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_A @ sk_B)))),
% 12.72/12.91      inference('cnf', [status(esa)], [zf_stmt_0])).
% 12.72/12.91  thf(redefinition_k2_partfun1, axiom,
% 12.72/12.91    (![A:$i,B:$i,C:$i,D:$i]:
% 12.72/12.91     ( ( ( v1_funct_1 @ C ) & 
% 12.72/12.91         ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) ) =>
% 12.72/12.91       ( ( k2_partfun1 @ A @ B @ C @ D ) = ( k7_relat_1 @ C @ D ) ) ))).
% 12.72/12.91  thf('8', plain,
% 12.72/12.91      (![X39 : $i, X40 : $i, X41 : $i, X42 : $i]:
% 12.72/12.91         (~ (m1_subset_1 @ X39 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X40 @ X41)))
% 12.72/12.91          | ~ (v1_funct_1 @ X39)
% 12.72/12.91          | ((k2_partfun1 @ X40 @ X41 @ X39 @ X42) = (k7_relat_1 @ X39 @ X42)))),
% 12.72/12.91      inference('cnf', [status(esa)], [redefinition_k2_partfun1])).
% 12.72/12.91  thf('9', plain,
% 12.72/12.91      (![X0 : $i]:
% 12.72/12.91         (((k2_partfun1 @ sk_A @ sk_B @ sk_D @ X0) = (k7_relat_1 @ sk_D @ X0))
% 12.72/12.91          | ~ (v1_funct_1 @ sk_D))),
% 12.72/12.91      inference('sup-', [status(thm)], ['7', '8'])).
% 12.72/12.91  thf('10', plain, ((v1_funct_1 @ sk_D)),
% 12.72/12.91      inference('cnf', [status(esa)], [zf_stmt_0])).
% 12.72/12.91  thf('11', plain,
% 12.72/12.91      (![X0 : $i]:
% 12.72/12.91         ((k2_partfun1 @ sk_A @ sk_B @ sk_D @ X0) = (k7_relat_1 @ sk_D @ X0))),
% 12.72/12.91      inference('demod', [status(thm)], ['9', '10'])).
% 12.72/12.91  thf('12', plain,
% 12.72/12.91      (![X0 : $i]:
% 12.72/12.91         ((k2_partfun1 @ sk_A @ sk_B @ sk_D @ X0) = (k7_relat_1 @ sk_D @ X0))),
% 12.72/12.91      inference('demod', [status(thm)], ['9', '10'])).
% 12.72/12.91  thf('13', plain,
% 12.72/12.91      ((~ (v1_funct_2 @ (k7_relat_1 @ sk_D @ sk_C) @ sk_C @ sk_B)
% 12.72/12.91        | ~ (m1_subset_1 @ (k7_relat_1 @ sk_D @ sk_C) @ 
% 12.72/12.91             (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_C @ sk_B))))),
% 12.72/12.91      inference('demod', [status(thm)], ['6', '11', '12'])).
% 12.72/12.91  thf('14', plain, ((r1_tarski @ sk_C @ sk_A)),
% 12.72/12.91      inference('cnf', [status(esa)], [zf_stmt_0])).
% 12.72/12.91  thf(d1_funct_2, axiom,
% 12.72/12.91    (![A:$i,B:$i,C:$i]:
% 12.72/12.91     ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) =>
% 12.72/12.91       ( ( ( ( B ) = ( k1_xboole_0 ) ) =>
% 12.72/12.91           ( ( ( v1_funct_2 @ C @ A @ B ) <=> ( ( C ) = ( k1_xboole_0 ) ) ) | 
% 12.72/12.91             ( ( A ) = ( k1_xboole_0 ) ) ) ) & 
% 12.72/12.91         ( ( ( ( B ) = ( k1_xboole_0 ) ) => ( ( A ) = ( k1_xboole_0 ) ) ) =>
% 12.72/12.91           ( ( v1_funct_2 @ C @ A @ B ) <=>
% 12.72/12.91             ( ( A ) = ( k1_relset_1 @ A @ B @ C ) ) ) ) ) ))).
% 12.72/12.91  thf(zf_stmt_1, axiom,
% 12.72/12.91    (![B:$i,A:$i]:
% 12.72/12.91     ( ( ( ( B ) = ( k1_xboole_0 ) ) => ( ( A ) = ( k1_xboole_0 ) ) ) =>
% 12.72/12.91       ( zip_tseitin_0 @ B @ A ) ))).
% 12.72/12.91  thf('15', plain,
% 12.72/12.91      (![X27 : $i, X28 : $i]:
% 12.72/12.91         ((zip_tseitin_0 @ X27 @ X28) | ((X27) = (k1_xboole_0)))),
% 12.72/12.91      inference('cnf', [status(esa)], [zf_stmt_1])).
% 12.72/12.91  thf(t2_xboole_1, axiom, (![A:$i]: ( r1_tarski @ k1_xboole_0 @ A ))).
% 12.72/12.91  thf('16', plain, (![X3 : $i]: (r1_tarski @ k1_xboole_0 @ X3)),
% 12.72/12.91      inference('cnf', [status(esa)], [t2_xboole_1])).
% 12.72/12.91  thf('17', plain,
% 12.72/12.91      (![X0 : $i, X1 : $i, X2 : $i]:
% 12.72/12.91         ((r1_tarski @ X0 @ X1) | (zip_tseitin_0 @ X0 @ X2))),
% 12.72/12.91      inference('sup+', [status(thm)], ['15', '16'])).
% 12.72/12.91  thf('18', plain,
% 12.72/12.91      ((m1_subset_1 @ sk_D @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_A @ sk_B)))),
% 12.72/12.91      inference('cnf', [status(esa)], [zf_stmt_0])).
% 12.72/12.91  thf(zf_stmt_2, type, zip_tseitin_1 : $i > $i > $i > $o).
% 12.72/12.91  thf(zf_stmt_3, axiom,
% 12.72/12.91    (![C:$i,B:$i,A:$i]:
% 12.72/12.91     ( ( zip_tseitin_1 @ C @ B @ A ) =>
% 12.72/12.91       ( ( v1_funct_2 @ C @ A @ B ) <=> ( ( A ) = ( k1_relset_1 @ A @ B @ C ) ) ) ))).
% 12.72/12.91  thf(zf_stmt_4, type, zip_tseitin_0 : $i > $i > $o).
% 12.72/12.91  thf(zf_stmt_5, axiom,
% 12.72/12.91    (![A:$i,B:$i,C:$i]:
% 12.72/12.91     ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) =>
% 12.72/12.91       ( ( ( zip_tseitin_0 @ B @ A ) => ( zip_tseitin_1 @ C @ B @ A ) ) & 
% 12.72/12.91         ( ( ( B ) = ( k1_xboole_0 ) ) =>
% 12.72/12.91           ( ( ( A ) = ( k1_xboole_0 ) ) | 
% 12.72/12.91             ( ( v1_funct_2 @ C @ A @ B ) <=> ( ( C ) = ( k1_xboole_0 ) ) ) ) ) ) ))).
% 12.72/12.91  thf('19', plain,
% 12.72/12.91      (![X32 : $i, X33 : $i, X34 : $i]:
% 12.72/12.91         (~ (zip_tseitin_0 @ X32 @ X33)
% 12.72/12.91          | (zip_tseitin_1 @ X34 @ X32 @ X33)
% 12.72/12.91          | ~ (m1_subset_1 @ X34 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X33 @ X32))))),
% 12.72/12.91      inference('cnf', [status(esa)], [zf_stmt_5])).
% 12.72/12.91  thf('20', plain,
% 12.72/12.91      (((zip_tseitin_1 @ sk_D @ sk_B @ sk_A) | ~ (zip_tseitin_0 @ sk_B @ sk_A))),
% 12.72/12.91      inference('sup-', [status(thm)], ['18', '19'])).
% 12.72/12.91  thf('21', plain,
% 12.72/12.91      (![X0 : $i]:
% 12.72/12.91         ((r1_tarski @ sk_B @ X0) | (zip_tseitin_1 @ sk_D @ sk_B @ sk_A))),
% 12.72/12.91      inference('sup-', [status(thm)], ['17', '20'])).
% 12.72/12.91  thf('22', plain, ((v1_funct_2 @ sk_D @ sk_A @ sk_B)),
% 12.72/12.91      inference('cnf', [status(esa)], [zf_stmt_0])).
% 12.72/12.91  thf('23', plain,
% 12.72/12.91      (![X29 : $i, X30 : $i, X31 : $i]:
% 12.72/12.91         (~ (v1_funct_2 @ X31 @ X29 @ X30)
% 12.72/12.91          | ((X29) = (k1_relset_1 @ X29 @ X30 @ X31))
% 12.72/12.91          | ~ (zip_tseitin_1 @ X31 @ X30 @ X29))),
% 12.72/12.91      inference('cnf', [status(esa)], [zf_stmt_3])).
% 12.72/12.91  thf('24', plain,
% 12.72/12.91      ((~ (zip_tseitin_1 @ sk_D @ sk_B @ sk_A)
% 12.72/12.91        | ((sk_A) = (k1_relset_1 @ sk_A @ sk_B @ sk_D)))),
% 12.72/12.91      inference('sup-', [status(thm)], ['22', '23'])).
% 12.72/12.91  thf('25', plain,
% 12.72/12.91      ((m1_subset_1 @ sk_D @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_A @ sk_B)))),
% 12.72/12.91      inference('cnf', [status(esa)], [zf_stmt_0])).
% 12.72/12.91  thf(redefinition_k1_relset_1, axiom,
% 12.72/12.91    (![A:$i,B:$i,C:$i]:
% 12.72/12.91     ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) =>
% 12.72/12.91       ( ( k1_relset_1 @ A @ B @ C ) = ( k1_relat_1 @ C ) ) ))).
% 12.72/12.91  thf('26', plain,
% 12.72/12.91      (![X24 : $i, X25 : $i, X26 : $i]:
% 12.72/12.91         (((k1_relset_1 @ X25 @ X26 @ X24) = (k1_relat_1 @ X24))
% 12.72/12.91          | ~ (m1_subset_1 @ X24 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X25 @ X26))))),
% 12.72/12.91      inference('cnf', [status(esa)], [redefinition_k1_relset_1])).
% 12.72/12.91  thf('27', plain,
% 12.72/12.91      (((k1_relset_1 @ sk_A @ sk_B @ sk_D) = (k1_relat_1 @ sk_D))),
% 12.72/12.91      inference('sup-', [status(thm)], ['25', '26'])).
% 12.72/12.91  thf('28', plain,
% 12.72/12.91      ((~ (zip_tseitin_1 @ sk_D @ sk_B @ sk_A) | ((sk_A) = (k1_relat_1 @ sk_D)))),
% 12.72/12.91      inference('demod', [status(thm)], ['24', '27'])).
% 12.72/12.91  thf('29', plain,
% 12.72/12.91      (![X0 : $i]: ((r1_tarski @ sk_B @ X0) | ((sk_A) = (k1_relat_1 @ sk_D)))),
% 12.72/12.91      inference('sup-', [status(thm)], ['21', '28'])).
% 12.72/12.91  thf('30', plain, (![X3 : $i]: (r1_tarski @ k1_xboole_0 @ X3)),
% 12.72/12.91      inference('cnf', [status(esa)], [t2_xboole_1])).
% 12.72/12.91  thf(d10_xboole_0, axiom,
% 12.72/12.91    (![A:$i,B:$i]:
% 12.72/12.91     ( ( ( A ) = ( B ) ) <=> ( ( r1_tarski @ A @ B ) & ( r1_tarski @ B @ A ) ) ))).
% 12.72/12.91  thf('31', plain,
% 12.72/12.91      (![X0 : $i, X2 : $i]:
% 12.72/12.91         (((X0) = (X2)) | ~ (r1_tarski @ X2 @ X0) | ~ (r1_tarski @ X0 @ X2))),
% 12.72/12.91      inference('cnf', [status(esa)], [d10_xboole_0])).
% 12.72/12.91  thf('32', plain,
% 12.72/12.91      (![X0 : $i]: (~ (r1_tarski @ X0 @ k1_xboole_0) | ((X0) = (k1_xboole_0)))),
% 12.72/12.91      inference('sup-', [status(thm)], ['30', '31'])).
% 12.72/12.91  thf('33', plain,
% 12.72/12.91      ((((sk_A) = (k1_relat_1 @ sk_D)) | ((sk_B) = (k1_xboole_0)))),
% 12.72/12.91      inference('sup-', [status(thm)], ['29', '32'])).
% 12.72/12.91  thf('34', plain, ((((sk_B) != (k1_xboole_0)) | ((sk_A) = (k1_xboole_0)))),
% 12.72/12.91      inference('cnf', [status(esa)], [zf_stmt_0])).
% 12.72/12.91  thf('35', plain,
% 12.72/12.91      ((((sk_B) != (k1_xboole_0))) <= (~ (((sk_B) = (k1_xboole_0))))),
% 12.72/12.91      inference('split', [status(esa)], ['34'])).
% 12.72/12.91  thf('36', plain,
% 12.72/12.91      ((((sk_A) = (k1_xboole_0))) <= ((((sk_A) = (k1_xboole_0))))),
% 12.72/12.91      inference('split', [status(esa)], ['34'])).
% 12.72/12.91  thf('37', plain,
% 12.72/12.91      ((~ (v1_funct_2 @ (k2_partfun1 @ sk_A @ sk_B @ sk_D @ sk_C) @ sk_C @ sk_B)
% 12.72/12.91        | ~ (m1_subset_1 @ (k2_partfun1 @ sk_A @ sk_B @ sk_D @ sk_C) @ 
% 12.72/12.91             (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_C @ sk_B))))),
% 12.72/12.91      inference('demod', [status(thm)], ['0', '5'])).
% 12.72/12.91  thf('38', plain,
% 12.72/12.91      (((~ (m1_subset_1 @ (k2_partfun1 @ k1_xboole_0 @ sk_B @ sk_D @ sk_C) @ 
% 12.72/12.91            (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_C @ sk_B)))
% 12.72/12.91         | ~ (v1_funct_2 @ (k2_partfun1 @ sk_A @ sk_B @ sk_D @ sk_C) @ sk_C @ 
% 12.72/12.91              sk_B)))
% 12.72/12.91         <= ((((sk_A) = (k1_xboole_0))))),
% 12.72/12.91      inference('sup-', [status(thm)], ['36', '37'])).
% 12.72/12.91  thf(t113_zfmisc_1, axiom,
% 12.72/12.91    (![A:$i,B:$i]:
% 12.72/12.91     ( ( ( k2_zfmisc_1 @ A @ B ) = ( k1_xboole_0 ) ) <=>
% 12.72/12.91       ( ( ( A ) = ( k1_xboole_0 ) ) | ( ( B ) = ( k1_xboole_0 ) ) ) ))).
% 12.72/12.91  thf('39', plain,
% 12.72/12.91      (![X5 : $i, X6 : $i]:
% 12.72/12.91         (((k2_zfmisc_1 @ X5 @ X6) = (k1_xboole_0)) | ((X5) != (k1_xboole_0)))),
% 12.72/12.91      inference('cnf', [status(esa)], [t113_zfmisc_1])).
% 12.72/12.91  thf('40', plain,
% 12.72/12.91      (![X6 : $i]: ((k2_zfmisc_1 @ k1_xboole_0 @ X6) = (k1_xboole_0))),
% 12.72/12.91      inference('simplify', [status(thm)], ['39'])).
% 12.72/12.91  thf('41', plain,
% 12.72/12.91      ((((sk_A) = (k1_xboole_0))) <= ((((sk_A) = (k1_xboole_0))))),
% 12.72/12.91      inference('split', [status(esa)], ['34'])).
% 12.72/12.91  thf('42', plain,
% 12.72/12.91      ((m1_subset_1 @ sk_D @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_A @ sk_B)))),
% 12.72/12.91      inference('cnf', [status(esa)], [zf_stmt_0])).
% 12.72/12.91  thf('43', plain,
% 12.72/12.91      (((m1_subset_1 @ sk_D @ 
% 12.72/12.91         (k1_zfmisc_1 @ (k2_zfmisc_1 @ k1_xboole_0 @ sk_B))))
% 12.72/12.91         <= ((((sk_A) = (k1_xboole_0))))),
% 12.72/12.91      inference('sup+', [status(thm)], ['41', '42'])).
% 12.72/12.91  thf('44', plain,
% 12.72/12.91      (((m1_subset_1 @ sk_D @ (k1_zfmisc_1 @ k1_xboole_0)))
% 12.72/12.91         <= ((((sk_A) = (k1_xboole_0))))),
% 12.72/12.91      inference('sup+', [status(thm)], ['40', '43'])).
% 12.72/12.91  thf(t3_subset, axiom,
% 12.72/12.91    (![A:$i,B:$i]:
% 12.72/12.91     ( ( m1_subset_1 @ A @ ( k1_zfmisc_1 @ B ) ) <=> ( r1_tarski @ A @ B ) ))).
% 12.72/12.91  thf('45', plain,
% 12.72/12.91      (![X7 : $i, X8 : $i]:
% 12.72/12.91         ((r1_tarski @ X7 @ X8) | ~ (m1_subset_1 @ X7 @ (k1_zfmisc_1 @ X8)))),
% 12.72/12.91      inference('cnf', [status(esa)], [t3_subset])).
% 12.72/12.91  thf('46', plain,
% 12.72/12.91      (((r1_tarski @ sk_D @ k1_xboole_0)) <= ((((sk_A) = (k1_xboole_0))))),
% 12.72/12.91      inference('sup-', [status(thm)], ['44', '45'])).
% 12.72/12.91  thf('47', plain,
% 12.72/12.91      (![X0 : $i]: (~ (r1_tarski @ X0 @ k1_xboole_0) | ((X0) = (k1_xboole_0)))),
% 12.72/12.91      inference('sup-', [status(thm)], ['30', '31'])).
% 12.72/12.91  thf('48', plain,
% 12.72/12.91      ((((sk_D) = (k1_xboole_0))) <= ((((sk_A) = (k1_xboole_0))))),
% 12.72/12.91      inference('sup-', [status(thm)], ['46', '47'])).
% 12.72/12.91  thf('49', plain,
% 12.72/12.91      ((((sk_A) = (k1_xboole_0))) <= ((((sk_A) = (k1_xboole_0))))),
% 12.72/12.91      inference('split', [status(esa)], ['34'])).
% 12.72/12.91  thf('50', plain, ((r1_tarski @ sk_C @ sk_A)),
% 12.72/12.91      inference('cnf', [status(esa)], [zf_stmt_0])).
% 12.72/12.91  thf('51', plain,
% 12.72/12.91      (((r1_tarski @ sk_C @ k1_xboole_0)) <= ((((sk_A) = (k1_xboole_0))))),
% 12.72/12.91      inference('sup+', [status(thm)], ['49', '50'])).
% 12.72/12.91  thf('52', plain,
% 12.72/12.91      (![X0 : $i, X2 : $i]:
% 12.72/12.91         (((X0) = (X2)) | ~ (r1_tarski @ X2 @ X0) | ~ (r1_tarski @ X0 @ X2))),
% 12.72/12.91      inference('cnf', [status(esa)], [d10_xboole_0])).
% 12.72/12.91  thf('53', plain,
% 12.72/12.91      (((~ (r1_tarski @ k1_xboole_0 @ sk_C) | ((k1_xboole_0) = (sk_C))))
% 12.72/12.91         <= ((((sk_A) = (k1_xboole_0))))),
% 12.72/12.91      inference('sup-', [status(thm)], ['51', '52'])).
% 12.72/12.91  thf('54', plain, (![X3 : $i]: (r1_tarski @ k1_xboole_0 @ X3)),
% 12.72/12.91      inference('cnf', [status(esa)], [t2_xboole_1])).
% 12.72/12.91  thf('55', plain,
% 12.72/12.91      ((((k1_xboole_0) = (sk_C))) <= ((((sk_A) = (k1_xboole_0))))),
% 12.72/12.91      inference('demod', [status(thm)], ['53', '54'])).
% 12.72/12.91  thf(cc1_funct_1, axiom,
% 12.72/12.91    (![A:$i]: ( ( v1_xboole_0 @ A ) => ( v1_funct_1 @ A ) ))).
% 12.72/12.91  thf('56', plain, (![X17 : $i]: ((v1_funct_1 @ X17) | ~ (v1_xboole_0 @ X17))),
% 12.72/12.91      inference('cnf', [status(esa)], [cc1_funct_1])).
% 12.72/12.91  thf('57', plain, (![X3 : $i]: (r1_tarski @ k1_xboole_0 @ X3)),
% 12.72/12.91      inference('cnf', [status(esa)], [t2_xboole_1])).
% 12.72/12.91  thf('58', plain,
% 12.72/12.91      (![X7 : $i, X9 : $i]:
% 12.72/12.91         ((m1_subset_1 @ X7 @ (k1_zfmisc_1 @ X9)) | ~ (r1_tarski @ X7 @ X9))),
% 12.72/12.91      inference('cnf', [status(esa)], [t3_subset])).
% 12.72/12.91  thf('59', plain,
% 12.72/12.91      (![X0 : $i]: (m1_subset_1 @ k1_xboole_0 @ (k1_zfmisc_1 @ X0))),
% 12.72/12.91      inference('sup-', [status(thm)], ['57', '58'])).
% 12.72/12.91  thf('60', plain,
% 12.72/12.91      (![X39 : $i, X40 : $i, X41 : $i, X42 : $i]:
% 12.72/12.91         (~ (m1_subset_1 @ X39 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X40 @ X41)))
% 12.72/12.91          | ~ (v1_funct_1 @ X39)
% 12.72/12.91          | ((k2_partfun1 @ X40 @ X41 @ X39 @ X42) = (k7_relat_1 @ X39 @ X42)))),
% 12.72/12.91      inference('cnf', [status(esa)], [redefinition_k2_partfun1])).
% 12.72/12.91  thf('61', plain,
% 12.72/12.91      (![X0 : $i, X1 : $i, X2 : $i]:
% 12.72/12.91         (((k2_partfun1 @ X1 @ X0 @ k1_xboole_0 @ X2)
% 12.72/12.91            = (k7_relat_1 @ k1_xboole_0 @ X2))
% 12.72/12.91          | ~ (v1_funct_1 @ k1_xboole_0))),
% 12.72/12.91      inference('sup-', [status(thm)], ['59', '60'])).
% 12.72/12.91  thf(t111_relat_1, axiom,
% 12.72/12.91    (![A:$i]: ( ( k7_relat_1 @ k1_xboole_0 @ A ) = ( k1_xboole_0 ) ))).
% 12.72/12.91  thf('62', plain,
% 12.72/12.91      (![X14 : $i]: ((k7_relat_1 @ k1_xboole_0 @ X14) = (k1_xboole_0))),
% 12.72/12.91      inference('cnf', [status(esa)], [t111_relat_1])).
% 12.72/12.91  thf('63', plain,
% 12.72/12.91      (![X0 : $i, X1 : $i, X2 : $i]:
% 12.72/12.91         (((k2_partfun1 @ X1 @ X0 @ k1_xboole_0 @ X2) = (k1_xboole_0))
% 12.72/12.91          | ~ (v1_funct_1 @ k1_xboole_0))),
% 12.72/12.91      inference('demod', [status(thm)], ['61', '62'])).
% 12.72/12.91  thf('64', plain,
% 12.72/12.91      (![X0 : $i, X1 : $i, X2 : $i]:
% 12.72/12.91         (~ (v1_xboole_0 @ k1_xboole_0)
% 12.72/12.91          | ((k2_partfun1 @ X2 @ X1 @ k1_xboole_0 @ X0) = (k1_xboole_0)))),
% 12.72/12.91      inference('sup-', [status(thm)], ['56', '63'])).
% 12.72/12.91  thf(fc1_xboole_0, axiom, (v1_xboole_0 @ k1_xboole_0)).
% 12.72/12.91  thf('65', plain, ((v1_xboole_0 @ k1_xboole_0)),
% 12.72/12.91      inference('cnf', [status(esa)], [fc1_xboole_0])).
% 12.72/12.91  thf('66', plain,
% 12.72/12.91      (![X0 : $i, X1 : $i, X2 : $i]:
% 12.72/12.91         ((k2_partfun1 @ X2 @ X1 @ k1_xboole_0 @ X0) = (k1_xboole_0))),
% 12.72/12.91      inference('demod', [status(thm)], ['64', '65'])).
% 12.72/12.91  thf('67', plain,
% 12.72/12.91      ((((k1_xboole_0) = (sk_C))) <= ((((sk_A) = (k1_xboole_0))))),
% 12.72/12.91      inference('demod', [status(thm)], ['53', '54'])).
% 12.72/12.91  thf('68', plain,
% 12.72/12.91      (![X6 : $i]: ((k2_zfmisc_1 @ k1_xboole_0 @ X6) = (k1_xboole_0))),
% 12.72/12.91      inference('simplify', [status(thm)], ['39'])).
% 12.72/12.91  thf('69', plain,
% 12.72/12.91      (![X0 : $i]: (m1_subset_1 @ k1_xboole_0 @ (k1_zfmisc_1 @ X0))),
% 12.72/12.91      inference('sup-', [status(thm)], ['57', '58'])).
% 12.72/12.91  thf('70', plain,
% 12.72/12.91      ((((sk_A) = (k1_xboole_0))) <= ((((sk_A) = (k1_xboole_0))))),
% 12.72/12.91      inference('split', [status(esa)], ['34'])).
% 12.72/12.91  thf('71', plain,
% 12.72/12.91      ((((sk_D) = (k1_xboole_0))) <= ((((sk_A) = (k1_xboole_0))))),
% 12.72/12.91      inference('sup-', [status(thm)], ['46', '47'])).
% 12.72/12.91  thf('72', plain,
% 12.72/12.91      ((((k1_xboole_0) = (sk_C))) <= ((((sk_A) = (k1_xboole_0))))),
% 12.72/12.91      inference('demod', [status(thm)], ['53', '54'])).
% 12.72/12.91  thf('73', plain,
% 12.72/12.91      (![X0 : $i, X1 : $i, X2 : $i]:
% 12.72/12.91         ((k2_partfun1 @ X2 @ X1 @ k1_xboole_0 @ X0) = (k1_xboole_0))),
% 12.72/12.91      inference('demod', [status(thm)], ['64', '65'])).
% 12.72/12.91  thf('74', plain,
% 12.72/12.91      ((((k1_xboole_0) = (sk_C))) <= ((((sk_A) = (k1_xboole_0))))),
% 12.72/12.91      inference('demod', [status(thm)], ['53', '54'])).
% 12.72/12.91  thf('75', plain,
% 12.72/12.91      (![X0 : $i]: (m1_subset_1 @ k1_xboole_0 @ (k1_zfmisc_1 @ X0))),
% 12.72/12.91      inference('sup-', [status(thm)], ['57', '58'])).
% 12.72/12.91  thf('76', plain,
% 12.72/12.91      (![X24 : $i, X25 : $i, X26 : $i]:
% 12.72/12.91         (((k1_relset_1 @ X25 @ X26 @ X24) = (k1_relat_1 @ X24))
% 12.72/12.91          | ~ (m1_subset_1 @ X24 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X25 @ X26))))),
% 12.72/12.91      inference('cnf', [status(esa)], [redefinition_k1_relset_1])).
% 12.72/12.91  thf('77', plain,
% 12.72/12.91      (![X0 : $i, X1 : $i]:
% 12.72/12.91         ((k1_relset_1 @ X1 @ X0 @ k1_xboole_0) = (k1_relat_1 @ k1_xboole_0))),
% 12.72/12.91      inference('sup-', [status(thm)], ['75', '76'])).
% 12.72/12.91  thf('78', plain,
% 12.72/12.91      (![X14 : $i]: ((k7_relat_1 @ k1_xboole_0 @ X14) = (k1_xboole_0))),
% 12.72/12.91      inference('cnf', [status(esa)], [t111_relat_1])).
% 12.72/12.91  thf('79', plain, (![X3 : $i]: (r1_tarski @ k1_xboole_0 @ X3)),
% 12.72/12.91      inference('cnf', [status(esa)], [t2_xboole_1])).
% 12.72/12.91  thf(t91_relat_1, axiom,
% 12.72/12.91    (![A:$i,B:$i]:
% 12.72/12.91     ( ( v1_relat_1 @ B ) =>
% 12.72/12.91       ( ( r1_tarski @ A @ ( k1_relat_1 @ B ) ) =>
% 12.72/12.91         ( ( k1_relat_1 @ ( k7_relat_1 @ B @ A ) ) = ( A ) ) ) ))).
% 12.72/12.91  thf('80', plain,
% 12.72/12.91      (![X15 : $i, X16 : $i]:
% 12.72/12.91         (~ (r1_tarski @ X15 @ (k1_relat_1 @ X16))
% 12.72/12.91          | ((k1_relat_1 @ (k7_relat_1 @ X16 @ X15)) = (X15))
% 12.72/12.91          | ~ (v1_relat_1 @ X16))),
% 12.72/12.91      inference('cnf', [status(esa)], [t91_relat_1])).
% 12.72/12.91  thf('81', plain,
% 12.72/12.91      (![X0 : $i]:
% 12.72/12.91         (~ (v1_relat_1 @ X0)
% 12.72/12.91          | ((k1_relat_1 @ (k7_relat_1 @ X0 @ k1_xboole_0)) = (k1_xboole_0)))),
% 12.72/12.91      inference('sup-', [status(thm)], ['79', '80'])).
% 12.72/12.91  thf('82', plain,
% 12.72/12.91      ((((k1_relat_1 @ k1_xboole_0) = (k1_xboole_0))
% 12.72/12.91        | ~ (v1_relat_1 @ k1_xboole_0))),
% 12.72/12.91      inference('sup+', [status(thm)], ['78', '81'])).
% 12.72/12.91  thf('83', plain,
% 12.72/12.91      (![X0 : $i]: (m1_subset_1 @ k1_xboole_0 @ (k1_zfmisc_1 @ X0))),
% 12.72/12.91      inference('sup-', [status(thm)], ['57', '58'])).
% 12.72/12.91  thf(cc1_relset_1, axiom,
% 12.72/12.91    (![A:$i,B:$i,C:$i]:
% 12.72/12.91     ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) =>
% 12.72/12.91       ( v1_relat_1 @ C ) ))).
% 12.72/12.91  thf('84', plain,
% 12.72/12.91      (![X18 : $i, X19 : $i, X20 : $i]:
% 12.72/12.91         ((v1_relat_1 @ X18)
% 12.72/12.91          | ~ (m1_subset_1 @ X18 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X19 @ X20))))),
% 12.72/12.91      inference('cnf', [status(esa)], [cc1_relset_1])).
% 12.72/12.91  thf('85', plain, ((v1_relat_1 @ k1_xboole_0)),
% 12.72/12.91      inference('sup-', [status(thm)], ['83', '84'])).
% 12.72/12.91  thf('86', plain, (((k1_relat_1 @ k1_xboole_0) = (k1_xboole_0))),
% 12.72/12.91      inference('demod', [status(thm)], ['82', '85'])).
% 12.72/12.91  thf('87', plain,
% 12.72/12.91      (![X0 : $i, X1 : $i]:
% 12.72/12.91         ((k1_relset_1 @ X1 @ X0 @ k1_xboole_0) = (k1_xboole_0))),
% 12.72/12.91      inference('demod', [status(thm)], ['77', '86'])).
% 12.72/12.91  thf('88', plain,
% 12.72/12.91      (![X29 : $i, X30 : $i, X31 : $i]:
% 12.72/12.91         (((X29) != (k1_relset_1 @ X29 @ X30 @ X31))
% 12.72/12.91          | (v1_funct_2 @ X31 @ X29 @ X30)
% 12.72/12.91          | ~ (zip_tseitin_1 @ X31 @ X30 @ X29))),
% 12.72/12.91      inference('cnf', [status(esa)], [zf_stmt_3])).
% 12.72/12.91  thf('89', plain,
% 12.72/12.91      (![X0 : $i, X1 : $i]:
% 12.72/12.91         (((X1) != (k1_xboole_0))
% 12.72/12.91          | ~ (zip_tseitin_1 @ k1_xboole_0 @ X0 @ X1)
% 12.72/12.91          | (v1_funct_2 @ k1_xboole_0 @ X1 @ X0))),
% 12.72/12.91      inference('sup-', [status(thm)], ['87', '88'])).
% 12.72/12.91  thf('90', plain,
% 12.72/12.91      (![X0 : $i]:
% 12.72/12.91         ((v1_funct_2 @ k1_xboole_0 @ k1_xboole_0 @ X0)
% 12.72/12.91          | ~ (zip_tseitin_1 @ k1_xboole_0 @ X0 @ k1_xboole_0))),
% 12.72/12.91      inference('simplify', [status(thm)], ['89'])).
% 12.72/12.91  thf('91', plain,
% 12.72/12.91      (![X27 : $i, X28 : $i]:
% 12.72/12.91         ((zip_tseitin_0 @ X27 @ X28) | ((X28) != (k1_xboole_0)))),
% 12.72/12.91      inference('cnf', [status(esa)], [zf_stmt_1])).
% 12.72/12.91  thf('92', plain, (![X27 : $i]: (zip_tseitin_0 @ X27 @ k1_xboole_0)),
% 12.72/12.91      inference('simplify', [status(thm)], ['91'])).
% 12.72/12.91  thf('93', plain,
% 12.72/12.91      (![X0 : $i]: (m1_subset_1 @ k1_xboole_0 @ (k1_zfmisc_1 @ X0))),
% 12.72/12.91      inference('sup-', [status(thm)], ['57', '58'])).
% 12.72/12.91  thf('94', plain,
% 12.72/12.91      (![X32 : $i, X33 : $i, X34 : $i]:
% 12.72/12.91         (~ (zip_tseitin_0 @ X32 @ X33)
% 12.72/12.91          | (zip_tseitin_1 @ X34 @ X32 @ X33)
% 12.72/12.91          | ~ (m1_subset_1 @ X34 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X33 @ X32))))),
% 12.72/12.91      inference('cnf', [status(esa)], [zf_stmt_5])).
% 12.72/12.91  thf('95', plain,
% 12.72/12.91      (![X0 : $i, X1 : $i]:
% 12.72/12.91         ((zip_tseitin_1 @ k1_xboole_0 @ X0 @ X1) | ~ (zip_tseitin_0 @ X0 @ X1))),
% 12.72/12.91      inference('sup-', [status(thm)], ['93', '94'])).
% 12.72/12.91  thf('96', plain,
% 12.72/12.91      (![X0 : $i]: (zip_tseitin_1 @ k1_xboole_0 @ X0 @ k1_xboole_0)),
% 12.72/12.91      inference('sup-', [status(thm)], ['92', '95'])).
% 12.72/12.91  thf('97', plain, (![X0 : $i]: (v1_funct_2 @ k1_xboole_0 @ k1_xboole_0 @ X0)),
% 12.72/12.91      inference('demod', [status(thm)], ['90', '96'])).
% 12.72/12.91  thf('98', plain, (~ (((sk_A) = (k1_xboole_0)))),
% 12.72/12.91      inference('demod', [status(thm)],
% 12.72/12.91                ['38', '48', '55', '66', '67', '68', '69', '70', '71', '72', 
% 12.72/12.91                 '73', '74', '97'])).
% 12.72/12.91  thf('99', plain, (~ (((sk_B) = (k1_xboole_0))) | (((sk_A) = (k1_xboole_0)))),
% 12.72/12.91      inference('split', [status(esa)], ['34'])).
% 12.72/12.91  thf('100', plain, (~ (((sk_B) = (k1_xboole_0)))),
% 12.72/12.91      inference('sat_resolution*', [status(thm)], ['98', '99'])).
% 12.72/12.91  thf('101', plain, (((sk_B) != (k1_xboole_0))),
% 12.72/12.91      inference('simpl_trail', [status(thm)], ['35', '100'])).
% 12.72/12.91  thf('102', plain, (((sk_A) = (k1_relat_1 @ sk_D))),
% 12.72/12.91      inference('simplify_reflect-', [status(thm)], ['33', '101'])).
% 12.72/12.91  thf('103', plain,
% 12.72/12.91      (![X15 : $i, X16 : $i]:
% 12.72/12.91         (~ (r1_tarski @ X15 @ (k1_relat_1 @ X16))
% 12.72/12.91          | ((k1_relat_1 @ (k7_relat_1 @ X16 @ X15)) = (X15))
% 12.72/12.91          | ~ (v1_relat_1 @ X16))),
% 12.72/12.91      inference('cnf', [status(esa)], [t91_relat_1])).
% 12.72/12.91  thf('104', plain,
% 12.72/12.91      (![X0 : $i]:
% 12.72/12.91         (~ (r1_tarski @ X0 @ sk_A)
% 12.72/12.91          | ~ (v1_relat_1 @ sk_D)
% 12.72/12.91          | ((k1_relat_1 @ (k7_relat_1 @ sk_D @ X0)) = (X0)))),
% 12.72/12.91      inference('sup-', [status(thm)], ['102', '103'])).
% 12.72/12.91  thf('105', plain,
% 12.72/12.91      ((m1_subset_1 @ sk_D @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_A @ sk_B)))),
% 12.72/12.91      inference('cnf', [status(esa)], [zf_stmt_0])).
% 12.72/12.91  thf('106', plain,
% 12.72/12.91      (![X18 : $i, X19 : $i, X20 : $i]:
% 12.72/12.91         ((v1_relat_1 @ X18)
% 12.72/12.91          | ~ (m1_subset_1 @ X18 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X19 @ X20))))),
% 12.72/12.91      inference('cnf', [status(esa)], [cc1_relset_1])).
% 12.72/12.91  thf('107', plain, ((v1_relat_1 @ sk_D)),
% 12.72/12.91      inference('sup-', [status(thm)], ['105', '106'])).
% 12.72/12.91  thf('108', plain,
% 12.72/12.91      (![X0 : $i]:
% 12.72/12.91         (~ (r1_tarski @ X0 @ sk_A)
% 12.72/12.91          | ((k1_relat_1 @ (k7_relat_1 @ sk_D @ X0)) = (X0)))),
% 12.72/12.91      inference('demod', [status(thm)], ['104', '107'])).
% 12.72/12.91  thf('109', plain, (((k1_relat_1 @ (k7_relat_1 @ sk_D @ sk_C)) = (sk_C))),
% 12.72/12.91      inference('sup-', [status(thm)], ['14', '108'])).
% 12.72/12.91  thf('110', plain,
% 12.72/12.91      ((m1_subset_1 @ sk_D @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_A @ sk_B)))),
% 12.72/12.91      inference('cnf', [status(esa)], [zf_stmt_0])).
% 12.72/12.91  thf('111', plain,
% 12.72/12.91      (![X35 : $i, X36 : $i, X37 : $i, X38 : $i]:
% 12.72/12.91         (~ (m1_subset_1 @ X35 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X36 @ X37)))
% 12.72/12.91          | ~ (v1_funct_1 @ X35)
% 12.72/12.91          | (m1_subset_1 @ (k2_partfun1 @ X36 @ X37 @ X35 @ X38) @ 
% 12.72/12.91             (k1_zfmisc_1 @ (k2_zfmisc_1 @ X36 @ X37))))),
% 12.72/12.91      inference('cnf', [status(esa)], [dt_k2_partfun1])).
% 12.72/12.91  thf('112', plain,
% 12.72/12.91      (![X0 : $i]:
% 12.72/12.91         ((m1_subset_1 @ (k2_partfun1 @ sk_A @ sk_B @ sk_D @ X0) @ 
% 12.72/12.91           (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_A @ sk_B)))
% 12.72/12.91          | ~ (v1_funct_1 @ sk_D))),
% 12.72/12.91      inference('sup-', [status(thm)], ['110', '111'])).
% 12.72/12.91  thf('113', plain, ((v1_funct_1 @ sk_D)),
% 12.72/12.91      inference('cnf', [status(esa)], [zf_stmt_0])).
% 12.72/12.91  thf('114', plain,
% 12.72/12.91      (![X0 : $i]:
% 12.72/12.91         (m1_subset_1 @ (k2_partfun1 @ sk_A @ sk_B @ sk_D @ X0) @ 
% 12.72/12.91          (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_A @ sk_B)))),
% 12.72/12.91      inference('demod', [status(thm)], ['112', '113'])).
% 12.72/12.91  thf('115', plain,
% 12.72/12.91      (![X0 : $i]:
% 12.72/12.91         ((k2_partfun1 @ sk_A @ sk_B @ sk_D @ X0) = (k7_relat_1 @ sk_D @ X0))),
% 12.72/12.91      inference('demod', [status(thm)], ['9', '10'])).
% 12.72/12.91  thf('116', plain,
% 12.72/12.91      (![X0 : $i]:
% 12.72/12.91         (m1_subset_1 @ (k7_relat_1 @ sk_D @ X0) @ 
% 12.72/12.91          (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_A @ sk_B)))),
% 12.72/12.91      inference('demod', [status(thm)], ['114', '115'])).
% 12.72/12.91  thf(cc2_relset_1, axiom,
% 12.72/12.91    (![A:$i,B:$i,C:$i]:
% 12.72/12.91     ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) =>
% 12.72/12.91       ( ( v4_relat_1 @ C @ A ) & ( v5_relat_1 @ C @ B ) ) ))).
% 12.72/12.91  thf('117', plain,
% 12.72/12.91      (![X21 : $i, X22 : $i, X23 : $i]:
% 12.72/12.91         ((v5_relat_1 @ X21 @ X23)
% 12.72/12.91          | ~ (m1_subset_1 @ X21 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X22 @ X23))))),
% 12.72/12.91      inference('cnf', [status(esa)], [cc2_relset_1])).
% 12.72/12.91  thf('118', plain,
% 12.72/12.91      (![X0 : $i]: (v5_relat_1 @ (k7_relat_1 @ sk_D @ X0) @ sk_B)),
% 12.72/12.91      inference('sup-', [status(thm)], ['116', '117'])).
% 12.72/12.91  thf(d19_relat_1, axiom,
% 12.72/12.91    (![A:$i,B:$i]:
% 12.72/12.91     ( ( v1_relat_1 @ B ) =>
% 12.72/12.91       ( ( v5_relat_1 @ B @ A ) <=> ( r1_tarski @ ( k2_relat_1 @ B ) @ A ) ) ))).
% 12.72/12.91  thf('119', plain,
% 12.72/12.91      (![X10 : $i, X11 : $i]:
% 12.72/12.91         (~ (v5_relat_1 @ X10 @ X11)
% 12.72/12.91          | (r1_tarski @ (k2_relat_1 @ X10) @ X11)
% 12.72/12.91          | ~ (v1_relat_1 @ X10))),
% 12.72/12.91      inference('cnf', [status(esa)], [d19_relat_1])).
% 12.72/12.91  thf('120', plain,
% 12.72/12.91      (![X0 : $i]:
% 12.72/12.91         (~ (v1_relat_1 @ (k7_relat_1 @ sk_D @ X0))
% 12.72/12.91          | (r1_tarski @ (k2_relat_1 @ (k7_relat_1 @ sk_D @ X0)) @ sk_B))),
% 12.72/12.91      inference('sup-', [status(thm)], ['118', '119'])).
% 12.72/12.91  thf('121', plain,
% 12.72/12.91      (![X0 : $i]:
% 12.72/12.91         (m1_subset_1 @ (k7_relat_1 @ sk_D @ X0) @ 
% 12.72/12.91          (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_A @ sk_B)))),
% 12.72/12.91      inference('demod', [status(thm)], ['114', '115'])).
% 12.72/12.91  thf('122', plain,
% 12.72/12.91      (![X18 : $i, X19 : $i, X20 : $i]:
% 12.72/12.91         ((v1_relat_1 @ X18)
% 12.72/12.91          | ~ (m1_subset_1 @ X18 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X19 @ X20))))),
% 12.72/12.91      inference('cnf', [status(esa)], [cc1_relset_1])).
% 12.72/12.91  thf('123', plain, (![X0 : $i]: (v1_relat_1 @ (k7_relat_1 @ sk_D @ X0))),
% 12.72/12.91      inference('sup-', [status(thm)], ['121', '122'])).
% 12.72/12.91  thf('124', plain,
% 12.72/12.91      (![X0 : $i]: (r1_tarski @ (k2_relat_1 @ (k7_relat_1 @ sk_D @ X0)) @ sk_B)),
% 12.72/12.91      inference('demod', [status(thm)], ['120', '123'])).
% 12.72/12.91  thf(t4_funct_2, axiom,
% 12.72/12.91    (![A:$i,B:$i]:
% 12.72/12.91     ( ( ( v1_relat_1 @ B ) & ( v1_funct_1 @ B ) ) =>
% 12.72/12.91       ( ( r1_tarski @ ( k2_relat_1 @ B ) @ A ) =>
% 12.72/12.91         ( ( v1_funct_1 @ B ) & ( v1_funct_2 @ B @ ( k1_relat_1 @ B ) @ A ) & 
% 12.72/12.91           ( m1_subset_1 @
% 12.72/12.91             B @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ ( k1_relat_1 @ B ) @ A ) ) ) ) ) ))).
% 12.72/12.91  thf('125', plain,
% 12.72/12.91      (![X43 : $i, X44 : $i]:
% 12.72/12.91         (~ (r1_tarski @ (k2_relat_1 @ X43) @ X44)
% 12.72/12.91          | (v1_funct_2 @ X43 @ (k1_relat_1 @ X43) @ X44)
% 12.72/12.91          | ~ (v1_funct_1 @ X43)
% 12.72/12.91          | ~ (v1_relat_1 @ X43))),
% 12.72/12.91      inference('cnf', [status(esa)], [t4_funct_2])).
% 12.72/12.91  thf('126', plain,
% 12.72/12.91      (![X0 : $i]:
% 12.72/12.91         (~ (v1_relat_1 @ (k7_relat_1 @ sk_D @ X0))
% 12.72/12.91          | ~ (v1_funct_1 @ (k7_relat_1 @ sk_D @ X0))
% 12.72/12.91          | (v1_funct_2 @ (k7_relat_1 @ sk_D @ X0) @ 
% 12.72/12.91             (k1_relat_1 @ (k7_relat_1 @ sk_D @ X0)) @ sk_B))),
% 12.72/12.91      inference('sup-', [status(thm)], ['124', '125'])).
% 12.72/12.91  thf('127', plain, (![X0 : $i]: (v1_relat_1 @ (k7_relat_1 @ sk_D @ X0))),
% 12.72/12.91      inference('sup-', [status(thm)], ['121', '122'])).
% 12.72/12.91  thf('128', plain,
% 12.72/12.91      (![X0 : $i]: (v1_funct_1 @ (k2_partfun1 @ sk_A @ sk_B @ sk_D @ X0))),
% 12.72/12.91      inference('demod', [status(thm)], ['3', '4'])).
% 12.72/12.91  thf('129', plain,
% 12.72/12.91      (![X0 : $i]:
% 12.72/12.91         ((k2_partfun1 @ sk_A @ sk_B @ sk_D @ X0) = (k7_relat_1 @ sk_D @ X0))),
% 12.72/12.91      inference('demod', [status(thm)], ['9', '10'])).
% 12.72/12.91  thf('130', plain, (![X0 : $i]: (v1_funct_1 @ (k7_relat_1 @ sk_D @ X0))),
% 12.72/12.91      inference('demod', [status(thm)], ['128', '129'])).
% 12.72/12.91  thf('131', plain,
% 12.72/12.91      (![X0 : $i]:
% 12.72/12.91         (v1_funct_2 @ (k7_relat_1 @ sk_D @ X0) @ 
% 12.72/12.91          (k1_relat_1 @ (k7_relat_1 @ sk_D @ X0)) @ sk_B)),
% 12.72/12.91      inference('demod', [status(thm)], ['126', '127', '130'])).
% 12.72/12.91  thf('132', plain, ((v1_funct_2 @ (k7_relat_1 @ sk_D @ sk_C) @ sk_C @ sk_B)),
% 12.72/12.91      inference('sup+', [status(thm)], ['109', '131'])).
% 12.72/12.91  thf('133', plain,
% 12.72/12.91      (~ (m1_subset_1 @ (k7_relat_1 @ sk_D @ sk_C) @ 
% 12.72/12.91          (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_C @ sk_B)))),
% 12.72/12.91      inference('demod', [status(thm)], ['13', '132'])).
% 12.72/12.91  thf('134', plain, (((k1_relat_1 @ (k7_relat_1 @ sk_D @ sk_C)) = (sk_C))),
% 12.72/12.91      inference('sup-', [status(thm)], ['14', '108'])).
% 12.72/12.91  thf('135', plain,
% 12.72/12.91      (![X0 : $i]: (r1_tarski @ (k2_relat_1 @ (k7_relat_1 @ sk_D @ X0)) @ sk_B)),
% 12.72/12.91      inference('demod', [status(thm)], ['120', '123'])).
% 12.72/12.91  thf('136', plain,
% 12.72/12.91      (![X43 : $i, X44 : $i]:
% 12.72/12.91         (~ (r1_tarski @ (k2_relat_1 @ X43) @ X44)
% 12.72/12.91          | (m1_subset_1 @ X43 @ 
% 12.72/12.91             (k1_zfmisc_1 @ (k2_zfmisc_1 @ (k1_relat_1 @ X43) @ X44)))
% 12.72/12.91          | ~ (v1_funct_1 @ X43)
% 12.72/12.91          | ~ (v1_relat_1 @ X43))),
% 12.72/12.91      inference('cnf', [status(esa)], [t4_funct_2])).
% 12.72/12.91  thf('137', plain,
% 12.72/12.91      (![X0 : $i]:
% 12.72/12.91         (~ (v1_relat_1 @ (k7_relat_1 @ sk_D @ X0))
% 12.72/12.91          | ~ (v1_funct_1 @ (k7_relat_1 @ sk_D @ X0))
% 12.72/12.91          | (m1_subset_1 @ (k7_relat_1 @ sk_D @ X0) @ 
% 12.72/12.91             (k1_zfmisc_1 @ 
% 12.72/12.91              (k2_zfmisc_1 @ (k1_relat_1 @ (k7_relat_1 @ sk_D @ X0)) @ sk_B))))),
% 12.72/12.91      inference('sup-', [status(thm)], ['135', '136'])).
% 12.72/12.91  thf('138', plain, (![X0 : $i]: (v1_relat_1 @ (k7_relat_1 @ sk_D @ X0))),
% 12.72/12.91      inference('sup-', [status(thm)], ['121', '122'])).
% 12.72/12.91  thf('139', plain, (![X0 : $i]: (v1_funct_1 @ (k7_relat_1 @ sk_D @ X0))),
% 12.72/12.91      inference('demod', [status(thm)], ['128', '129'])).
% 12.72/12.91  thf('140', plain,
% 12.72/12.91      (![X0 : $i]:
% 12.72/12.91         (m1_subset_1 @ (k7_relat_1 @ sk_D @ X0) @ 
% 12.72/12.91          (k1_zfmisc_1 @ 
% 12.72/12.91           (k2_zfmisc_1 @ (k1_relat_1 @ (k7_relat_1 @ sk_D @ X0)) @ sk_B)))),
% 12.72/12.91      inference('demod', [status(thm)], ['137', '138', '139'])).
% 12.72/12.91  thf('141', plain,
% 12.72/12.91      ((m1_subset_1 @ (k7_relat_1 @ sk_D @ sk_C) @ 
% 12.72/12.91        (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_C @ sk_B)))),
% 12.72/12.91      inference('sup+', [status(thm)], ['134', '140'])).
% 12.72/12.91  thf('142', plain, ($false), inference('demod', [status(thm)], ['133', '141'])).
% 12.72/12.91  
% 12.72/12.91  % SZS output end Refutation
% 12.72/12.91  
% 12.72/12.92  % Zipperpin 1.5 exiting
%------------------------------------------------------------------------------
