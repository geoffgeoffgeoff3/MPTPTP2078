%------------------------------------------------------------------------------
% File       : Zipperpin---2.0
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_portfolio.sh /export/starexec/sandbox2/benchmark/theBenchmark.p /export/starexec/sandbox2/tmp/tmp.0hilrTcCMh

% Computer   : n014.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 13:53:24 EST 2020

% Result     : Theorem 1.73s
% Output     : Refutation 1.73s
% Verified   : 
% Statistics : Number of formulae       :  113 ( 287 expanded)
%              Number of leaves         :   42 ( 103 expanded)
%              Depth                    :   18
%              Number of atoms          :  808 (3312 expanded)
%              Number of equality atoms :   54 ( 203 expanded)
%              Maximal formula depth    :   16 (   6 average)

% Comments   : 
%------------------------------------------------------------------------------
thf(r1_tarski_type,type,(
    r1_tarski: $i > $i > $o )).

thf(m1_subset_1_type,type,(
    m1_subset_1: $i > $i > $o )).

thf(k2_zfmisc_1_type,type,(
    k2_zfmisc_1: $i > $i > $i )).

thf(v4_relat_1_type,type,(
    v4_relat_1: $i > $i > $o )).

thf(zip_tseitin_0_type,type,(
    zip_tseitin_0: $i > $i > $o )).

thf(k1_relat_1_type,type,(
    k1_relat_1: $i > $i )).

thf(v5_relat_1_type,type,(
    v5_relat_1: $i > $i > $o )).

thf(sk_B_type,type,(
    sk_B: $i )).

thf(k1_xboole_0_type,type,(
    k1_xboole_0: $i )).

thf(sk_A_type,type,(
    sk_A: $i )).

thf(v1_funct_2_type,type,(
    v1_funct_2: $i > $i > $i > $o )).

thf(sk_C_2_type,type,(
    sk_C_2: $i )).

thf(k1_relset_1_type,type,(
    k1_relset_1: $i > $i > $i > $i )).

thf(k2_relset_1_type,type,(
    k2_relset_1: $i > $i > $i > $i )).

thf(r2_hidden_type,type,(
    r2_hidden: $i > $i > $o )).

thf(sk_E_type,type,(
    sk_E: $i > $i )).

thf(zip_tseitin_1_type,type,(
    zip_tseitin_1: $i > $i > $i > $o )).

thf(k2_relat_1_type,type,(
    k2_relat_1: $i > $i )).

thf(k1_zfmisc_1_type,type,(
    k1_zfmisc_1: $i > $i )).

thf(v1_funct_1_type,type,(
    v1_funct_1: $i > $o )).

thf(v1_relat_1_type,type,(
    v1_relat_1: $i > $o )).

thf(k1_funct_1_type,type,(
    k1_funct_1: $i > $i > $i )).

thf(sk_C_type,type,(
    sk_C: $i > $i > $i )).

thf(t2_tarski,axiom,(
    ! [A: $i,B: $i] :
      ( ! [C: $i] :
          ( ( r2_hidden @ C @ A )
        <=> ( r2_hidden @ C @ B ) )
     => ( A = B ) ) )).

thf('0',plain,(
    ! [X0: $i,X1: $i] :
      ( ( X1 = X0 )
      | ( r2_hidden @ ( sk_C @ X0 @ X1 ) @ X0 )
      | ( r2_hidden @ ( sk_C @ X0 @ X1 ) @ X1 ) ) ),
    inference(cnf,[status(esa)],[t2_tarski])).

thf(t16_funct_2,conjecture,(
    ! [A: $i,B: $i,C: $i] :
      ( ( ( v1_funct_1 @ C )
        & ( v1_funct_2 @ C @ A @ B )
        & ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) )
     => ( ! [D: $i] :
            ~ ( ( r2_hidden @ D @ B )
              & ! [E: $i] :
                  ~ ( ( r2_hidden @ E @ A )
                    & ( D
                      = ( k1_funct_1 @ C @ E ) ) ) )
       => ( ( k2_relset_1 @ A @ B @ C )
          = B ) ) ) )).

thf(zf_stmt_0,negated_conjecture,(
    ~ ! [A: $i,B: $i,C: $i] :
        ( ( ( v1_funct_1 @ C )
          & ( v1_funct_2 @ C @ A @ B )
          & ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) )
       => ( ! [D: $i] :
              ~ ( ( r2_hidden @ D @ B )
                & ! [E: $i] :
                    ~ ( ( r2_hidden @ E @ A )
                      & ( D
                        = ( k1_funct_1 @ C @ E ) ) ) )
         => ( ( k2_relset_1 @ A @ B @ C )
            = B ) ) ) ),
    inference('cnf.neg',[status(esa)],[t16_funct_2])).

thf('1',plain,(
    m1_subset_1 @ sk_C_2 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_A @ sk_B ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(cc2_relset_1,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) )
     => ( ( v4_relat_1 @ C @ A )
        & ( v5_relat_1 @ C @ B ) ) ) )).

thf('2',plain,(
    ! [X28: $i,X29: $i,X30: $i] :
      ( ( v5_relat_1 @ X28 @ X30 )
      | ~ ( m1_subset_1 @ X28 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X29 @ X30 ) ) ) ) ),
    inference(cnf,[status(esa)],[cc2_relset_1])).

thf('3',plain,(
    v5_relat_1 @ sk_C_2 @ sk_B ),
    inference('sup-',[status(thm)],['1','2'])).

thf(d19_relat_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( v1_relat_1 @ B )
     => ( ( v5_relat_1 @ B @ A )
      <=> ( r1_tarski @ ( k2_relat_1 @ B ) @ A ) ) ) )).

thf('4',plain,(
    ! [X11: $i,X12: $i] :
      ( ~ ( v5_relat_1 @ X11 @ X12 )
      | ( r1_tarski @ ( k2_relat_1 @ X11 ) @ X12 )
      | ~ ( v1_relat_1 @ X11 ) ) ),
    inference(cnf,[status(esa)],[d19_relat_1])).

thf('5',plain,
    ( ~ ( v1_relat_1 @ sk_C_2 )
    | ( r1_tarski @ ( k2_relat_1 @ sk_C_2 ) @ sk_B ) ),
    inference('sup-',[status(thm)],['3','4'])).

thf('6',plain,(
    m1_subset_1 @ sk_C_2 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_A @ sk_B ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(cc2_relat_1,axiom,(
    ! [A: $i] :
      ( ( v1_relat_1 @ A )
     => ! [B: $i] :
          ( ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ A ) )
         => ( v1_relat_1 @ B ) ) ) )).

thf('7',plain,(
    ! [X9: $i,X10: $i] :
      ( ~ ( m1_subset_1 @ X9 @ ( k1_zfmisc_1 @ X10 ) )
      | ( v1_relat_1 @ X9 )
      | ~ ( v1_relat_1 @ X10 ) ) ),
    inference(cnf,[status(esa)],[cc2_relat_1])).

thf('8',plain,
    ( ~ ( v1_relat_1 @ ( k2_zfmisc_1 @ sk_A @ sk_B ) )
    | ( v1_relat_1 @ sk_C_2 ) ),
    inference('sup-',[status(thm)],['6','7'])).

thf(fc6_relat_1,axiom,(
    ! [A: $i,B: $i] :
      ( v1_relat_1 @ ( k2_zfmisc_1 @ A @ B ) ) )).

thf('9',plain,(
    ! [X13: $i,X14: $i] :
      ( v1_relat_1 @ ( k2_zfmisc_1 @ X13 @ X14 ) ) ),
    inference(cnf,[status(esa)],[fc6_relat_1])).

thf('10',plain,(
    v1_relat_1 @ sk_C_2 ),
    inference(demod,[status(thm)],['8','9'])).

