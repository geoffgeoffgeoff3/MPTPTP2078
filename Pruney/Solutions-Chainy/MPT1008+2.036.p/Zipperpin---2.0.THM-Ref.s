%------------------------------------------------------------------------------
% File       : Zipperpin---2.0
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_portfolio.sh /export/starexec/sandbox/benchmark/theBenchmark.p /export/starexec/sandbox/tmp/tmp.yl5KME67AJ

% Computer   : n020.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 13:56:36 EST 2020

% Result     : Theorem 0.59s
% Output     : Refutation 0.59s
% Verified   : 
% Statistics : Number of formulae       :  108 ( 134 expanded)
%              Number of leaves         :   48 (  61 expanded)
%              Depth                    :   20
%              Number of atoms          :  732 (1274 expanded)
%              Number of equality atoms :   62 (  98 expanded)
%              Maximal formula depth    :   15 (   6 average)

% Comments   : 
%------------------------------------------------------------------------------
thf(k2_relat_1_type,type,(
    k2_relat_1: $i > $i )).

thf(r2_hidden_type,type,(
    r2_hidden: $i > $i > $o )).

thf(k1_xboole_0_type,type,(
    k1_xboole_0: $i )).

thf(k1_funct_1_type,type,(
    k1_funct_1: $i > $i > $i )).

thf(k1_relset_1_type,type,(
    k1_relset_1: $i > $i > $i > $i )).

thf(v1_xboole_0_type,type,(
    v1_xboole_0: $i > $o )).

thf(sk_A_type,type,(
    sk_A: $i )).

thf(m1_subset_1_type,type,(
    m1_subset_1: $i > $i > $o )).

thf(v5_relat_1_type,type,(
    v5_relat_1: $i > $i > $o )).

thf(sk_B_type,type,(
    sk_B: $i > $i )).

thf(k1_relat_1_type,type,(
    k1_relat_1: $i > $i )).

thf(k2_relset_1_type,type,(
    k2_relset_1: $i > $i > $i > $i )).

thf(sk_E_type,type,(
    sk_E: $i > $i > $i )).

thf(k2_tarski_type,type,(
    k2_tarski: $i > $i > $i )).

thf(k1_zfmisc_1_type,type,(
    k1_zfmisc_1: $i > $i )).

thf(v1_funct_2_type,type,(
    v1_funct_2: $i > $i > $i > $o )).

thf(zip_tseitin_0_type,type,(
    zip_tseitin_0: $i > $i > $o )).

thf(v4_relat_1_type,type,(
    v4_relat_1: $i > $i > $o )).

thf(v1_relat_1_type,type,(
    v1_relat_1: $i > $o )).

thf(sk_C_type,type,(
    sk_C: $i )).

thf(k2_zfmisc_1_type,type,(
    k2_zfmisc_1: $i > $i > $i )).

thf(v1_funct_1_type,type,(
    v1_funct_1: $i > $o )).

thf(zip_tseitin_1_type,type,(
    zip_tseitin_1: $i > $i > $i > $o )).

thf(k1_tarski_type,type,(
    k1_tarski: $i > $i )).

thf(k4_tarski_type,type,(
    k4_tarski: $i > $i > $i )).

thf(sk_B_1_type,type,(
    sk_B_1: $i )).

thf(r1_tarski_type,type,(
    r1_tarski: $i > $i > $o )).

thf(d1_xboole_0,axiom,(
    ! [A: $i] :
      ( ( v1_xboole_0 @ A )
    <=> ! [B: $i] :
          ~ ( r2_hidden @ B @ A ) ) )).

thf('0',plain,(
    ! [X2: $i] :
      ( ( v1_xboole_0 @ X2 )
      | ( r2_hidden @ ( sk_B @ X2 ) @ X2 ) ) ),
    inference(cnf,[status(esa)],[d1_xboole_0])).

thf(t62_funct_2,conjecture,(
    ! [A: $i,B: $i,C: $i] :
      ( ( ( v1_funct_1 @ C )
        & ( v1_funct_2 @ C @ ( k1_tarski @ A ) @ B )
        & ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ ( k1_tarski @ A ) @ B ) ) ) )
     => ( ( B != k1_xboole_0 )
       => ( ( k2_relset_1 @ ( k1_tarski @ A ) @ B @ C )
          = ( k1_tarski @ ( k1_funct_1 @ C @ A ) ) ) ) ) )).

thf(zf_stmt_0,negated_conjecture,(
    ~ ! [A: $i,B: $i,C: $i] :
        ( ( ( v1_funct_1 @ C )
          & ( v1_funct_2 @ C @ ( k1_tarski @ A ) @ B )
          & ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ ( k1_tarski @ A ) @ B ) ) ) )
       => ( ( B != k1_xboole_0 )
         => ( ( k2_relset_1 @ ( k1_tarski @ A ) @ B @ C )
            = ( k1_tarski @ ( k1_funct_1 @ C @ A ) ) ) ) ) ),
    inference('cnf.neg',[status(esa)],[t62_funct_2])).

thf('1',plain,(
    v1_funct_2 @ sk_C @ ( k1_tarski @ sk_A ) @ sk_B_1 ),
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

thf('2',plain,(
    ! [X42: $i,X43: $i,X44: $i] :
      ( ~ ( v1_funct_2 @ X44 @ X42 @ X43 )
      | ( X42
        = ( k1_relset_1 @ X42 @ X43 @ X44 ) )
      | ~ ( zip_tseitin_1 @ X44 @ X43 @ X42 ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_1])).

thf('3',plain,
    ( ~ ( zip_tseitin_1 @ sk_C @ sk_B_1 @ ( k1_tarski @ sk_A ) )
    | ( ( k1_tarski @ sk_A )
      = ( k1_relset_1 @ ( k1_tarski @ sk_A ) @ sk_B_1 @ sk_C ) ) ),
    inference('sup-',[status(thm)],['1','2'])).

thf(zf_stmt_2,axiom,(
    ! [B: $i,A: $i] :
      ( ( ( B = k1_xboole_0 )
       => ( A = k1_xboole_0 ) )
     => ( zip_tseitin_0 @ B @ A ) ) )).

thf('4',plain,(
    ! [X40: $i,X41: $i] :
      ( ( zip_tseitin_0 @ X40 @ X41 )
      | ( X40 = k1_xboole_0 ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_2])).

thf('5',plain,(
    m1_subset_1 @ sk_C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ ( k1_tarski @ sk_A ) @ sk_B_1 ) ) ),
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

thf('6',plain,(
    ! [X45: $i,X46: $i,X47: $i] :
      ( ~ ( zip_tseitin_0 @ X45 @ X46 )
      | ( zip_tseitin_1 @ X47 @ X45 @ X46 )
      | ~ ( m1_subset_1 @ X47 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X46 @ X45 ) ) ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_5])).

thf('7',plain,
    ( ( zip_tseitin_1 @ sk_C @ sk_B_1 @ ( k1_tarski @ sk_A ) )
    | ~ ( zip_tseitin_0 @ sk_B_1 @ ( k1_tarski @ sk_A ) ) ),
    inference('sup-',[status(thm)],['5','6'])).

thf('8',plain,
    ( ( sk_B_1 = k1_xboole_0 )
    | ( zip_tseitin_1 @ sk_C @ sk_B_1 @ ( k1_tarski @ sk_A ) ) ),
    inference('sup-',[status(thm)],['4','7'])).

thf('9',plain,(
    sk_B_1 != k1_xboole_0 ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('10',plain,(
    zip_tseitin_1 @ sk_C @ sk_B_1 @ ( k1_tarski @ sk_A ) ),
    inference('simplify_reflect-',[status(thm)],['8','9'])).

thf('11',plain,
    ( ( k1_tarski @ sk_A )
    = ( k1_relset_1 @ ( k1_tarski @ sk_A ) @ sk_B_1 @ sk_C ) ),
    inference(demod,[status(thm)],['3','10'])).

thf('12',plain,(
    m1_subset_1 @ sk_C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ ( k1_tarski @ sk_A ) @ sk_B_1 ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(cc2_relset_1,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) )
     => ( ( v4_relat_1 @ C @ A )
        & ( v5_relat_1 @ C @ B ) ) ) )).

thf('13',plain,(
    ! [X29: $i,X30: $i,X31: $i] :
      ( ( v4_relat_1 @ X29 @ X30 )
      | ~ ( m1_subset_1 @ X29 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X30 @ X31 ) ) ) ) ),
    inference(cnf,[status(esa)],[cc2_relset_1])).