thf('11',plain,(
    r1_tarski @ ( k2_relat_1 @ sk_C_2 ) @ sk_B ),
    inference(demod,[status(thm)],['5','10'])).

thf(t3_subset,axiom,(
    ! [A: $i,B: $i] :
      ( ( m1_subset_1 @ A @ ( k1_zfmisc_1 @ B ) )
    <=> ( r1_tarski @ A @ B ) ) )).

thf('12',plain,(
    ! [X6: $i,X8: $i] :
      ( ( m1_subset_1 @ X6 @ ( k1_zfmisc_1 @ X8 ) )
      | ~ ( r1_tarski @ X6 @ X8 ) ) ),
    inference(cnf,[status(esa)],[t3_subset])).

thf('13',plain,(
    m1_subset_1 @ ( k2_relat_1 @ sk_C_2 ) @ ( k1_zfmisc_1 @ sk_B ) ),
    inference('sup-',[status(thm)],['11','12'])).

thf(l3_subset_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ A ) )
     => ! [C: $i] :
          ( ( r2_hidden @ C @ B )
         => ( r2_hidden @ C @ A ) ) ) )).

thf('14',plain,(
    ! [X3: $i,X4: $i,X5: $i] :
      ( ~ ( r2_hidden @ X3 @ X4 )
      | ( r2_hidden @ X3 @ X5 )
      | ~ ( m1_subset_1 @ X4 @ ( k1_zfmisc_1 @ X5 ) ) ) ),
    inference(cnf,[status(esa)],[l3_subset_1])).

thf('15',plain,(
    ! [X0: $i] :
      ( ( r2_hidden @ X0 @ sk_B )
      | ~ ( r2_hidden @ X0 @ ( k2_relat_1 @ sk_C_2 ) ) ) ),
    inference('sup-',[status(thm)],['13','14'])).

thf('16',plain,(
    ! [X0: $i] :
      ( ( r2_hidden @ ( sk_C @ ( k2_relat_1 @ sk_C_2 ) @ X0 ) @ X0 )
      | ( X0
        = ( k2_relat_1 @ sk_C_2 ) )
      | ( r2_hidden @ ( sk_C @ ( k2_relat_1 @ sk_C_2 ) @ X0 ) @ sk_B ) ) ),
    inference('sup-',[status(thm)],['0','15'])).

thf('17',plain,
    ( ( sk_B
      = ( k2_relat_1 @ sk_C_2 ) )
    | ( r2_hidden @ ( sk_C @ ( k2_relat_1 @ sk_C_2 ) @ sk_B ) @ sk_B ) ),
    inference(eq_fact,[status(thm)],['16'])).

thf('18',plain,(
    ( k2_relset_1 @ sk_A @ sk_B @ sk_C_2 )
 != sk_B ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('19',plain,(
    m1_subset_1 @ sk_C_2 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_A @ sk_B ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(redefinition_k2_relset_1,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) )
     => ( ( k2_relset_1 @ A @ B @ C )
        = ( k2_relat_1 @ C ) ) ) )).

thf('20',plain,(
    ! [X34: $i,X35: $i,X36: $i] :
      ( ( ( k2_relset_1 @ X35 @ X36 @ X34 )
        = ( k2_relat_1 @ X34 ) )
      | ~ ( m1_subset_1 @ X34 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X35 @ X36 ) ) ) ) ),
    inference(cnf,[status(esa)],[redefinition_k2_relset_1])).

thf('21',plain,
    ( ( k2_relset_1 @ sk_A @ sk_B @ sk_C_2 )
    = ( k2_relat_1 @ sk_C_2 ) ),
    inference('sup-',[status(thm)],['19','20'])).

thf('22',plain,(
    ( k2_relat_1 @ sk_C_2 )
 != sk_B ),
    inference(demod,[status(thm)],['18','21'])).

thf('23',plain,(
    r2_hidden @ ( sk_C @ ( k2_relat_1 @ sk_C_2 ) @ sk_B ) @ sk_B ),
    inference('simplify_reflect-',[status(thm)],['17','22'])).