thf('14',plain,(
    v4_relat_1 @ sk_C @ ( k1_tarski @ sk_A ) ),
    inference('sup-',[status(thm)],['12','13'])).

thf(d18_relat_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( v1_relat_1 @ B )
     => ( ( v4_relat_1 @ B @ A )
      <=> ( r1_tarski @ ( k1_relat_1 @ B ) @ A ) ) ) )).

thf('15',plain,(
    ! [X19: $i,X20: $i] :
      ( ~ ( v4_relat_1 @ X19 @ X20 )
      | ( r1_tarski @ ( k1_relat_1 @ X19 ) @ X20 )
      | ~ ( v1_relat_1 @ X19 ) ) ),
    inference(cnf,[status(esa)],[d18_relat_1])).

thf('16',plain,
    ( ~ ( v1_relat_1 @ sk_C )
    | ( r1_tarski @ ( k1_relat_1 @ sk_C ) @ ( k1_tarski @ sk_A ) ) ),
    inference('sup-',[status(thm)],['14','15'])).

thf('17',plain,(
    m1_subset_1 @ sk_C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ ( k1_tarski @ sk_A ) @ sk_B_1 ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(cc1_relset_1,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) )
     => ( v1_relat_1 @ C ) ) )).

thf('18',plain,(
    ! [X26: $i,X27: $i,X28: $i] :
      ( ( v1_relat_1 @ X26 )
      | ~ ( m1_subset_1 @ X26 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X27 @ X28 ) ) ) ) ),
    inference(cnf,[status(esa)],[cc1_relset_1])).

thf('19',plain,(
    v1_relat_1 @ sk_C ),
    inference('sup-',[status(thm)],['17','18'])).

thf('20',plain,(
    r1_tarski @ ( k1_relat_1 @ sk_C ) @ ( k1_tarski @ sk_A ) ),
    inference(demod,[status(thm)],['16','19'])).

thf(l3_zfmisc_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( r1_tarski @ A @ ( k1_tarski @ B ) )
    <=> ( ( A = k1_xboole_0 )
        | ( A
          = ( k1_tarski @ B ) ) ) ) )).

thf('21',plain,(
    ! [X12: $i,X13: $i] :
      ( ( X13
        = ( k1_tarski @ X12 ) )
      | ( X13 = k1_xboole_0 )
      | ~ ( r1_tarski @ X13 @ ( k1_tarski @ X12 ) ) ) ),
    inference(cnf,[status(esa)],[l3_zfmisc_1])).

thf('22',plain,
    ( ( ( k1_relat_1 @ sk_C )
      = k1_xboole_0 )
    | ( ( k1_relat_1 @ sk_C )
      = ( k1_tarski @ sk_A ) ) ),
    inference('sup-',[status(thm)],['20','21'])).

thf(t14_funct_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( ( v1_relat_1 @ B )
        & ( v1_funct_1 @ B ) )
     => ( ( ( k1_relat_1 @ B )
          = ( k1_tarski @ A ) )
       => ( ( k2_relat_1 @ B )
          = ( k1_tarski @ ( k1_funct_1 @ B @ A ) ) ) ) ) )).

thf('23',plain,(
    ! [X22: $i,X23: $i] :
      ( ( ( k1_relat_1 @ X23 )
       != ( k1_tarski @ X22 ) )
      | ( ( k2_relat_1 @ X23 )
        = ( k1_tarski @ ( k1_funct_1 @ X23 @ X22 ) ) )
      | ~ ( v1_funct_1 @ X23 )
      | ~ ( v1_relat_1 @ X23 ) ) ),
    inference(cnf,[status(esa)],[t14_funct_1])).

thf('24',plain,(
    ! [X0: $i] :
      ( ( ( k1_relat_1 @ X0 )
       != ( k1_relat_1 @ sk_C ) )
      | ( ( k1_relat_1 @ sk_C )
        = k1_xboole_0 )
      | ~ ( v1_relat_1 @ X0 )
      | ~ ( v1_funct_1 @ X0 )
      | ( ( k2_relat_1 @ X0 )
        = ( k1_tarski @ ( k1_funct_1 @ X0 @ sk_A ) ) ) ) ),
    inference('sup-',[status(thm)],['22','23'])).

thf('25',plain,
    ( ( ( k2_relat_1 @ sk_C )
      = ( k1_tarski @ ( k1_funct_1 @ sk_C @ sk_A ) ) )
    | ~ ( v1_funct_1 @ sk_C )
    | ~ ( v1_relat_1 @ sk_C )
    | ( ( k1_relat_1 @ sk_C )
      = k1_xboole_0 ) ),
    inference(eq_res,[status(thm)],['24'])).