thf('24',plain,(
    ! [X45: $i] :
      ( ~ ( r2_hidden @ X45 @ sk_B )
      | ( r2_hidden @ ( sk_E @ X45 ) @ sk_A ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('25',plain,(
    r2_hidden @ ( sk_E @ ( sk_C @ ( k2_relat_1 @ sk_C_2 ) @ sk_B ) ) @ sk_A ),
    inference('sup-',[status(thm)],['23','24'])).

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

thf('26',plain,(
    ! [X37: $i,X38: $i] :
      ( ( zip_tseitin_0 @ X37 @ X38 )
      | ( X37 = k1_xboole_0 ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_1])).

thf(t2_xboole_1,axiom,(
    ! [A: $i] :
      ( r1_tarski @ k1_xboole_0 @ A ) )).

thf('27',plain,(
    ! [X2: $i] :
      ( r1_tarski @ k1_xboole_0 @ X2 ) ),
    inference(cnf,[status(esa)],[t2_xboole_1])).

thf('28',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( ( r1_tarski @ X0 @ X1 )
      | ( zip_tseitin_0 @ X0 @ X2 ) ) ),
    inference('sup+',[status(thm)],['26','27'])).

thf('29',plain,(
    m1_subset_1 @ sk_C_2 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_A @ sk_B ) ) ),
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

thf('30',plain,(
    ! [X42: $i,X43: $i,X44: $i] :
      ( ~ ( zip_tseitin_0 @ X42 @ X43 )
      | ( zip_tseitin_1 @ X44 @ X42 @ X43 )
      | ~ ( m1_subset_1 @ X44 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X43 @ X42 ) ) ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_5])).

thf('31',plain,
    ( ( zip_tseitin_1 @ sk_C_2 @ sk_B @ sk_A )
    | ~ ( zip_tseitin_0 @ sk_B @ sk_A ) ),
    inference('sup-',[status(thm)],['29','30'])).

thf('32',plain,(
    ! [X0: $i] :
      ( ( r1_tarski @ sk_B @ X0 )
      | ( zip_tseitin_1 @ sk_C_2 @ sk_B @ sk_A ) ) ),
    inference('sup-',[status(thm)],['28','31'])).

thf('33',plain,(
    v1_funct_2 @ sk_C_2 @ sk_A @ sk_B ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('34',plain,(
    ! [X39: $i,X40: $i,X41: $i] :
      ( ~ ( v1_funct_2 @ X41 @ X39 @ X40 )
      | ( X39
        = ( k1_relset_1 @ X39 @ X40 @ X41 ) )
      | ~ ( zip_tseitin_1 @ X41 @ X40 @ X39 ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_3])).

thf('35',plain,
    ( ~ ( zip_tseitin_1 @ sk_C_2 @ sk_B @ sk_A )
    | ( sk_A
      = ( k1_relset_1 @ sk_A @ sk_B @ sk_C_2 ) ) ),
    inference('sup-',[status(thm)],['33','34'])).

thf('36',plain,(
    m1_subset_1 @ sk_C_2 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_A @ sk_B ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(redefinition_k1_relset_1,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) )
     => ( ( k1_relset_1 @ A @ B @ C )
        = ( k1_relat_1 @ C ) ) ) )).

thf('37',plain,(
    ! [X31: $i,X32: $i,X33: $i] :
      ( ( ( k1_relset_1 @ X32 @ X33 @ X31 )
        = ( k1_relat_1 @ X31 ) )
      | ~ ( m1_subset_1 @ X31 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X32 @ X33 ) ) ) ) ),
    inference(cnf,[status(esa)],[redefinition_k1_relset_1])).

thf('38',plain,
    ( ( k1_relset_1 @ sk_A @ sk_B @ sk_C_2 )
    = ( k1_relat_1 @ sk_C_2 ) ),
    inference('sup-',[status(thm)],['36','37'])).

thf('39',plain,
    ( ~ ( zip_tseitin_1 @ sk_C_2 @ sk_B @ sk_A )
    | ( sk_A
      = ( k1_relat_1 @ sk_C_2 ) ) ),
    inference(demod,[status(thm)],['35','38'])).

thf('40',plain,(
    ! [X0: $i] :
      ( ( r1_tarski @ sk_B @ X0 )
      | ( sk_A
        = ( k1_relat_1 @ sk_C_2 ) ) ) ),
    inference('sup-',[status(thm)],['32','39'])).

thf('41',plain,(
    ! [X0: $i,X1: $i] :
      ( ( X1 = X0 )
      | ( r2_hidden @ ( sk_C @ X0 @ X1 ) @ X0 )
      | ( r2_hidden @ ( sk_C @ X0 @ X1 ) @ X1 ) ) ),
    inference(cnf,[status(esa)],[t2_tarski])).

thf(t7_ordinal1,axiom,(
    ! [A: $i,B: $i] :
      ~ ( ( r2_hidden @ A @ B )
        & ( r1_tarski @ B @ A ) ) )).

thf('42',plain,(
    ! [X26: $i,X27: $i] :
      ( ~ ( r2_hidden @ X26 @ X27 )
      | ~ ( r1_tarski @ X27 @ X26 ) ) ),
    inference(cnf,[status(esa)],[t7_ordinal1])).

thf('43',plain,(
    ! [X0: $i,X1: $i] :
      ( ( r2_hidden @ ( sk_C @ X0 @ X1 ) @ X1 )
      | ( X1 = X0 )
      | ~ ( r1_tarski @ X0 @ ( sk_C @ X0 @ X1 ) ) ) ),
    inference('sup-',[status(thm)],['41','42'])).

thf('44',plain,(
    ! [X0: $i] :
      ( ( sk_A
        = ( k1_relat_1 @ sk_C_2 ) )
      | ( X0 = sk_B )
      | ( r2_hidden @ ( sk_C @ sk_B @ X0 ) @ X0 ) ) ),
    inference('sup-',[status(thm)],['40','43'])).

thf('45',plain,(
    ! [X0: $i] :
      ( ( r2_hidden @ X0 @ sk_B )
      | ~ ( r2_hidden @ X0 @ ( k2_relat_1 @ sk_C_2 ) ) ) ),
    inference('sup-',[status(thm)],['13','14'])).

thf('46',plain,
    ( ( ( k2_relat_1 @ sk_C_2 )
      = sk_B )
    | ( sk_A
      = ( k1_relat_1 @ sk_C_2 ) )
    | ( r2_hidden @ ( sk_C @ sk_B @ ( k2_relat_1 @ sk_C_2 ) ) @ sk_B ) ),
    inference('sup-',[status(thm)],['44','45'])).

thf('47',plain,(
    ( k2_relat_1 @ sk_C_2 )
 != sk_B ),
    inference(demod,[status(thm)],['18','21'])).

thf('48',plain,
    ( ( sk_A
      = ( k1_relat_1 @ sk_C_2 ) )
    | ( r2_hidden @ ( sk_C @ sk_B @ ( k2_relat_1 @ sk_C_2 ) ) @ sk_B ) ),
    inference('simplify_reflect-',[status(thm)],['46','47'])).

thf('49',plain,(
    ! [X26: $i,X27: $i] :
      ( ~ ( r2_hidden @ X26 @ X27 )
      | ~ ( r1_tarski @ X27 @ X26 ) ) ),
    inference(cnf,[status(esa)],[t7_ordinal1])).

thf('50',plain,
    ( ( sk_A
      = ( k1_relat_1 @ sk_C_2 ) )
    | ~ ( r1_tarski @ sk_B @ ( sk_C @ sk_B @ ( k2_relat_1 @ sk_C_2 ) ) ) ),
    inference('sup-',[status(thm)],['48','49'])).

thf('51',plain,(
    ! [X0: $i] :
      ( ( r1_tarski @ sk_B @ X0 )
      | ( sk_A
        = ( k1_relat_1 @ sk_C_2 ) ) ) ),
    inference('sup-',[status(thm)],['32','39'])).

thf('52',plain,
    ( sk_A
    = ( k1_relat_1 @ sk_C_2 ) ),
    inference(clc,[status(thm)],['50','51'])).

thf(d5_funct_1,axiom,(
    ! [A: $i] :
      ( ( ( v1_relat_1 @ A )
        & ( v1_funct_1 @ A ) )
     => ! [B: $i] :
          ( ( B
            = ( k2_relat_1 @ A ) )
        <=> ! [C: $i] :
              ( ( r2_hidden @ C @ B )
            <=> ? [D: $i] :
                  ( ( C
                    = ( k1_funct_1 @ A @ D ) )
                  & ( r2_hidden @ D @ ( k1_relat_1 @ A ) ) ) ) ) ) )).

thf('53',plain,(
    ! [X20: $i,X22: $i,X24: $i,X25: $i] :
      ( ( X22
       != ( k2_relat_1 @ X20 ) )
      | ( r2_hidden @ X24 @ X22 )
      | ~ ( r2_hidden @ X25 @ ( k1_relat_1 @ X20 ) )
      | ( X24
       != ( k1_funct_1 @ X20 @ X25 ) )
      | ~ ( v1_funct_1 @ X20 )
      | ~ ( v1_relat_1 @ X20 ) ) ),
    inference(cnf,[status(esa)],[d5_funct_1])).

thf('54',plain,(
    ! [X20: $i,X25: $i] :
      ( ~ ( v1_relat_1 @ X20 )
      | ~ ( v1_funct_1 @ X20 )
      | ~ ( r2_hidden @ X25 @ ( k1_relat_1 @ X20 ) )
      | ( r2_hidden @ ( k1_funct_1 @ X20 @ X25 ) @ ( k2_relat_1 @ X20 ) ) ) ),
    inference(simplify,[status(thm)],['53'])).

thf('55',plain,(
    ! [X0: $i] :
      ( ~ ( r2_hidden @ X0 @ sk_A )
      | ( r2_hidden @ ( k1_funct_1 @ sk_C_2 @ X0 ) @ ( k2_relat_1 @ sk_C_2 ) )
      | ~ ( v1_funct_1 @ sk_C_2 )
      | ~ ( v1_relat_1 @ sk_C_2 ) ) ),
    inference('sup-',[status(thm)],['52','54'])).

thf('56',plain,(
    v1_funct_1 @ sk_C_2 ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('57',plain,(
    v1_relat_1 @ sk_C_2 ),
    inference(demod,[status(thm)],['8','9'])).

thf('58',plain,(
    ! [X0: $i] :
      ( ~ ( r2_hidden @ X0 @ sk_A )
      | ( r2_hidden @ ( k1_funct_1 @ sk_C_2 @ X0 ) @ ( k2_relat_1 @ sk_C_2 ) ) ) ),
    inference(demod,[status(thm)],['55','56','57'])).

thf('59',plain,(
    r2_hidden @ ( k1_funct_1 @ sk_C_2 @ ( sk_E @ ( sk_C @ ( k2_relat_1 @ sk_C_2 ) @ sk_B ) ) ) @ ( k2_relat_1 @ sk_C_2 ) ),
    inference('sup-',[status(thm)],['25','58'])).

thf('60',plain,(
    r2_hidden @ ( sk_C @ ( k2_relat_1 @ sk_C_2 ) @ sk_B ) @ sk_B ),
    inference('simplify_reflect-',[status(thm)],['17','22'])).

thf('61',plain,(
    ! [X45: $i] :
      ( ~ ( r2_hidden @ X45 @ sk_B )
      | ( X45
        = ( k1_funct_1 @ sk_C_2 @ ( sk_E @ X45 ) ) ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('62',plain,
    ( ( sk_C @ ( k2_relat_1 @ sk_C_2 ) @ sk_B )
    = ( k1_funct_1 @ sk_C_2 @ ( sk_E @ ( sk_C @ ( k2_relat_1 @ sk_C_2 ) @ sk_B ) ) ) ),
    inference('sup-',[status(thm)],['60','61'])).

thf('63',plain,(
    r2_hidden @ ( sk_C @ ( k2_relat_1 @ sk_C_2 ) @ sk_B ) @ ( k2_relat_1 @ sk_C_2 ) ),
    inference(demod,[status(thm)],['59','62'])).

thf('64',plain,(
    ! [X0: $i,X1: $i] :
      ( ( X1 = X0 )
      | ~ ( r2_hidden @ ( sk_C @ X0 @ X1 ) @ X0 )
      | ~ ( r2_hidden @ ( sk_C @ X0 @ X1 ) @ X1 ) ) ),
    inference(cnf,[status(esa)],[t2_tarski])).

thf('65',plain,
    ( ~ ( r2_hidden @ ( sk_C @ ( k2_relat_1 @ sk_C_2 ) @ sk_B ) @ sk_B )
    | ( sk_B
      = ( k2_relat_1 @ sk_C_2 ) ) ),
    inference('sup-',[status(thm)],['63','64'])).

thf('66',plain,(
    r2_hidden @ ( sk_C @ ( k2_relat_1 @ sk_C_2 ) @ sk_B ) @ sk_B ),
    inference('simplify_reflect-',[status(thm)],['17','22'])).

thf('67',plain,
    ( sk_B
    = ( k2_relat_1 @ sk_C_2 ) ),
    inference(demod,[status(thm)],['65','66'])).

thf('68',plain,(
    ( k2_relat_1 @ sk_C_2 )
 != sk_B ),
    inference(demod,[status(thm)],['18','21'])).

thf('69',plain,(
    $false ),
    inference('simplify_reflect-',[status(thm)],['67','68'])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.03/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.03/0.13  % Command    : run_portfolio.sh /export/starexec/sandbox2/benchmark/theBenchmark.p /export/starexec/sandbox2/tmp/tmp.0hilrTcCMh
% 0.14/0.34  % Computer   : n014.cluster.edu
% 0.14/0.34  % Model      : x86_64 x86_64
% 0.14/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.14/0.34  % Memory     : 8042.1875MB
% 0.14/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.14/0.34  % CPULimit   : 60
% 0.14/0.34  % DateTime   : Tue Dec  1 20:34:22 EST 2020
% 0.14/0.34  % CPUTime    : 
% 0.14/0.34  % Running portfolio for 600 s
% 0.14/0.34  % File         : /export/starexec/sandbox2/benchmark/theBenchmark.p
% 0.14/0.34  % Number of cores: 8
% 0.14/0.34  % Python version: Python 3.6.8
% 0.14/0.35  % Running in FO mode
% 1.73/1.93  % Running /export/starexec/sandbox2/solver/bin/fo/fo7.sh for 78
% 1.73/1.93  % Solved by: fo/fo7.sh
% 1.73/1.93  To remain in the chosen logic fragment, unification with booleans has been disabled.
% 1.73/1.93  % done 1731 iterations in 1.480s
% 1.73/1.93  % SZS status Theorem for '/export/starexec/sandbox2/benchmark/theBenchmark.p'
% 1.73/1.93  % SZS output start Refutation
% 1.73/1.93  thf(r1_tarski_type, type, r1_tarski: $i > $i > $o).
% 1.73/1.93  thf(m1_subset_1_type, type, m1_subset_1: $i > $i > $o).
% 1.73/1.93  thf(k2_zfmisc_1_type, type, k2_zfmisc_1: $i > $i > $i).
% 1.73/1.93  thf(v4_relat_1_type, type, v4_relat_1: $i > $i > $o).
% 1.73/1.93  thf(zip_tseitin_0_type, type, zip_tseitin_0: $i > $i > $o).
% 1.73/1.93  thf(k1_relat_1_type, type, k1_relat_1: $i > $i).
% 1.73/1.93  thf(v5_relat_1_type, type, v5_relat_1: $i > $i > $o).
% 1.73/1.93  thf(sk_B_type, type, sk_B: $i).
% 1.73/1.93  thf(k1_xboole_0_type, type, k1_xboole_0: $i).
% 1.73/1.93  thf(sk_A_type, type, sk_A: $i).
% 1.73/1.93  thf(v1_funct_2_type, type, v1_funct_2: $i > $i > $i > $o).
% 1.73/1.93  thf(sk_C_2_type, type, sk_C_2: $i).
% 1.73/1.93  thf(k1_relset_1_type, type, k1_relset_1: $i > $i > $i > $i).
% 1.73/1.93  thf(k2_relset_1_type, type, k2_relset_1: $i > $i > $i > $i).
% 1.73/1.93  thf(r2_hidden_type, type, r2_hidden: $i > $i > $o).
% 1.73/1.93  thf(sk_E_type, type, sk_E: $i > $i).
% 1.73/1.93  thf(zip_tseitin_1_type, type, zip_tseitin_1: $i > $i > $i > $o).
% 1.73/1.93  thf(k2_relat_1_type, type, k2_relat_1: $i > $i).
% 1.73/1.93  thf(k1_zfmisc_1_type, type, k1_zfmisc_1: $i > $i).
% 1.73/1.93  thf(v1_funct_1_type, type, v1_funct_1: $i > $o).
% 1.73/1.93  thf(v1_relat_1_type, type, v1_relat_1: $i > $o).
% 1.73/1.93  thf(k1_funct_1_type, type, k1_funct_1: $i > $i > $i).
% 1.73/1.93  thf(sk_C_type, type, sk_C: $i > $i > $i).
% 1.73/1.93  thf(t2_tarski, axiom,
% 1.73/1.93    (![A:$i,B:$i]:
% 1.73/1.93     ( ( ![C:$i]: ( ( r2_hidden @ C @ A ) <=> ( r2_hidden @ C @ B ) ) ) =>
% 1.73/1.93       ( ( A ) = ( B ) ) ))).
% 1.73/1.93  thf('0', plain,
% 1.73/1.93      (![X0 : $i, X1 : $i]:
% 1.73/1.93         (((X1) = (X0))
% 1.73/1.93          | (r2_hidden @ (sk_C @ X0 @ X1) @ X0)
% 1.73/1.93          | (r2_hidden @ (sk_C @ X0 @ X1) @ X1))),
% 1.73/1.93      inference('cnf', [status(esa)], [t2_tarski])).
% 1.73/1.93  thf(t16_funct_2, conjecture,
% 1.73/1.93    (![A:$i,B:$i,C:$i]:
% 1.73/1.93     ( ( ( v1_funct_1 @ C ) & ( v1_funct_2 @ C @ A @ B ) & 
% 1.73/1.93         ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) ) =>
% 1.73/1.93       ( ( ![D:$i]:
% 1.73/1.93           ( ~( ( r2_hidden @ D @ B ) & 
% 1.73/1.93                ( ![E:$i]:
% 1.73/1.93                  ( ~( ( r2_hidden @ E @ A ) & 
% 1.73/1.93                       ( ( D ) = ( k1_funct_1 @ C @ E ) ) ) ) ) ) ) ) =>
% 1.73/1.93         ( ( k2_relset_1 @ A @ B @ C ) = ( B ) ) ) ))).
% 1.73/1.93  thf(zf_stmt_0, negated_conjecture,
% 1.73/1.93    (~( ![A:$i,B:$i,C:$i]:
% 1.73/1.93        ( ( ( v1_funct_1 @ C ) & ( v1_funct_2 @ C @ A @ B ) & 
% 1.73/1.93            ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) ) =>
% 1.73/1.93          ( ( ![D:$i]:
% 1.73/1.93              ( ~( ( r2_hidden @ D @ B ) & 
% 1.73/1.93                   ( ![E:$i]:
% 1.73/1.93                     ( ~( ( r2_hidden @ E @ A ) & 
% 1.73/1.93                          ( ( D ) = ( k1_funct_1 @ C @ E ) ) ) ) ) ) ) ) =>
% 1.73/1.93            ( ( k2_relset_1 @ A @ B @ C ) = ( B ) ) ) ) )),
% 1.73/1.93    inference('cnf.neg', [status(esa)], [t16_funct_2])).
% 1.73/1.93  thf('1', plain,
% 1.73/1.93      ((m1_subset_1 @ sk_C_2 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_A @ sk_B)))),
% 1.73/1.93      inference('cnf', [status(esa)], [zf_stmt_0])).
% 1.73/1.93  thf(cc2_relset_1, axiom,
% 1.73/1.93    (![A:$i,B:$i,C:$i]:
% 1.73/1.93     ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) =>
% 1.73/1.93       ( ( v4_relat_1 @ C @ A ) & ( v5_relat_1 @ C @ B ) ) ))).
% 1.73/1.93  thf('2', plain,
% 1.73/1.93      (![X28 : $i, X29 : $i, X30 : $i]:
% 1.73/1.93         ((v5_relat_1 @ X28 @ X30)
% 1.73/1.93          | ~ (m1_subset_1 @ X28 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X29 @ X30))))),
% 1.73/1.93      inference('cnf', [status(esa)], [cc2_relset_1])).
% 1.73/1.93  thf('3', plain, ((v5_relat_1 @ sk_C_2 @ sk_B)),
% 1.73/1.93      inference('sup-', [status(thm)], ['1', '2'])).
% 1.73/1.93  thf(d19_relat_1, axiom,
% 1.73/1.93    (![A:$i,B:$i]:
% 1.73/1.93     ( ( v1_relat_1 @ B ) =>
% 1.73/1.93       ( ( v5_relat_1 @ B @ A ) <=> ( r1_tarski @ ( k2_relat_1 @ B ) @ A ) ) ))).
% 1.73/1.93  thf('4', plain,
% 1.73/1.93      (![X11 : $i, X12 : $i]:
% 1.73/1.93         (~ (v5_relat_1 @ X11 @ X12)
% 1.73/1.93          | (r1_tarski @ (k2_relat_1 @ X11) @ X12)
% 1.73/1.93          | ~ (v1_relat_1 @ X11))),
% 1.73/1.93      inference('cnf', [status(esa)], [d19_relat_1])).
% 1.73/1.93  thf('5', plain,
% 1.73/1.93      ((~ (v1_relat_1 @ sk_C_2) | (r1_tarski @ (k2_relat_1 @ sk_C_2) @ sk_B))),
% 1.73/1.93      inference('sup-', [status(thm)], ['3', '4'])).
% 1.73/1.93  thf('6', plain,
% 1.73/1.93      ((m1_subset_1 @ sk_C_2 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_A @ sk_B)))),
% 1.73/1.93      inference('cnf', [status(esa)], [zf_stmt_0])).
% 1.73/1.93  thf(cc2_relat_1, axiom,
% 1.73/1.93    (![A:$i]:
% 1.73/1.93     ( ( v1_relat_1 @ A ) =>
% 1.73/1.93       ( ![B:$i]:
% 1.73/1.93         ( ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ A ) ) => ( v1_relat_1 @ B ) ) ) ))).
% 1.73/1.93  thf('7', plain,
% 1.73/1.93      (![X9 : $i, X10 : $i]:
% 1.73/1.93         (~ (m1_subset_1 @ X9 @ (k1_zfmisc_1 @ X10))
% 1.73/1.93          | (v1_relat_1 @ X9)
% 1.73/1.93          | ~ (v1_relat_1 @ X10))),
% 1.73/1.93      inference('cnf', [status(esa)], [cc2_relat_1])).
% 1.73/1.93  thf('8', plain,
% 1.73/1.93      ((~ (v1_relat_1 @ (k2_zfmisc_1 @ sk_A @ sk_B)) | (v1_relat_1 @ sk_C_2))),
% 1.73/1.93      inference('sup-', [status(thm)], ['6', '7'])).
% 1.73/1.93  thf(fc6_relat_1, axiom,
% 1.73/1.93    (![A:$i,B:$i]: ( v1_relat_1 @ ( k2_zfmisc_1 @ A @ B ) ))).
% 1.73/1.93  thf('9', plain,
% 1.73/1.93      (![X13 : $i, X14 : $i]: (v1_relat_1 @ (k2_zfmisc_1 @ X13 @ X14))),
% 1.73/1.93      inference('cnf', [status(esa)], [fc6_relat_1])).
% 1.73/1.93  thf('10', plain, ((v1_relat_1 @ sk_C_2)),
% 1.73/1.93      inference('demod', [status(thm)], ['8', '9'])).
% 1.73/1.93  thf('11', plain, ((r1_tarski @ (k2_relat_1 @ sk_C_2) @ sk_B)),
% 1.73/1.93      inference('demod', [status(thm)], ['5', '10'])).
% 1.73/1.93  thf(t3_subset, axiom,
% 1.73/1.93    (![A:$i,B:$i]:
% 1.73/1.93     ( ( m1_subset_1 @ A @ ( k1_zfmisc_1 @ B ) ) <=> ( r1_tarski @ A @ B ) ))).
% 1.73/1.93  thf('12', plain,
% 1.73/1.93      (![X6 : $i, X8 : $i]:
% 1.73/1.93         ((m1_subset_1 @ X6 @ (k1_zfmisc_1 @ X8)) | ~ (r1_tarski @ X6 @ X8))),
% 1.73/1.93      inference('cnf', [status(esa)], [t3_subset])).
% 1.73/1.93  thf('13', plain,
% 1.73/1.93      ((m1_subset_1 @ (k2_relat_1 @ sk_C_2) @ (k1_zfmisc_1 @ sk_B))),
% 1.73/1.93      inference('sup-', [status(thm)], ['11', '12'])).
% 1.73/1.93  thf(l3_subset_1, axiom,
% 1.73/1.93    (![A:$i,B:$i]:
% 1.73/1.93     ( ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ A ) ) =>
% 1.73/1.93       ( ![C:$i]: ( ( r2_hidden @ C @ B ) => ( r2_hidden @ C @ A ) ) ) ))).
% 1.73/1.93  thf('14', plain,
% 1.73/1.93      (![X3 : $i, X4 : $i, X5 : $i]:
% 1.73/1.93         (~ (r2_hidden @ X3 @ X4)
% 1.73/1.93          | (r2_hidden @ X3 @ X5)
% 1.73/1.93          | ~ (m1_subset_1 @ X4 @ (k1_zfmisc_1 @ X5)))),
% 1.73/1.93      inference('cnf', [status(esa)], [l3_subset_1])).
% 1.73/1.93  thf('15', plain,
% 1.73/1.93      (![X0 : $i]:
% 1.73/1.93         ((r2_hidden @ X0 @ sk_B) | ~ (r2_hidden @ X0 @ (k2_relat_1 @ sk_C_2)))),
% 1.73/1.93      inference('sup-', [status(thm)], ['13', '14'])).
% 1.73/1.93  thf('16', plain,
% 1.73/1.93      (![X0 : $i]:
% 1.73/1.93         ((r2_hidden @ (sk_C @ (k2_relat_1 @ sk_C_2) @ X0) @ X0)
% 1.73/1.93          | ((X0) = (k2_relat_1 @ sk_C_2))
% 1.73/1.93          | (r2_hidden @ (sk_C @ (k2_relat_1 @ sk_C_2) @ X0) @ sk_B))),
% 1.73/1.93      inference('sup-', [status(thm)], ['0', '15'])).
% 1.73/1.93  thf('17', plain,
% 1.73/1.93      ((((sk_B) = (k2_relat_1 @ sk_C_2))
% 1.73/1.93        | (r2_hidden @ (sk_C @ (k2_relat_1 @ sk_C_2) @ sk_B) @ sk_B))),
% 1.73/1.93      inference('eq_fact', [status(thm)], ['16'])).
% 1.73/1.93  thf('18', plain, (((k2_relset_1 @ sk_A @ sk_B @ sk_C_2) != (sk_B))),
% 1.73/1.93      inference('cnf', [status(esa)], [zf_stmt_0])).
% 1.73/1.93  thf('19', plain,
% 1.73/1.93      ((m1_subset_1 @ sk_C_2 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_A @ sk_B)))),
% 1.73/1.93      inference('cnf', [status(esa)], [zf_stmt_0])).
% 1.73/1.93  thf(redefinition_k2_relset_1, axiom,
% 1.73/1.93    (![A:$i,B:$i,C:$i]:
% 1.73/1.93     ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) =>
% 1.73/1.93       ( ( k2_relset_1 @ A @ B @ C ) = ( k2_relat_1 @ C ) ) ))).
% 1.73/1.93  thf('20', plain,
% 1.73/1.93      (![X34 : $i, X35 : $i, X36 : $i]:
% 1.73/1.93         (((k2_relset_1 @ X35 @ X36 @ X34) = (k2_relat_1 @ X34))
% 1.73/1.93          | ~ (m1_subset_1 @ X34 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X35 @ X36))))),
% 1.73/1.93      inference('cnf', [status(esa)], [redefinition_k2_relset_1])).
% 1.73/1.93  thf('21', plain,
% 1.73/1.93      (((k2_relset_1 @ sk_A @ sk_B @ sk_C_2) = (k2_relat_1 @ sk_C_2))),
% 1.73/1.93      inference('sup-', [status(thm)], ['19', '20'])).
% 1.73/1.93  thf('22', plain, (((k2_relat_1 @ sk_C_2) != (sk_B))),
% 1.73/1.93      inference('demod', [status(thm)], ['18', '21'])).
% 1.73/1.93  thf('23', plain,
% 1.73/1.93      ((r2_hidden @ (sk_C @ (k2_relat_1 @ sk_C_2) @ sk_B) @ sk_B)),
% 1.73/1.93      inference('simplify_reflect-', [status(thm)], ['17', '22'])).
% 1.73/1.93  thf('24', plain,
% 1.73/1.93      (![X45 : $i]:
% 1.73/1.93         (~ (r2_hidden @ X45 @ sk_B) | (r2_hidden @ (sk_E @ X45) @ sk_A))),
% 1.73/1.93      inference('cnf', [status(esa)], [zf_stmt_0])).
% 1.73/1.93  thf('25', plain,
% 1.73/1.93      ((r2_hidden @ (sk_E @ (sk_C @ (k2_relat_1 @ sk_C_2) @ sk_B)) @ sk_A)),
% 1.73/1.93      inference('sup-', [status(thm)], ['23', '24'])).
% 1.73/1.93  thf(d1_funct_2, axiom,
% 1.73/1.93    (![A:$i,B:$i,C:$i]:
% 1.73/1.93     ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) =>
% 1.73/1.93       ( ( ( ( B ) = ( k1_xboole_0 ) ) =>
% 1.73/1.93           ( ( ( v1_funct_2 @ C @ A @ B ) <=> ( ( C ) = ( k1_xboole_0 ) ) ) | 
% 1.73/1.93             ( ( A ) = ( k1_xboole_0 ) ) ) ) & 
% 1.73/1.93         ( ( ( ( B ) = ( k1_xboole_0 ) ) => ( ( A ) = ( k1_xboole_0 ) ) ) =>
% 1.73/1.93           ( ( v1_funct_2 @ C @ A @ B ) <=>
% 1.73/1.93             ( ( A ) = ( k1_relset_1 @ A @ B @ C ) ) ) ) ) ))).
% 1.73/1.93  thf(zf_stmt_1, axiom,
% 1.73/1.93    (![B:$i,A:$i]:
% 1.73/1.93     ( ( ( ( B ) = ( k1_xboole_0 ) ) => ( ( A ) = ( k1_xboole_0 ) ) ) =>
% 1.73/1.93       ( zip_tseitin_0 @ B @ A ) ))).
% 1.73/1.93  thf('26', plain,
% 1.73/1.93      (![X37 : $i, X38 : $i]:
% 1.73/1.93         ((zip_tseitin_0 @ X37 @ X38) | ((X37) = (k1_xboole_0)))),
% 1.73/1.93      inference('cnf', [status(esa)], [zf_stmt_1])).
% 1.73/1.93  thf(t2_xboole_1, axiom, (![A:$i]: ( r1_tarski @ k1_xboole_0 @ A ))).
% 1.73/1.93  thf('27', plain, (![X2 : $i]: (r1_tarski @ k1_xboole_0 @ X2)),
% 1.73/1.93      inference('cnf', [status(esa)], [t2_xboole_1])).
% 1.73/1.93  thf('28', plain,
% 1.73/1.93      (![X0 : $i, X1 : $i, X2 : $i]:
% 1.73/1.93         ((r1_tarski @ X0 @ X1) | (zip_tseitin_0 @ X0 @ X2))),
% 1.73/1.93      inference('sup+', [status(thm)], ['26', '27'])).
% 1.73/1.93  thf('29', plain,
% 1.73/1.93      ((m1_subset_1 @ sk_C_2 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_A @ sk_B)))),
% 1.73/1.93      inference('cnf', [status(esa)], [zf_stmt_0])).
% 1.73/1.93  thf(zf_stmt_2, type, zip_tseitin_1 : $i > $i > $i > $o).
% 1.73/1.93  thf(zf_stmt_3, axiom,
% 1.73/1.93    (![C:$i,B:$i,A:$i]:
% 1.73/1.93     ( ( zip_tseitin_1 @ C @ B @ A ) =>
% 1.73/1.93       ( ( v1_funct_2 @ C @ A @ B ) <=> ( ( A ) = ( k1_relset_1 @ A @ B @ C ) ) ) ))).
% 1.73/1.93  thf(zf_stmt_4, type, zip_tseitin_0 : $i > $i > $o).
% 1.73/1.93  thf(zf_stmt_5, axiom,
% 1.73/1.93    (![A:$i,B:$i,C:$i]:
% 1.73/1.93     ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) =>
% 1.73/1.93       ( ( ( zip_tseitin_0 @ B @ A ) => ( zip_tseitin_1 @ C @ B @ A ) ) & 
% 1.73/1.93         ( ( ( B ) = ( k1_xboole_0 ) ) =>
% 1.73/1.93           ( ( ( A ) = ( k1_xboole_0 ) ) | 
% 1.73/1.93             ( ( v1_funct_2 @ C @ A @ B ) <=> ( ( C ) = ( k1_xboole_0 ) ) ) ) ) ) ))).
% 1.73/1.93  thf('30', plain,
% 1.73/1.93      (![X42 : $i, X43 : $i, X44 : $i]:
% 1.73/1.93         (~ (zip_tseitin_0 @ X42 @ X43)
% 1.73/1.93          | (zip_tseitin_1 @ X44 @ X42 @ X43)
% 1.73/1.93          | ~ (m1_subset_1 @ X44 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X43 @ X42))))),
% 1.73/1.93      inference('cnf', [status(esa)], [zf_stmt_5])).
% 1.73/1.93  thf('31', plain,
% 1.73/1.93      (((zip_tseitin_1 @ sk_C_2 @ sk_B @ sk_A)
% 1.73/1.93        | ~ (zip_tseitin_0 @ sk_B @ sk_A))),
% 1.73/1.93      inference('sup-', [status(thm)], ['29', '30'])).
% 1.73/1.93  thf('32', plain,
% 1.73/1.93      (![X0 : $i]:
% 1.73/1.93         ((r1_tarski @ sk_B @ X0) | (zip_tseitin_1 @ sk_C_2 @ sk_B @ sk_A))),
% 1.73/1.93      inference('sup-', [status(thm)], ['28', '31'])).
% 1.73/1.93  thf('33', plain, ((v1_funct_2 @ sk_C_2 @ sk_A @ sk_B)),
% 1.73/1.93      inference('cnf', [status(esa)], [zf_stmt_0])).
% 1.73/1.93  thf('34', plain,
% 1.73/1.93      (![X39 : $i, X40 : $i, X41 : $i]:
% 1.73/1.93         (~ (v1_funct_2 @ X41 @ X39 @ X40)
% 1.73/1.93          | ((X39) = (k1_relset_1 @ X39 @ X40 @ X41))
% 1.73/1.93          | ~ (zip_tseitin_1 @ X41 @ X40 @ X39))),
% 1.73/1.93      inference('cnf', [status(esa)], [zf_stmt_3])).
% 1.73/1.93  thf('35', plain,
% 1.73/1.93      ((~ (zip_tseitin_1 @ sk_C_2 @ sk_B @ sk_A)
% 1.73/1.93        | ((sk_A) = (k1_relset_1 @ sk_A @ sk_B @ sk_C_2)))),
% 1.73/1.93      inference('sup-', [status(thm)], ['33', '34'])).
% 1.73/1.93  thf('36', plain,
% 1.73/1.93      ((m1_subset_1 @ sk_C_2 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_A @ sk_B)))),
% 1.73/1.93      inference('cnf', [status(esa)], [zf_stmt_0])).
% 1.73/1.93  thf(redefinition_k1_relset_1, axiom,
% 1.73/1.93    (![A:$i,B:$i,C:$i]:
% 1.73/1.93     ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) =>
% 1.73/1.93       ( ( k1_relset_1 @ A @ B @ C ) = ( k1_relat_1 @ C ) ) ))).
% 1.73/1.93  thf('37', plain,
% 1.73/1.93      (![X31 : $i, X32 : $i, X33 : $i]:
% 1.73/1.93         (((k1_relset_1 @ X32 @ X33 @ X31) = (k1_relat_1 @ X31))
% 1.73/1.93          | ~ (m1_subset_1 @ X31 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X32 @ X33))))),
% 1.73/1.93      inference('cnf', [status(esa)], [redefinition_k1_relset_1])).
% 1.73/1.93  thf('38', plain,
% 1.73/1.93      (((k1_relset_1 @ sk_A @ sk_B @ sk_C_2) = (k1_relat_1 @ sk_C_2))),
% 1.73/1.93      inference('sup-', [status(thm)], ['36', '37'])).
% 1.73/1.93  thf('39', plain,
% 1.73/1.93      ((~ (zip_tseitin_1 @ sk_C_2 @ sk_B @ sk_A)
% 1.73/1.93        | ((sk_A) = (k1_relat_1 @ sk_C_2)))),
% 1.73/1.93      inference('demod', [status(thm)], ['35', '38'])).
% 1.73/1.93  thf('40', plain,
% 1.73/1.93      (![X0 : $i]: ((r1_tarski @ sk_B @ X0) | ((sk_A) = (k1_relat_1 @ sk_C_2)))),
% 1.73/1.93      inference('sup-', [status(thm)], ['32', '39'])).
% 1.73/1.93  thf('41', plain,
% 1.73/1.93      (![X0 : $i, X1 : $i]:
% 1.73/1.93         (((X1) = (X0))
% 1.73/1.93          | (r2_hidden @ (sk_C @ X0 @ X1) @ X0)
% 1.73/1.93          | (r2_hidden @ (sk_C @ X0 @ X1) @ X1))),
% 1.73/1.93      inference('cnf', [status(esa)], [t2_tarski])).
% 1.73/1.93  thf(t7_ordinal1, axiom,
% 1.73/1.93    (![A:$i,B:$i]: ( ~( ( r2_hidden @ A @ B ) & ( r1_tarski @ B @ A ) ) ))).
% 1.73/1.93  thf('42', plain,
% 1.73/1.93      (![X26 : $i, X27 : $i]:
% 1.73/1.93         (~ (r2_hidden @ X26 @ X27) | ~ (r1_tarski @ X27 @ X26))),
% 1.73/1.93      inference('cnf', [status(esa)], [t7_ordinal1])).
% 1.73/1.93  thf('43', plain,
% 1.73/1.93      (![X0 : $i, X1 : $i]:
% 1.73/1.93         ((r2_hidden @ (sk_C @ X0 @ X1) @ X1)
% 1.73/1.93          | ((X1) = (X0))
% 1.73/1.93          | ~ (r1_tarski @ X0 @ (sk_C @ X0 @ X1)))),
% 1.73/1.93      inference('sup-', [status(thm)], ['41', '42'])).
% 1.73/1.93  thf('44', plain,
% 1.73/1.93      (![X0 : $i]:
% 1.73/1.93         (((sk_A) = (k1_relat_1 @ sk_C_2))
% 1.73/1.93          | ((X0) = (sk_B))
% 1.73/1.93          | (r2_hidden @ (sk_C @ sk_B @ X0) @ X0))),
% 1.73/1.93      inference('sup-', [status(thm)], ['40', '43'])).
% 1.73/1.93  thf('45', plain,
% 1.73/1.93      (![X0 : $i]:
% 1.73/1.93         ((r2_hidden @ X0 @ sk_B) | ~ (r2_hidden @ X0 @ (k2_relat_1 @ sk_C_2)))),
% 1.73/1.93      inference('sup-', [status(thm)], ['13', '14'])).
% 1.73/1.93  thf('46', plain,
% 1.73/1.93      ((((k2_relat_1 @ sk_C_2) = (sk_B))
% 1.73/1.93        | ((sk_A) = (k1_relat_1 @ sk_C_2))
% 1.73/1.93        | (r2_hidden @ (sk_C @ sk_B @ (k2_relat_1 @ sk_C_2)) @ sk_B))),
% 1.73/1.93      inference('sup-', [status(thm)], ['44', '45'])).
% 1.73/1.93  thf('47', plain, (((k2_relat_1 @ sk_C_2) != (sk_B))),
% 1.73/1.93      inference('demod', [status(thm)], ['18', '21'])).
% 1.73/1.93  thf('48', plain,
% 1.73/1.93      ((((sk_A) = (k1_relat_1 @ sk_C_2))
% 1.73/1.93        | (r2_hidden @ (sk_C @ sk_B @ (k2_relat_1 @ sk_C_2)) @ sk_B))),
% 1.73/1.93      inference('simplify_reflect-', [status(thm)], ['46', '47'])).
% 1.73/1.93  thf('49', plain,
% 1.73/1.93      (![X26 : $i, X27 : $i]:
% 1.73/1.93         (~ (r2_hidden @ X26 @ X27) | ~ (r1_tarski @ X27 @ X26))),
% 1.73/1.93      inference('cnf', [status(esa)], [t7_ordinal1])).
% 1.73/1.93  thf('50', plain,
% 1.73/1.93      ((((sk_A) = (k1_relat_1 @ sk_C_2))
% 1.73/1.93        | ~ (r1_tarski @ sk_B @ (sk_C @ sk_B @ (k2_relat_1 @ sk_C_2))))),
% 1.73/1.93      inference('sup-', [status(thm)], ['48', '49'])).
% 1.73/1.93  thf('51', plain,
% 1.73/1.93      (![X0 : $i]: ((r1_tarski @ sk_B @ X0) | ((sk_A) = (k1_relat_1 @ sk_C_2)))),
% 1.73/1.93      inference('sup-', [status(thm)], ['32', '39'])).
% 1.73/1.93  thf('52', plain, (((sk_A) = (k1_relat_1 @ sk_C_2))),
% 1.73/1.93      inference('clc', [status(thm)], ['50', '51'])).
% 1.73/1.93  thf(d5_funct_1, axiom,
% 1.73/1.93    (![A:$i]:
% 1.73/1.93     ( ( ( v1_relat_1 @ A ) & ( v1_funct_1 @ A ) ) =>
% 1.73/1.93       ( ![B:$i]:
% 1.73/1.93         ( ( ( B ) = ( k2_relat_1 @ A ) ) <=>
% 1.73/1.93           ( ![C:$i]:
% 1.73/1.93             ( ( r2_hidden @ C @ B ) <=>
% 1.73/1.93               ( ?[D:$i]:
% 1.73/1.93                 ( ( ( C ) = ( k1_funct_1 @ A @ D ) ) & 
% 1.73/1.93                   ( r2_hidden @ D @ ( k1_relat_1 @ A ) ) ) ) ) ) ) ) ))).
% 1.73/1.93  thf('53', plain,
% 1.73/1.93      (![X20 : $i, X22 : $i, X24 : $i, X25 : $i]:
% 1.73/1.93         (((X22) != (k2_relat_1 @ X20))
% 1.73/1.93          | (r2_hidden @ X24 @ X22)
% 1.73/1.93          | ~ (r2_hidden @ X25 @ (k1_relat_1 @ X20))
% 1.73/1.93          | ((X24) != (k1_funct_1 @ X20 @ X25))
% 1.73/1.93          | ~ (v1_funct_1 @ X20)
% 1.73/1.93          | ~ (v1_relat_1 @ X20))),
% 1.73/1.93      inference('cnf', [status(esa)], [d5_funct_1])).
% 1.73/1.93  thf('54', plain,
% 1.73/1.93      (![X20 : $i, X25 : $i]:
% 1.73/1.93         (~ (v1_relat_1 @ X20)
% 1.73/1.93          | ~ (v1_funct_1 @ X20)
% 1.73/1.93          | ~ (r2_hidden @ X25 @ (k1_relat_1 @ X20))
% 1.73/1.93          | (r2_hidden @ (k1_funct_1 @ X20 @ X25) @ (k2_relat_1 @ X20)))),
% 1.73/1.93      inference('simplify', [status(thm)], ['53'])).
% 1.73/1.93  thf('55', plain,
% 1.73/1.93      (![X0 : $i]:
% 1.73/1.93         (~ (r2_hidden @ X0 @ sk_A)
% 1.73/1.93          | (r2_hidden @ (k1_funct_1 @ sk_C_2 @ X0) @ (k2_relat_1 @ sk_C_2))
% 1.73/1.93          | ~ (v1_funct_1 @ sk_C_2)
% 1.73/1.93          | ~ (v1_relat_1 @ sk_C_2))),
% 1.73/1.93      inference('sup-', [status(thm)], ['52', '54'])).
% 1.73/1.93  thf('56', plain, ((v1_funct_1 @ sk_C_2)),
% 1.73/1.93      inference('cnf', [status(esa)], [zf_stmt_0])).
% 1.73/1.93  thf('57', plain, ((v1_relat_1 @ sk_C_2)),
% 1.73/1.93      inference('demod', [status(thm)], ['8', '9'])).
% 1.73/1.93  thf('58', plain,
% 1.73/1.93      (![X0 : $i]:
% 1.73/1.93         (~ (r2_hidden @ X0 @ sk_A)
% 1.73/1.93          | (r2_hidden @ (k1_funct_1 @ sk_C_2 @ X0) @ (k2_relat_1 @ sk_C_2)))),
% 1.73/1.93      inference('demod', [status(thm)], ['55', '56', '57'])).
% 1.73/1.93  thf('59', plain,
% 1.73/1.93      ((r2_hidden @ 
% 1.73/1.93        (k1_funct_1 @ sk_C_2 @ (sk_E @ (sk_C @ (k2_relat_1 @ sk_C_2) @ sk_B))) @ 
% 1.73/1.93        (k2_relat_1 @ sk_C_2))),
% 1.73/1.93      inference('sup-', [status(thm)], ['25', '58'])).
% 1.73/1.93  thf('60', plain,
% 1.73/1.93      ((r2_hidden @ (sk_C @ (k2_relat_1 @ sk_C_2) @ sk_B) @ sk_B)),
% 1.73/1.93      inference('simplify_reflect-', [status(thm)], ['17', '22'])).
% 1.73/1.93  thf('61', plain,
% 1.73/1.93      (![X45 : $i]:
% 1.73/1.93         (~ (r2_hidden @ X45 @ sk_B)
% 1.73/1.93          | ((X45) = (k1_funct_1 @ sk_C_2 @ (sk_E @ X45))))),
% 1.73/1.93      inference('cnf', [status(esa)], [zf_stmt_0])).
% 1.73/1.93  thf('62', plain,
% 1.73/1.93      (((sk_C @ (k2_relat_1 @ sk_C_2) @ sk_B)
% 1.73/1.93         = (k1_funct_1 @ sk_C_2 @ 
% 1.73/1.93            (sk_E @ (sk_C @ (k2_relat_1 @ sk_C_2) @ sk_B))))),
% 1.73/1.93      inference('sup-', [status(thm)], ['60', '61'])).
% 1.73/1.93  thf('63', plain,
% 1.73/1.93      ((r2_hidden @ (sk_C @ (k2_relat_1 @ sk_C_2) @ sk_B) @ 
% 1.73/1.93        (k2_relat_1 @ sk_C_2))),
% 1.73/1.93      inference('demod', [status(thm)], ['59', '62'])).
% 1.73/1.93  thf('64', plain,
% 1.73/1.93      (![X0 : $i, X1 : $i]:
% 1.73/1.93         (((X1) = (X0))
% 1.73/1.93          | ~ (r2_hidden @ (sk_C @ X0 @ X1) @ X0)
% 1.73/1.93          | ~ (r2_hidden @ (sk_C @ X0 @ X1) @ X1))),
% 1.73/1.93      inference('cnf', [status(esa)], [t2_tarski])).
% 1.73/1.93  thf('65', plain,
% 1.73/1.93      ((~ (r2_hidden @ (sk_C @ (k2_relat_1 @ sk_C_2) @ sk_B) @ sk_B)
% 1.73/1.93        | ((sk_B) = (k2_relat_1 @ sk_C_2)))),
% 1.73/1.93      inference('sup-', [status(thm)], ['63', '64'])).
% 1.73/1.93  thf('66', plain,
% 1.73/1.93      ((r2_hidden @ (sk_C @ (k2_relat_1 @ sk_C_2) @ sk_B) @ sk_B)),
% 1.73/1.93      inference('simplify_reflect-', [status(thm)], ['17', '22'])).
% 1.73/1.93  thf('67', plain, (((sk_B) = (k2_relat_1 @ sk_C_2))),
% 1.73/1.93      inference('demod', [status(thm)], ['65', '66'])).
% 1.73/1.93  thf('68', plain, (((k2_relat_1 @ sk_C_2) != (sk_B))),
% 1.73/1.93      inference('demod', [status(thm)], ['18', '21'])).
% 1.73/1.93  thf('69', plain, ($false),
% 1.73/1.93      inference('simplify_reflect-', [status(thm)], ['67', '68'])).
% 1.73/1.93  
% 1.73/1.93  % SZS output end Refutation
% 1.73/1.93  
% 1.73/1.94  % Zipperpin 1.5 exiting
%------------------------------------------------------------------------------