thf('26',plain,(
    v1_funct_1 @ sk_C ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('27',plain,(
    v1_relat_1 @ sk_C ),
    inference('sup-',[status(thm)],['17','18'])).

thf('28',plain,
    ( ( ( k2_relat_1 @ sk_C )
      = ( k1_tarski @ ( k1_funct_1 @ sk_C @ sk_A ) ) )
    | ( ( k1_relat_1 @ sk_C )
      = k1_xboole_0 ) ),
    inference(demod,[status(thm)],['25','26','27'])).

thf('29',plain,(
    ( k2_relset_1 @ ( k1_tarski @ sk_A ) @ sk_B_1 @ sk_C )
 != ( k1_tarski @ ( k1_funct_1 @ sk_C @ sk_A ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('30',plain,(
    m1_subset_1 @ sk_C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ ( k1_tarski @ sk_A ) @ sk_B_1 ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(redefinition_k2_relset_1,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) )
     => ( ( k2_relset_1 @ A @ B @ C )
        = ( k2_relat_1 @ C ) ) ) )).

thf('31',plain,(
    ! [X32: $i,X33: $i,X34: $i] :
      ( ( ( k2_relset_1 @ X33 @ X34 @ X32 )
        = ( k2_relat_1 @ X32 ) )
      | ~ ( m1_subset_1 @ X32 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X33 @ X34 ) ) ) ) ),
    inference(cnf,[status(esa)],[redefinition_k2_relset_1])).

thf('32',plain,
    ( ( k2_relset_1 @ ( k1_tarski @ sk_A ) @ sk_B_1 @ sk_C )
    = ( k2_relat_1 @ sk_C ) ),
    inference('sup-',[status(thm)],['30','31'])).

thf('33',plain,(
    ( k2_relat_1 @ sk_C )
 != ( k1_tarski @ ( k1_funct_1 @ sk_C @ sk_A ) ) ),
    inference(demod,[status(thm)],['29','32'])).

thf('34',plain,
    ( ( k1_relat_1 @ sk_C )
    = k1_xboole_0 ),
    inference('simplify_reflect-',[status(thm)],['28','33'])).

thf(t64_relat_1,axiom,(
    ! [A: $i] :
      ( ( v1_relat_1 @ A )
     => ( ( ( ( k1_relat_1 @ A )
            = k1_xboole_0 )
          | ( ( k2_relat_1 @ A )
            = k1_xboole_0 ) )
       => ( A = k1_xboole_0 ) ) ) )).

thf('35',plain,(
    ! [X21: $i] :
      ( ( ( k1_relat_1 @ X21 )
       != k1_xboole_0 )
      | ( X21 = k1_xboole_0 )
      | ~ ( v1_relat_1 @ X21 ) ) ),
    inference(cnf,[status(esa)],[t64_relat_1])).

thf('36',plain,
    ( ( k1_xboole_0 != k1_xboole_0 )
    | ~ ( v1_relat_1 @ sk_C )
    | ( sk_C = k1_xboole_0 ) ),
    inference('sup-',[status(thm)],['34','35'])).

thf('37',plain,(
    v1_relat_1 @ sk_C ),
    inference('sup-',[status(thm)],['17','18'])).

thf('38',plain,
    ( ( k1_xboole_0 != k1_xboole_0 )
    | ( sk_C = k1_xboole_0 ) ),
    inference(demod,[status(thm)],['36','37'])).

thf('39',plain,(
    sk_C = k1_xboole_0 ),
    inference(simplify,[status(thm)],['38'])).

thf('40',plain,
    ( ( k1_tarski @ sk_A )
    = ( k1_relset_1 @ ( k1_tarski @ sk_A ) @ sk_B_1 @ k1_xboole_0 ) ),
    inference(demod,[status(thm)],['11','39'])).

thf(t4_subset_1,axiom,(
    ! [A: $i] :
      ( m1_subset_1 @ k1_xboole_0 @ ( k1_zfmisc_1 @ A ) ) )).

thf('41',plain,(
    ! [X15: $i] :
      ( m1_subset_1 @ k1_xboole_0 @ ( k1_zfmisc_1 @ X15 ) ) ),
    inference(cnf,[status(esa)],[t4_subset_1])).

thf(t22_relset_1,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ B @ A ) ) )
     => ( ! [D: $i] :
            ~ ( ( r2_hidden @ D @ B )
              & ! [E: $i] :
                  ~ ( r2_hidden @ ( k4_tarski @ D @ E ) @ C ) )
      <=> ( ( k1_relset_1 @ B @ A @ C )
          = B ) ) ) )).

thf('42',plain,(
    ! [X35: $i,X36: $i,X37: $i,X38: $i] :
      ( ( ( k1_relset_1 @ X35 @ X36 @ X37 )
       != X35 )
      | ~ ( r2_hidden @ X38 @ X35 )
      | ( r2_hidden @ ( k4_tarski @ X38 @ ( sk_E @ X38 @ X37 ) ) @ X37 )
      | ~ ( m1_subset_1 @ X37 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X35 @ X36 ) ) ) ) ),
    inference(cnf,[status(esa)],[t22_relset_1])).

thf('43',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( ( r2_hidden @ ( k4_tarski @ X2 @ ( sk_E @ X2 @ k1_xboole_0 ) ) @ k1_xboole_0 )
      | ~ ( r2_hidden @ X2 @ X1 )
      | ( ( k1_relset_1 @ X1 @ X0 @ k1_xboole_0 )
       != X1 ) ) ),
    inference('sup-',[status(thm)],['41','42'])).

thf('44',plain,(
    ! [X0: $i] :
      ( ( ( k1_tarski @ sk_A )
       != ( k1_tarski @ sk_A ) )
      | ~ ( r2_hidden @ X0 @ ( k1_tarski @ sk_A ) )
      | ( r2_hidden @ ( k4_tarski @ X0 @ ( sk_E @ X0 @ k1_xboole_0 ) ) @ k1_xboole_0 ) ) ),
    inference('sup-',[status(thm)],['40','43'])).

thf('45',plain,(
    ! [X0: $i] :
      ( ( r2_hidden @ ( k4_tarski @ X0 @ ( sk_E @ X0 @ k1_xboole_0 ) ) @ k1_xboole_0 )
      | ~ ( r2_hidden @ X0 @ ( k1_tarski @ sk_A ) ) ) ),
    inference(simplify,[status(thm)],['44'])).

thf('46',plain,
    ( ( v1_xboole_0 @ ( k1_tarski @ sk_A ) )
    | ( r2_hidden @ ( k4_tarski @ ( sk_B @ ( k1_tarski @ sk_A ) ) @ ( sk_E @ ( sk_B @ ( k1_tarski @ sk_A ) ) @ k1_xboole_0 ) ) @ k1_xboole_0 ) ),
    inference('sup-',[status(thm)],['0','45'])).

thf(t69_enumset1,axiom,(
    ! [A: $i] :
      ( ( k2_tarski @ A @ A )
      = ( k1_tarski @ A ) ) )).

thf('47',plain,(
    ! [X4: $i] :
      ( ( k2_tarski @ X4 @ X4 )
      = ( k1_tarski @ X4 ) ) ),
    inference(cnf,[status(esa)],[t69_enumset1])).

thf(fc3_xboole_0,axiom,(
    ! [A: $i,B: $i] :
      ~ ( v1_xboole_0 @ ( k2_tarski @ A @ B ) ) )).

thf('48',plain,(
    ! [X10: $i,X11: $i] :
      ~ ( v1_xboole_0 @ ( k2_tarski @ X10 @ X11 ) ) ),
    inference(cnf,[status(esa)],[fc3_xboole_0])).

thf('49',plain,(
    ! [X0: $i] :
      ~ ( v1_xboole_0 @ ( k1_tarski @ X0 ) ) ),
    inference('sup-',[status(thm)],['47','48'])).

thf('50',plain,(
    r2_hidden @ ( k4_tarski @ ( sk_B @ ( k1_tarski @ sk_A ) ) @ ( sk_E @ ( sk_B @ ( k1_tarski @ sk_A ) ) @ k1_xboole_0 ) ) @ k1_xboole_0 ),
    inference(clc,[status(thm)],['46','49'])).

thf('51',plain,(
    ! [X0: $i,X1: $i] :
      ( ~ ( r2_hidden @ X0 @ X1 )
      | ~ ( v1_xboole_0 @ X1 ) ) ),
    inference(cnf,[status(esa)],[d1_xboole_0])).

thf('52',plain,(
    ~ ( v1_xboole_0 @ k1_xboole_0 ) ),
    inference('sup-',[status(thm)],['50','51'])).

thf(t2_xboole_1,axiom,(
    ! [A: $i] :
      ( r1_tarski @ k1_xboole_0 @ A ) )).

thf('53',plain,(
    ! [X3: $i] :
      ( r1_tarski @ k1_xboole_0 @ X3 ) ),
    inference(cnf,[status(esa)],[t2_xboole_1])).

thf('54',plain,(
    ! [X2: $i] :
      ( ( v1_xboole_0 @ X2 )
      | ( r2_hidden @ ( sk_B @ X2 ) @ X2 ) ) ),
    inference(cnf,[status(esa)],[d1_xboole_0])).

thf(t7_ordinal1,axiom,(
    ! [A: $i,B: $i] :
      ~ ( ( r2_hidden @ A @ B )
        & ( r1_tarski @ B @ A ) ) )).

thf('55',plain,(
    ! [X24: $i,X25: $i] :
      ( ~ ( r2_hidden @ X24 @ X25 )
      | ~ ( r1_tarski @ X25 @ X24 ) ) ),
    inference(cnf,[status(esa)],[t7_ordinal1])).

thf('56',plain,(
    ! [X0: $i] :
      ( ( v1_xboole_0 @ X0 )
      | ~ ( r1_tarski @ X0 @ ( sk_B @ X0 ) ) ) ),
    inference('sup-',[status(thm)],['54','55'])).

thf('57',plain,(
    v1_xboole_0 @ k1_xboole_0 ),
    inference('sup-',[status(thm)],['53','56'])).

thf('58',plain,(
    $false ),
    inference(demod,[status(thm)],['52','57'])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.00/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.12/0.13  % Command    : run_portfolio.sh /export/starexec/sandbox/benchmark/theBenchmark.p /export/starexec/sandbox/tmp/tmp.yl5KME67AJ
% 0.13/0.34  % Computer   : n020.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % DateTime   : Tue Dec  1 15:01:37 EST 2020
% 0.13/0.34  % CPUTime    : 
% 0.13/0.34  % Running portfolio for 600 s
% 0.13/0.34  % File         : /export/starexec/sandbox/benchmark/theBenchmark.p
% 0.13/0.34  % Number of cores: 8
% 0.13/0.35  % Python version: Python 3.6.8
% 0.13/0.35  % Running in FO mode
% 0.59/0.77  % Running /export/starexec/sandbox/solver/bin/fo/fo7.sh for 78
% 0.59/0.77  % Solved by: fo/fo7.sh
% 0.59/0.77  To remain in the chosen logic fragment, unification with booleans has been disabled.
% 0.59/0.77  % done 480 iterations in 0.317s
% 0.59/0.77  % SZS status Theorem for '/export/starexec/sandbox/benchmark/theBenchmark.p'
% 0.59/0.77  % SZS output start Refutation
% 0.59/0.77  thf(k2_relat_1_type, type, k2_relat_1: $i > $i).
% 0.59/0.77  thf(r2_hidden_type, type, r2_hidden: $i > $i > $o).
% 0.59/0.77  thf(k1_xboole_0_type, type, k1_xboole_0: $i).
% 0.59/0.77  thf(k1_funct_1_type, type, k1_funct_1: $i > $i > $i).
% 0.59/0.77  thf(k1_relset_1_type, type, k1_relset_1: $i > $i > $i > $i).
% 0.59/0.77  thf(v1_xboole_0_type, type, v1_xboole_0: $i > $o).
% 0.59/0.77  thf(sk_A_type, type, sk_A: $i).
% 0.59/0.77  thf(m1_subset_1_type, type, m1_subset_1: $i > $i > $o).
% 0.59/0.77  thf(v5_relat_1_type, type, v5_relat_1: $i > $i > $o).
% 0.59/0.77  thf(sk_B_type, type, sk_B: $i > $i).
% 0.59/0.77  thf(k1_relat_1_type, type, k1_relat_1: $i > $i).
% 0.59/0.77  thf(k2_relset_1_type, type, k2_relset_1: $i > $i > $i > $i).
% 0.59/0.77  thf(sk_E_type, type, sk_E: $i > $i > $i).
% 0.59/0.77  thf(k2_tarski_type, type, k2_tarski: $i > $i > $i).
% 0.59/0.77  thf(k1_zfmisc_1_type, type, k1_zfmisc_1: $i > $i).
% 0.59/0.77  thf(v1_funct_2_type, type, v1_funct_2: $i > $i > $i > $o).
% 0.59/0.77  thf(zip_tseitin_0_type, type, zip_tseitin_0: $i > $i > $o).
% 0.59/0.77  thf(v4_relat_1_type, type, v4_relat_1: $i > $i > $o).
% 0.59/0.77  thf(v1_relat_1_type, type, v1_relat_1: $i > $o).
% 0.59/0.77  thf(sk_C_type, type, sk_C: $i).
% 0.59/0.77  thf(k2_zfmisc_1_type, type, k2_zfmisc_1: $i > $i > $i).
% 0.59/0.77  thf(v1_funct_1_type, type, v1_funct_1: $i > $o).
% 0.59/0.77  thf(zip_tseitin_1_type, type, zip_tseitin_1: $i > $i > $i > $o).
% 0.59/0.77  thf(k1_tarski_type, type, k1_tarski: $i > $i).
% 0.59/0.77  thf(k4_tarski_type, type, k4_tarski: $i > $i > $i).
% 0.59/0.77  thf(sk_B_1_type, type, sk_B_1: $i).
% 0.59/0.77  thf(r1_tarski_type, type, r1_tarski: $i > $i > $o).
% 0.59/0.77  thf(d1_xboole_0, axiom,
% 0.59/0.77    (![A:$i]:
% 0.59/0.77     ( ( v1_xboole_0 @ A ) <=> ( ![B:$i]: ( ~( r2_hidden @ B @ A ) ) ) ))).
% 0.59/0.77  thf('0', plain,
% 0.59/0.77      (![X2 : $i]: ((v1_xboole_0 @ X2) | (r2_hidden @ (sk_B @ X2) @ X2))),
% 0.59/0.77      inference('cnf', [status(esa)], [d1_xboole_0])).
% 0.59/0.77  thf(t62_funct_2, conjecture,
% 0.59/0.77    (![A:$i,B:$i,C:$i]:
% 0.59/0.77     ( ( ( v1_funct_1 @ C ) & ( v1_funct_2 @ C @ ( k1_tarski @ A ) @ B ) & 
% 0.59/0.77         ( m1_subset_1 @
% 0.59/0.77           C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ ( k1_tarski @ A ) @ B ) ) ) ) =>
% 0.59/0.77       ( ( ( B ) != ( k1_xboole_0 ) ) =>
% 0.59/0.77         ( ( k2_relset_1 @ ( k1_tarski @ A ) @ B @ C ) =
% 0.59/0.77           ( k1_tarski @ ( k1_funct_1 @ C @ A ) ) ) ) ))).
% 0.59/0.77  thf(zf_stmt_0, negated_conjecture,
% 0.59/0.77    (~( ![A:$i,B:$i,C:$i]:
% 0.59/0.77        ( ( ( v1_funct_1 @ C ) & ( v1_funct_2 @ C @ ( k1_tarski @ A ) @ B ) & 
% 0.59/0.77            ( m1_subset_1 @
% 0.59/0.77              C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ ( k1_tarski @ A ) @ B ) ) ) ) =>
% 0.59/0.77          ( ( ( B ) != ( k1_xboole_0 ) ) =>
% 0.59/0.77            ( ( k2_relset_1 @ ( k1_tarski @ A ) @ B @ C ) =
% 0.59/0.77              ( k1_tarski @ ( k1_funct_1 @ C @ A ) ) ) ) ) )),
% 0.59/0.77    inference('cnf.neg', [status(esa)], [t62_funct_2])).
% 0.59/0.77  thf('1', plain, ((v1_funct_2 @ sk_C @ (k1_tarski @ sk_A) @ sk_B_1)),
% 0.59/0.77      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.59/0.77  thf(d1_funct_2, axiom,
% 0.59/0.77    (![A:$i,B:$i,C:$i]:
% 0.59/0.77     ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) =>
% 0.59/0.77       ( ( ( ( B ) = ( k1_xboole_0 ) ) =>
% 0.59/0.77           ( ( ( v1_funct_2 @ C @ A @ B ) <=> ( ( C ) = ( k1_xboole_0 ) ) ) | 
% 0.59/0.77             ( ( A ) = ( k1_xboole_0 ) ) ) ) & 
% 0.59/0.77         ( ( ( ( B ) = ( k1_xboole_0 ) ) => ( ( A ) = ( k1_xboole_0 ) ) ) =>
% 0.59/0.77           ( ( v1_funct_2 @ C @ A @ B ) <=>
% 0.59/0.77             ( ( A ) = ( k1_relset_1 @ A @ B @ C ) ) ) ) ) ))).
% 0.59/0.77  thf(zf_stmt_1, axiom,
% 0.59/0.77    (![C:$i,B:$i,A:$i]:
% 0.59/0.77     ( ( zip_tseitin_1 @ C @ B @ A ) =>
% 0.59/0.77       ( ( v1_funct_2 @ C @ A @ B ) <=> ( ( A ) = ( k1_relset_1 @ A @ B @ C ) ) ) ))).
% 0.59/0.77  thf('2', plain,
% 0.59/0.77      (![X42 : $i, X43 : $i, X44 : $i]:
% 0.59/0.77         (~ (v1_funct_2 @ X44 @ X42 @ X43)
% 0.59/0.77          | ((X42) = (k1_relset_1 @ X42 @ X43 @ X44))
% 0.59/0.77          | ~ (zip_tseitin_1 @ X44 @ X43 @ X42))),
% 0.59/0.77      inference('cnf', [status(esa)], [zf_stmt_1])).
% 0.59/0.77  thf('3', plain,
% 0.59/0.77      ((~ (zip_tseitin_1 @ sk_C @ sk_B_1 @ (k1_tarski @ sk_A))
% 0.59/0.77        | ((k1_tarski @ sk_A)
% 0.59/0.77            = (k1_relset_1 @ (k1_tarski @ sk_A) @ sk_B_1 @ sk_C)))),
% 0.59/0.77      inference('sup-', [status(thm)], ['1', '2'])).
% 0.59/0.77  thf(zf_stmt_2, axiom,
% 0.59/0.77    (![B:$i,A:$i]:
% 0.59/0.77     ( ( ( ( B ) = ( k1_xboole_0 ) ) => ( ( A ) = ( k1_xboole_0 ) ) ) =>
% 0.59/0.77       ( zip_tseitin_0 @ B @ A ) ))).
% 0.59/0.77  thf('4', plain,
% 0.59/0.77      (![X40 : $i, X41 : $i]:
% 0.59/0.77         ((zip_tseitin_0 @ X40 @ X41) | ((X40) = (k1_xboole_0)))),
% 0.59/0.77      inference('cnf', [status(esa)], [zf_stmt_2])).
% 0.59/0.77  thf('5', plain,
% 0.59/0.77      ((m1_subset_1 @ sk_C @ 
% 0.59/0.77        (k1_zfmisc_1 @ (k2_zfmisc_1 @ (k1_tarski @ sk_A) @ sk_B_1)))),
% 0.59/0.77      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.59/0.77  thf(zf_stmt_3, type, zip_tseitin_1 : $i > $i > $i > $o).
% 0.59/0.77  thf(zf_stmt_4, type, zip_tseitin_0 : $i > $i > $o).
% 0.59/0.77  thf(zf_stmt_5, axiom,
% 0.59/0.77    (![A:$i,B:$i,C:$i]:
% 0.59/0.77     ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) =>
% 0.59/0.77       ( ( ( zip_tseitin_0 @ B @ A ) => ( zip_tseitin_1 @ C @ B @ A ) ) & 
% 0.59/0.77         ( ( ( B ) = ( k1_xboole_0 ) ) =>
% 0.59/0.77           ( ( ( A ) = ( k1_xboole_0 ) ) | 
% 0.59/0.77             ( ( v1_funct_2 @ C @ A @ B ) <=> ( ( C ) = ( k1_xboole_0 ) ) ) ) ) ) ))).
% 0.59/0.77  thf('6', plain,
% 0.59/0.77      (![X45 : $i, X46 : $i, X47 : $i]:
% 0.59/0.77         (~ (zip_tseitin_0 @ X45 @ X46)
% 0.59/0.77          | (zip_tseitin_1 @ X47 @ X45 @ X46)
% 0.59/0.77          | ~ (m1_subset_1 @ X47 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X46 @ X45))))),
% 0.59/0.77      inference('cnf', [status(esa)], [zf_stmt_5])).
% 0.59/0.77  thf('7', plain,
% 0.59/0.77      (((zip_tseitin_1 @ sk_C @ sk_B_1 @ (k1_tarski @ sk_A))
% 0.59/0.77        | ~ (zip_tseitin_0 @ sk_B_1 @ (k1_tarski @ sk_A)))),
% 0.59/0.77      inference('sup-', [status(thm)], ['5', '6'])).
% 0.59/0.77  thf('8', plain,
% 0.59/0.77      ((((sk_B_1) = (k1_xboole_0))
% 0.59/0.77        | (zip_tseitin_1 @ sk_C @ sk_B_1 @ (k1_tarski @ sk_A)))),
% 0.59/0.77      inference('sup-', [status(thm)], ['4', '7'])).
% 0.59/0.77  thf('9', plain, (((sk_B_1) != (k1_xboole_0))),
% 0.59/0.77      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.59/0.77  thf('10', plain, ((zip_tseitin_1 @ sk_C @ sk_B_1 @ (k1_tarski @ sk_A))),
% 0.59/0.77      inference('simplify_reflect-', [status(thm)], ['8', '9'])).
% 0.59/0.77  thf('11', plain,
% 0.59/0.77      (((k1_tarski @ sk_A) = (k1_relset_1 @ (k1_tarski @ sk_A) @ sk_B_1 @ sk_C))),
% 0.59/0.77      inference('demod', [status(thm)], ['3', '10'])).
% 0.59/0.77  thf('12', plain,
% 0.59/0.77      ((m1_subset_1 @ sk_C @ 
% 0.59/0.77        (k1_zfmisc_1 @ (k2_zfmisc_1 @ (k1_tarski @ sk_A) @ sk_B_1)))),
% 0.59/0.77      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.59/0.77  thf(cc2_relset_1, axiom,
% 0.59/0.77    (![A:$i,B:$i,C:$i]:
% 0.59/0.77     ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) =>
% 0.59/0.77       ( ( v4_relat_1 @ C @ A ) & ( v5_relat_1 @ C @ B ) ) ))).
% 0.59/0.77  thf('13', plain,
% 0.59/0.77      (![X29 : $i, X30 : $i, X31 : $i]:
% 0.59/0.77         ((v4_relat_1 @ X29 @ X30)
% 0.59/0.77          | ~ (m1_subset_1 @ X29 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X30 @ X31))))),
% 0.59/0.77      inference('cnf', [status(esa)], [cc2_relset_1])).
% 0.59/0.77  thf('14', plain, ((v4_relat_1 @ sk_C @ (k1_tarski @ sk_A))),
% 0.59/0.77      inference('sup-', [status(thm)], ['12', '13'])).
% 0.59/0.77  thf(d18_relat_1, axiom,
% 0.59/0.77    (![A:$i,B:$i]:
% 0.59/0.77     ( ( v1_relat_1 @ B ) =>
% 0.59/0.77       ( ( v4_relat_1 @ B @ A ) <=> ( r1_tarski @ ( k1_relat_1 @ B ) @ A ) ) ))).
% 0.59/0.77  thf('15', plain,
% 0.59/0.77      (![X19 : $i, X20 : $i]:
% 0.59/0.77         (~ (v4_relat_1 @ X19 @ X20)
% 0.59/0.77          | (r1_tarski @ (k1_relat_1 @ X19) @ X20)
% 0.59/0.77          | ~ (v1_relat_1 @ X19))),
% 0.59/0.77      inference('cnf', [status(esa)], [d18_relat_1])).
% 0.59/0.77  thf('16', plain,
% 0.59/0.77      ((~ (v1_relat_1 @ sk_C)
% 0.59/0.77        | (r1_tarski @ (k1_relat_1 @ sk_C) @ (k1_tarski @ sk_A)))),
% 0.59/0.77      inference('sup-', [status(thm)], ['14', '15'])).
% 0.59/0.77  thf('17', plain,
% 0.59/0.77      ((m1_subset_1 @ sk_C @ 
% 0.59/0.77        (k1_zfmisc_1 @ (k2_zfmisc_1 @ (k1_tarski @ sk_A) @ sk_B_1)))),
% 0.59/0.77      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.59/0.77  thf(cc1_relset_1, axiom,
% 0.59/0.77    (![A:$i,B:$i,C:$i]:
% 0.59/0.77     ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) =>
% 0.59/0.77       ( v1_relat_1 @ C ) ))).
% 0.59/0.77  thf('18', plain,
% 0.59/0.77      (![X26 : $i, X27 : $i, X28 : $i]:
% 0.59/0.77         ((v1_relat_1 @ X26)
% 0.59/0.77          | ~ (m1_subset_1 @ X26 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X27 @ X28))))),
% 0.59/0.77      inference('cnf', [status(esa)], [cc1_relset_1])).
% 0.59/0.77  thf('19', plain, ((v1_relat_1 @ sk_C)),
% 0.59/0.77      inference('sup-', [status(thm)], ['17', '18'])).
% 0.59/0.77  thf('20', plain, ((r1_tarski @ (k1_relat_1 @ sk_C) @ (k1_tarski @ sk_A))),
% 0.59/0.77      inference('demod', [status(thm)], ['16', '19'])).
% 0.59/0.77  thf(l3_zfmisc_1, axiom,
% 0.59/0.77    (![A:$i,B:$i]:
% 0.59/0.77     ( ( r1_tarski @ A @ ( k1_tarski @ B ) ) <=>
% 0.59/0.77       ( ( ( A ) = ( k1_xboole_0 ) ) | ( ( A ) = ( k1_tarski @ B ) ) ) ))).
% 0.59/0.77  thf('21', plain,
% 0.59/0.77      (![X12 : $i, X13 : $i]:
% 0.59/0.77         (((X13) = (k1_tarski @ X12))
% 0.59/0.77          | ((X13) = (k1_xboole_0))
% 0.59/0.77          | ~ (r1_tarski @ X13 @ (k1_tarski @ X12)))),
% 0.59/0.77      inference('cnf', [status(esa)], [l3_zfmisc_1])).
% 0.59/0.77  thf('22', plain,
% 0.59/0.77      ((((k1_relat_1 @ sk_C) = (k1_xboole_0))
% 0.59/0.77        | ((k1_relat_1 @ sk_C) = (k1_tarski @ sk_A)))),
% 0.59/0.77      inference('sup-', [status(thm)], ['20', '21'])).
% 0.59/0.77  thf(t14_funct_1, axiom,
% 0.59/0.77    (![A:$i,B:$i]:
% 0.59/0.77     ( ( ( v1_relat_1 @ B ) & ( v1_funct_1 @ B ) ) =>
% 0.59/0.77       ( ( ( k1_relat_1 @ B ) = ( k1_tarski @ A ) ) =>
% 0.59/0.77         ( ( k2_relat_1 @ B ) = ( k1_tarski @ ( k1_funct_1 @ B @ A ) ) ) ) ))).
% 0.59/0.77  thf('23', plain,
% 0.59/0.77      (![X22 : $i, X23 : $i]:
% 0.59/0.77         (((k1_relat_1 @ X23) != (k1_tarski @ X22))
% 0.59/0.77          | ((k2_relat_1 @ X23) = (k1_tarski @ (k1_funct_1 @ X23 @ X22)))
% 0.59/0.77          | ~ (v1_funct_1 @ X23)
% 0.59/0.77          | ~ (v1_relat_1 @ X23))),
% 0.59/0.77      inference('cnf', [status(esa)], [t14_funct_1])).
% 0.59/0.77  thf('24', plain,
% 0.59/0.77      (![X0 : $i]:
% 0.59/0.77         (((k1_relat_1 @ X0) != (k1_relat_1 @ sk_C))
% 0.59/0.77          | ((k1_relat_1 @ sk_C) = (k1_xboole_0))
% 0.59/0.77          | ~ (v1_relat_1 @ X0)
% 0.59/0.77          | ~ (v1_funct_1 @ X0)
% 0.59/0.77          | ((k2_relat_1 @ X0) = (k1_tarski @ (k1_funct_1 @ X0 @ sk_A))))),
% 0.59/0.77      inference('sup-', [status(thm)], ['22', '23'])).
% 0.59/0.77  thf('25', plain,
% 0.59/0.77      ((((k2_relat_1 @ sk_C) = (k1_tarski @ (k1_funct_1 @ sk_C @ sk_A)))
% 0.59/0.77        | ~ (v1_funct_1 @ sk_C)
% 0.59/0.77        | ~ (v1_relat_1 @ sk_C)
% 0.59/0.77        | ((k1_relat_1 @ sk_C) = (k1_xboole_0)))),
% 0.59/0.77      inference('eq_res', [status(thm)], ['24'])).
% 0.59/0.77  thf('26', plain, ((v1_funct_1 @ sk_C)),
% 0.59/0.77      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.59/0.77  thf('27', plain, ((v1_relat_1 @ sk_C)),
% 0.59/0.77      inference('sup-', [status(thm)], ['17', '18'])).
% 0.59/0.77  thf('28', plain,
% 0.59/0.77      ((((k2_relat_1 @ sk_C) = (k1_tarski @ (k1_funct_1 @ sk_C @ sk_A)))
% 0.59/0.77        | ((k1_relat_1 @ sk_C) = (k1_xboole_0)))),
% 0.59/0.77      inference('demod', [status(thm)], ['25', '26', '27'])).
% 0.59/0.77  thf('29', plain,
% 0.59/0.77      (((k2_relset_1 @ (k1_tarski @ sk_A) @ sk_B_1 @ sk_C)
% 0.59/0.77         != (k1_tarski @ (k1_funct_1 @ sk_C @ sk_A)))),
% 0.59/0.77      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.59/0.77  thf('30', plain,
% 0.59/0.77      ((m1_subset_1 @ sk_C @ 
% 0.59/0.77        (k1_zfmisc_1 @ (k2_zfmisc_1 @ (k1_tarski @ sk_A) @ sk_B_1)))),
% 0.59/0.77      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.59/0.77  thf(redefinition_k2_relset_1, axiom,
% 0.59/0.77    (![A:$i,B:$i,C:$i]:
% 0.59/0.77     ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) =>
% 0.59/0.77       ( ( k2_relset_1 @ A @ B @ C ) = ( k2_relat_1 @ C ) ) ))).
% 0.59/0.77  thf('31', plain,
% 0.59/0.77      (![X32 : $i, X33 : $i, X34 : $i]:
% 0.59/0.77         (((k2_relset_1 @ X33 @ X34 @ X32) = (k2_relat_1 @ X32))
% 0.59/0.77          | ~ (m1_subset_1 @ X32 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X33 @ X34))))),
% 0.59/0.77      inference('cnf', [status(esa)], [redefinition_k2_relset_1])).
% 0.59/0.77  thf('32', plain,
% 0.59/0.77      (((k2_relset_1 @ (k1_tarski @ sk_A) @ sk_B_1 @ sk_C)
% 0.59/0.77         = (k2_relat_1 @ sk_C))),
% 0.59/0.77      inference('sup-', [status(thm)], ['30', '31'])).
% 0.59/0.77  thf('33', plain,
% 0.59/0.77      (((k2_relat_1 @ sk_C) != (k1_tarski @ (k1_funct_1 @ sk_C @ sk_A)))),
% 0.59/0.77      inference('demod', [status(thm)], ['29', '32'])).
% 0.59/0.77  thf('34', plain, (((k1_relat_1 @ sk_C) = (k1_xboole_0))),
% 0.59/0.77      inference('simplify_reflect-', [status(thm)], ['28', '33'])).
% 0.59/0.77  thf(t64_relat_1, axiom,
% 0.59/0.77    (![A:$i]:
% 0.59/0.77     ( ( v1_relat_1 @ A ) =>
% 0.59/0.77       ( ( ( ( k1_relat_1 @ A ) = ( k1_xboole_0 ) ) | 
% 0.59/0.77           ( ( k2_relat_1 @ A ) = ( k1_xboole_0 ) ) ) =>
% 0.59/0.77         ( ( A ) = ( k1_xboole_0 ) ) ) ))).
% 0.59/0.77  thf('35', plain,
% 0.59/0.77      (![X21 : $i]:
% 0.59/0.77         (((k1_relat_1 @ X21) != (k1_xboole_0))
% 0.59/0.77          | ((X21) = (k1_xboole_0))
% 0.59/0.77          | ~ (v1_relat_1 @ X21))),
% 0.59/0.77      inference('cnf', [status(esa)], [t64_relat_1])).
% 0.59/0.77  thf('36', plain,
% 0.59/0.77      ((((k1_xboole_0) != (k1_xboole_0))
% 0.59/0.77        | ~ (v1_relat_1 @ sk_C)
% 0.59/0.77        | ((sk_C) = (k1_xboole_0)))),
% 0.59/0.77      inference('sup-', [status(thm)], ['34', '35'])).
% 0.59/0.77  thf('37', plain, ((v1_relat_1 @ sk_C)),
% 0.59/0.77      inference('sup-', [status(thm)], ['17', '18'])).
% 0.59/0.77  thf('38', plain,
% 0.59/0.77      ((((k1_xboole_0) != (k1_xboole_0)) | ((sk_C) = (k1_xboole_0)))),
% 0.59/0.77      inference('demod', [status(thm)], ['36', '37'])).
% 0.59/0.77  thf('39', plain, (((sk_C) = (k1_xboole_0))),
% 0.59/0.77      inference('simplify', [status(thm)], ['38'])).
% 0.59/0.77  thf('40', plain,
% 0.59/0.77      (((k1_tarski @ sk_A)
% 0.59/0.77         = (k1_relset_1 @ (k1_tarski @ sk_A) @ sk_B_1 @ k1_xboole_0))),
% 0.59/0.77      inference('demod', [status(thm)], ['11', '39'])).
% 0.59/0.77  thf(t4_subset_1, axiom,
% 0.59/0.77    (![A:$i]: ( m1_subset_1 @ k1_xboole_0 @ ( k1_zfmisc_1 @ A ) ))).
% 0.59/0.77  thf('41', plain,
% 0.59/0.77      (![X15 : $i]: (m1_subset_1 @ k1_xboole_0 @ (k1_zfmisc_1 @ X15))),
% 0.59/0.77      inference('cnf', [status(esa)], [t4_subset_1])).
% 0.59/0.77  thf(t22_relset_1, axiom,
% 0.59/0.77    (![A:$i,B:$i,C:$i]:
% 0.59/0.77     ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ B @ A ) ) ) =>
% 0.59/0.77       ( ( ![D:$i]:
% 0.59/0.77           ( ~( ( r2_hidden @ D @ B ) & 
% 0.59/0.77                ( ![E:$i]: ( ~( r2_hidden @ ( k4_tarski @ D @ E ) @ C ) ) ) ) ) ) <=>
% 0.59/0.77         ( ( k1_relset_1 @ B @ A @ C ) = ( B ) ) ) ))).
% 0.59/0.77  thf('42', plain,
% 0.59/0.77      (![X35 : $i, X36 : $i, X37 : $i, X38 : $i]:
% 0.59/0.77         (((k1_relset_1 @ X35 @ X36 @ X37) != (X35))
% 0.59/0.77          | ~ (r2_hidden @ X38 @ X35)
% 0.59/0.77          | (r2_hidden @ (k4_tarski @ X38 @ (sk_E @ X38 @ X37)) @ X37)
% 0.59/0.77          | ~ (m1_subset_1 @ X37 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X35 @ X36))))),
% 0.59/0.77      inference('cnf', [status(esa)], [t22_relset_1])).
% 0.59/0.77  thf('43', plain,
% 0.59/0.77      (![X0 : $i, X1 : $i, X2 : $i]:
% 0.59/0.77         ((r2_hidden @ (k4_tarski @ X2 @ (sk_E @ X2 @ k1_xboole_0)) @ 
% 0.59/0.77           k1_xboole_0)
% 0.59/0.77          | ~ (r2_hidden @ X2 @ X1)
% 0.59/0.77          | ((k1_relset_1 @ X1 @ X0 @ k1_xboole_0) != (X1)))),
% 0.59/0.77      inference('sup-', [status(thm)], ['41', '42'])).
% 0.59/0.77  thf('44', plain,
% 0.59/0.77      (![X0 : $i]:
% 0.59/0.77         (((k1_tarski @ sk_A) != (k1_tarski @ sk_A))
% 0.59/0.77          | ~ (r2_hidden @ X0 @ (k1_tarski @ sk_A))
% 0.59/0.77          | (r2_hidden @ (k4_tarski @ X0 @ (sk_E @ X0 @ k1_xboole_0)) @ 
% 0.59/0.77             k1_xboole_0))),
% 0.59/0.77      inference('sup-', [status(thm)], ['40', '43'])).
% 0.59/0.77  thf('45', plain,
% 0.59/0.77      (![X0 : $i]:
% 0.59/0.77         ((r2_hidden @ (k4_tarski @ X0 @ (sk_E @ X0 @ k1_xboole_0)) @ 
% 0.59/0.77           k1_xboole_0)
% 0.59/0.77          | ~ (r2_hidden @ X0 @ (k1_tarski @ sk_A)))),
% 0.59/0.77      inference('simplify', [status(thm)], ['44'])).
% 0.59/0.77  thf('46', plain,
% 0.59/0.77      (((v1_xboole_0 @ (k1_tarski @ sk_A))
% 0.59/0.77        | (r2_hidden @ 
% 0.59/0.77           (k4_tarski @ (sk_B @ (k1_tarski @ sk_A)) @ 
% 0.59/0.77            (sk_E @ (sk_B @ (k1_tarski @ sk_A)) @ k1_xboole_0)) @ 
% 0.59/0.77           k1_xboole_0))),
% 0.59/0.77      inference('sup-', [status(thm)], ['0', '45'])).
% 0.59/0.77  thf(t69_enumset1, axiom,
% 0.59/0.77    (![A:$i]: ( ( k2_tarski @ A @ A ) = ( k1_tarski @ A ) ))).
% 0.59/0.77  thf('47', plain, (![X4 : $i]: ((k2_tarski @ X4 @ X4) = (k1_tarski @ X4))),
% 0.59/0.77      inference('cnf', [status(esa)], [t69_enumset1])).
% 0.59/0.77  thf(fc3_xboole_0, axiom,
% 0.59/0.77    (![A:$i,B:$i]: ( ~( v1_xboole_0 @ ( k2_tarski @ A @ B ) ) ))).
% 0.59/0.77  thf('48', plain,
% 0.59/0.77      (![X10 : $i, X11 : $i]: ~ (v1_xboole_0 @ (k2_tarski @ X10 @ X11))),
% 0.59/0.77      inference('cnf', [status(esa)], [fc3_xboole_0])).
% 0.59/0.77  thf('49', plain, (![X0 : $i]: ~ (v1_xboole_0 @ (k1_tarski @ X0))),
% 0.59/0.77      inference('sup-', [status(thm)], ['47', '48'])).
% 0.59/0.77  thf('50', plain,
% 0.59/0.77      ((r2_hidden @ 
% 0.59/0.77        (k4_tarski @ (sk_B @ (k1_tarski @ sk_A)) @ 
% 0.59/0.77         (sk_E @ (sk_B @ (k1_tarski @ sk_A)) @ k1_xboole_0)) @ 
% 0.59/0.77        k1_xboole_0)),
% 0.59/0.77      inference('clc', [status(thm)], ['46', '49'])).
% 0.59/0.77  thf('51', plain,
% 0.59/0.77      (![X0 : $i, X1 : $i]: (~ (r2_hidden @ X0 @ X1) | ~ (v1_xboole_0 @ X1))),
% 0.59/0.77      inference('cnf', [status(esa)], [d1_xboole_0])).
% 0.59/0.77  thf('52', plain, (~ (v1_xboole_0 @ k1_xboole_0)),
% 0.59/0.77      inference('sup-', [status(thm)], ['50', '51'])).
% 0.59/0.77  thf(t2_xboole_1, axiom, (![A:$i]: ( r1_tarski @ k1_xboole_0 @ A ))).
% 0.59/0.77  thf('53', plain, (![X3 : $i]: (r1_tarski @ k1_xboole_0 @ X3)),
% 0.59/0.77      inference('cnf', [status(esa)], [t2_xboole_1])).
% 0.59/0.77  thf('54', plain,
% 0.59/0.77      (![X2 : $i]: ((v1_xboole_0 @ X2) | (r2_hidden @ (sk_B @ X2) @ X2))),
% 0.59/0.77      inference('cnf', [status(esa)], [d1_xboole_0])).
% 0.59/0.77  thf(t7_ordinal1, axiom,
% 0.59/0.77    (![A:$i,B:$i]: ( ~( ( r2_hidden @ A @ B ) & ( r1_tarski @ B @ A ) ) ))).
% 0.59/0.77  thf('55', plain,
% 0.59/0.77      (![X24 : $i, X25 : $i]:
% 0.59/0.77         (~ (r2_hidden @ X24 @ X25) | ~ (r1_tarski @ X25 @ X24))),
% 0.59/0.77      inference('cnf', [status(esa)], [t7_ordinal1])).
% 0.59/0.77  thf('56', plain,
% 0.59/0.77      (![X0 : $i]: ((v1_xboole_0 @ X0) | ~ (r1_tarski @ X0 @ (sk_B @ X0)))),
% 0.59/0.77      inference('sup-', [status(thm)], ['54', '55'])).
% 0.59/0.77  thf('57', plain, ((v1_xboole_0 @ k1_xboole_0)),
% 0.59/0.77      inference('sup-', [status(thm)], ['53', '56'])).
% 0.59/0.77  thf('58', plain, ($false), inference('demod', [status(thm)], ['52', '57'])).
% 0.59/0.77  
% 0.59/0.77  % SZS output end Refutation
% 0.59/0.77  
% 0.59/0.78  % Zipperpin 1.5 exiting
%------------------------------------------------------------------------------
