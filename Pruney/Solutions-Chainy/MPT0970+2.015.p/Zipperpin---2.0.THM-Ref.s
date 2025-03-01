%------------------------------------------------------------------------------
% File       : Zipperpin---2.0
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_portfolio.sh /export/starexec/sandbox2/benchmark/theBenchmark.p /export/starexec/sandbox2/tmp/tmp.JQyLPJnyM8

% Computer   : n007.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 13:53:18 EST 2020

% Result     : Theorem 1.63s
% Output     : Refutation 1.63s
% Verified   : 
% Statistics : Number of formulae       :  115 ( 308 expanded)
%              Number of leaves         :   41 ( 109 expanded)
%              Depth                    :   27
%              Number of atoms          :  792 (3577 expanded)
%              Number of equality atoms :   51 ( 235 expanded)
%              Maximal formula depth    :   16 (   6 average)

% Comments   : 
%------------------------------------------------------------------------------
thf(sk_B_type,type,(
    sk_B: $i )).

thf(k1_relat_1_type,type,(
    k1_relat_1: $i > $i )).

thf(sk_C_2_type,type,(
    sk_C_2: $i )).

thf(k1_zfmisc_1_type,type,(
    k1_zfmisc_1: $i > $i )).

thf(zip_tseitin_0_type,type,(
    zip_tseitin_0: $i > $i > $o )).

thf(v1_funct_2_type,type,(
    v1_funct_2: $i > $i > $i > $o )).

thf(r2_hidden_type,type,(
    r2_hidden: $i > $i > $o )).

thf(sk_A_type,type,(
    sk_A: $i )).

thf(k1_relset_1_type,type,(
    k1_relset_1: $i > $i > $i > $i )).

thf(sk_C_1_type,type,(
    sk_C_1: $i > $i > $i )).

thf(r1_tarski_type,type,(
    r1_tarski: $i > $i > $o )).

thf(k2_relat_1_type,type,(
    k2_relat_1: $i > $i )).

thf(m1_subset_1_type,type,(
    m1_subset_1: $i > $i > $o )).

thf(k1_funct_1_type,type,(
    k1_funct_1: $i > $i > $i )).

thf(v1_relat_1_type,type,(
    v1_relat_1: $i > $o )).

thf(v4_relat_1_type,type,(
    v4_relat_1: $i > $i > $o )).

thf(k1_xboole_0_type,type,(
    k1_xboole_0: $i )).

thf(sk_C_type,type,(
    sk_C: $i > $i > $i )).

thf(k2_zfmisc_1_type,type,(
    k2_zfmisc_1: $i > $i > $i )).

thf(v1_funct_1_type,type,(
    v1_funct_1: $i > $o )).

thf(sk_E_type,type,(
    sk_E: $i > $i )).

thf(v5_relat_1_type,type,(
    v5_relat_1: $i > $i > $o )).

thf(zip_tseitin_1_type,type,(
    zip_tseitin_1: $i > $i > $i > $o )).

thf(k2_relset_1_type,type,(
    k2_relset_1: $i > $i > $i > $i )).

thf(t2_tarski,axiom,(
    ! [A: $i,B: $i] :
      ( ! [C: $i] :
          ( ( r2_hidden @ C @ A )
        <=> ( r2_hidden @ C @ B ) )
     => ( A = B ) ) )).

thf('0',plain,(
    ! [X4: $i,X5: $i] :
      ( ( X5 = X4 )
      | ( r2_hidden @ ( sk_C_1 @ X4 @ X5 ) @ X4 )
      | ( r2_hidden @ ( sk_C_1 @ X4 @ X5 ) @ X5 ) ) ),
    inference(cnf,[status(esa)],[t2_tarski])).

thf(d3_tarski,axiom,(
    ! [A: $i,B: $i] :
      ( ( r1_tarski @ A @ B )
    <=> ! [C: $i] :
          ( ( r2_hidden @ C @ A )
         => ( r2_hidden @ C @ B ) ) ) )).

thf('1',plain,(
    ! [X1: $i,X3: $i] :
      ( ( r1_tarski @ X1 @ X3 )
      | ( r2_hidden @ ( sk_C @ X3 @ X1 ) @ X1 ) ) ),
    inference(cnf,[status(esa)],[d3_tarski])).

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

thf('2',plain,(
    ! [X35: $i] :
      ( ~ ( r2_hidden @ X35 @ sk_B )
      | ( X35
        = ( k1_funct_1 @ sk_C_2 @ ( sk_E @ X35 ) ) ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('3',plain,(
    ! [X0: $i] :
      ( ( r1_tarski @ sk_B @ X0 )
      | ( ( sk_C @ X0 @ sk_B )
        = ( k1_funct_1 @ sk_C_2 @ ( sk_E @ ( sk_C @ X0 @ sk_B ) ) ) ) ) ),
    inference('sup-',[status(thm)],['1','2'])).

thf('4',plain,(
    ! [X1: $i,X3: $i] :
      ( ( r1_tarski @ X1 @ X3 )
      | ( r2_hidden @ ( sk_C @ X3 @ X1 ) @ X1 ) ) ),
    inference(cnf,[status(esa)],[d3_tarski])).

thf('5',plain,(
    ! [X35: $i] :
      ( ~ ( r2_hidden @ X35 @ sk_B )
      | ( r2_hidden @ ( sk_E @ X35 ) @ sk_A ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('6',plain,(
    ! [X0: $i] :
      ( ( r1_tarski @ sk_B @ X0 )
      | ( r2_hidden @ ( sk_E @ ( sk_C @ X0 @ sk_B ) ) @ sk_A ) ) ),
    inference('sup-',[status(thm)],['4','5'])).

thf('7',plain,(
    v1_funct_2 @ sk_C_2 @ sk_A @ sk_B ),
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

thf('8',plain,(
    ! [X29: $i,X30: $i,X31: $i] :
      ( ~ ( v1_funct_2 @ X31 @ X29 @ X30 )
      | ( X29
        = ( k1_relset_1 @ X29 @ X30 @ X31 ) )
      | ~ ( zip_tseitin_1 @ X31 @ X30 @ X29 ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_1])).

thf('9',plain,
    ( ~ ( zip_tseitin_1 @ sk_C_2 @ sk_B @ sk_A )
    | ( sk_A
      = ( k1_relset_1 @ sk_A @ sk_B @ sk_C_2 ) ) ),
    inference('sup-',[status(thm)],['7','8'])).

thf('10',plain,(
    m1_subset_1 @ sk_C_2 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_A @ sk_B ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(zf_stmt_2,type,(
    zip_tseitin_1: $i > $i > $i > $o )).

thf(zf_stmt_3,type,(
    zip_tseitin_0: $i > $i > $o )).

thf(zf_stmt_4,axiom,(
    ! [B: $i,A: $i] :
      ( ( ( B = k1_xboole_0 )
       => ( A = k1_xboole_0 ) )
     => ( zip_tseitin_0 @ B @ A ) ) )).

thf(zf_stmt_5,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) )
     => ( ( ( zip_tseitin_0 @ B @ A )
         => ( zip_tseitin_1 @ C @ B @ A ) )
        & ( ( B = k1_xboole_0 )
         => ( ( A = k1_xboole_0 )
            | ( ( v1_funct_2 @ C @ A @ B )
            <=> ( C = k1_xboole_0 ) ) ) ) ) ) )).

thf('11',plain,(
    ! [X32: $i,X33: $i,X34: $i] :
      ( ~ ( zip_tseitin_0 @ X32 @ X33 )
      | ( zip_tseitin_1 @ X34 @ X32 @ X33 )
      | ~ ( m1_subset_1 @ X34 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X33 @ X32 ) ) ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_5])).

thf('12',plain,
    ( ( zip_tseitin_1 @ sk_C_2 @ sk_B @ sk_A )
    | ~ ( zip_tseitin_0 @ sk_B @ sk_A ) ),
    inference('sup-',[status(thm)],['10','11'])).

thf('13',plain,(
    ! [X4: $i,X5: $i] :
      ( ( X5 = X4 )
      | ( r2_hidden @ ( sk_C_1 @ X4 @ X5 ) @ X4 )
      | ( r2_hidden @ ( sk_C_1 @ X4 @ X5 ) @ X5 ) ) ),
    inference(cnf,[status(esa)],[t2_tarski])).

thf(t113_zfmisc_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( ( k2_zfmisc_1 @ A @ B )
        = k1_xboole_0 )
    <=> ( ( A = k1_xboole_0 )
        | ( B = k1_xboole_0 ) ) ) )).

thf('14',plain,(
    ! [X7: $i,X8: $i] :
      ( ( ( k2_zfmisc_1 @ X7 @ X8 )
        = k1_xboole_0 )
      | ( X8 != k1_xboole_0 ) ) ),
    inference(cnf,[status(esa)],[t113_zfmisc_1])).

thf('15',plain,(
    ! [X7: $i] :
      ( ( k2_zfmisc_1 @ X7 @ k1_xboole_0 )
      = k1_xboole_0 ) ),
    inference(simplify,[status(thm)],['14'])).

thf(t152_zfmisc_1,axiom,(
    ! [A: $i,B: $i] :
      ~ ( r2_hidden @ A @ ( k2_zfmisc_1 @ A @ B ) ) )).

thf('16',plain,(
    ! [X9: $i,X10: $i] :
      ~ ( r2_hidden @ X9 @ ( k2_zfmisc_1 @ X9 @ X10 ) ) ),
    inference(cnf,[status(esa)],[t152_zfmisc_1])).

thf('17',plain,(
    ! [X0: $i] :
      ~ ( r2_hidden @ X0 @ k1_xboole_0 ) ),
    inference('sup-',[status(thm)],['15','16'])).

thf('18',plain,(
    ! [X0: $i] :
      ( ( r2_hidden @ ( sk_C_1 @ X0 @ k1_xboole_0 ) @ X0 )
      | ( k1_xboole_0 = X0 ) ) ),
    inference('sup-',[status(thm)],['13','17'])).

thf('19',plain,(
    m1_subset_1 @ sk_C_2 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_A @ sk_B ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(cc2_relset_1,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) )
     => ( ( v4_relat_1 @ C @ A )
        & ( v5_relat_1 @ C @ B ) ) ) )).

thf('20',plain,(
    ! [X18: $i,X19: $i,X20: $i] :
      ( ( v5_relat_1 @ X18 @ X20 )
      | ~ ( m1_subset_1 @ X18 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X19 @ X20 ) ) ) ) ),
    inference(cnf,[status(esa)],[cc2_relset_1])).

thf('21',plain,(
    v5_relat_1 @ sk_C_2 @ sk_B ),
    inference('sup-',[status(thm)],['19','20'])).

thf(d19_relat_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( v1_relat_1 @ B )
     => ( ( v5_relat_1 @ B @ A )
      <=> ( r1_tarski @ ( k2_relat_1 @ B ) @ A ) ) ) )).

thf('22',plain,(
    ! [X11: $i,X12: $i] :
      ( ~ ( v5_relat_1 @ X11 @ X12 )
      | ( r1_tarski @ ( k2_relat_1 @ X11 ) @ X12 )
      | ~ ( v1_relat_1 @ X11 ) ) ),
    inference(cnf,[status(esa)],[d19_relat_1])).

thf('23',plain,
    ( ~ ( v1_relat_1 @ sk_C_2 )
    | ( r1_tarski @ ( k2_relat_1 @ sk_C_2 ) @ sk_B ) ),
    inference('sup-',[status(thm)],['21','22'])).

thf('24',plain,(
    m1_subset_1 @ sk_C_2 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_A @ sk_B ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(cc1_relset_1,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) )
     => ( v1_relat_1 @ C ) ) )).

thf('25',plain,(
    ! [X15: $i,X16: $i,X17: $i] :
      ( ( v1_relat_1 @ X15 )
      | ~ ( m1_subset_1 @ X15 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X16 @ X17 ) ) ) ) ),
    inference(cnf,[status(esa)],[cc1_relset_1])).

thf('26',plain,(
    v1_relat_1 @ sk_C_2 ),
    inference('sup-',[status(thm)],['24','25'])).

thf('27',plain,(
    r1_tarski @ ( k2_relat_1 @ sk_C_2 ) @ sk_B ),
    inference(demod,[status(thm)],['23','26'])).

thf('28',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( ~ ( r2_hidden @ X0 @ X1 )
      | ( r2_hidden @ X0 @ X2 )
      | ~ ( r1_tarski @ X1 @ X2 ) ) ),
    inference(cnf,[status(esa)],[d3_tarski])).

thf('29',plain,(
    ! [X0: $i] :
      ( ( r2_hidden @ X0 @ sk_B )
      | ~ ( r2_hidden @ X0 @ ( k2_relat_1 @ sk_C_2 ) ) ) ),
    inference('sup-',[status(thm)],['27','28'])).

thf('30',plain,
    ( ( k1_xboole_0
      = ( k2_relat_1 @ sk_C_2 ) )
    | ( r2_hidden @ ( sk_C_1 @ ( k2_relat_1 @ sk_C_2 ) @ k1_xboole_0 ) @ sk_B ) ),
    inference('sup-',[status(thm)],['18','29'])).

thf('31',plain,(
    ! [X27: $i,X28: $i] :
      ( ( zip_tseitin_0 @ X27 @ X28 )
      | ( X27 = k1_xboole_0 ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_4])).

thf('32',plain,(
    ! [X0: $i] :
      ~ ( r2_hidden @ X0 @ k1_xboole_0 ) ),
    inference('sup-',[status(thm)],['15','16'])).

thf('33',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( ~ ( r2_hidden @ X1 @ X0 )
      | ( zip_tseitin_0 @ X0 @ X2 ) ) ),
    inference('sup-',[status(thm)],['31','32'])).

thf('34',plain,(
    ! [X0: $i] :
      ( ( k1_xboole_0
        = ( k2_relat_1 @ sk_C_2 ) )
      | ( zip_tseitin_0 @ sk_B @ X0 ) ) ),
    inference('sup-',[status(thm)],['30','33'])).

thf('35',plain,(
    ( k2_relset_1 @ sk_A @ sk_B @ sk_C_2 )
 != sk_B ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('36',plain,(
    m1_subset_1 @ sk_C_2 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_A @ sk_B ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(redefinition_k2_relset_1,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) )
     => ( ( k2_relset_1 @ A @ B @ C )
        = ( k2_relat_1 @ C ) ) ) )).

thf('37',plain,(
    ! [X24: $i,X25: $i,X26: $i] :
      ( ( ( k2_relset_1 @ X25 @ X26 @ X24 )
        = ( k2_relat_1 @ X24 ) )
      | ~ ( m1_subset_1 @ X24 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X25 @ X26 ) ) ) ) ),
    inference(cnf,[status(esa)],[redefinition_k2_relset_1])).

thf('38',plain,
    ( ( k2_relset_1 @ sk_A @ sk_B @ sk_C_2 )
    = ( k2_relat_1 @ sk_C_2 ) ),
    inference('sup-',[status(thm)],['36','37'])).

thf('39',plain,(
    ( k2_relat_1 @ sk_C_2 )
 != sk_B ),
    inference(demod,[status(thm)],['35','38'])).

thf('40',plain,(
    ! [X0: $i] :
      ( ( k1_xboole_0 != sk_B )
      | ( zip_tseitin_0 @ sk_B @ X0 ) ) ),
    inference('sup-',[status(thm)],['34','39'])).

thf('41',plain,(
    ! [X27: $i,X28: $i] :
      ( ( zip_tseitin_0 @ X27 @ X28 )
      | ( X27 = k1_xboole_0 ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_4])).

thf('42',plain,(
    ! [X0: $i] :
      ( zip_tseitin_0 @ sk_B @ X0 ) ),
    inference(clc,[status(thm)],['40','41'])).

thf('43',plain,(
    zip_tseitin_1 @ sk_C_2 @ sk_B @ sk_A ),
    inference(demod,[status(thm)],['12','42'])).

thf('44',plain,(
    m1_subset_1 @ sk_C_2 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_A @ sk_B ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(redefinition_k1_relset_1,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) )
     => ( ( k1_relset_1 @ A @ B @ C )
        = ( k1_relat_1 @ C ) ) ) )).

thf('45',plain,(
    ! [X21: $i,X22: $i,X23: $i] :
      ( ( ( k1_relset_1 @ X22 @ X23 @ X21 )
        = ( k1_relat_1 @ X21 ) )
      | ~ ( m1_subset_1 @ X21 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X22 @ X23 ) ) ) ) ),
    inference(cnf,[status(esa)],[redefinition_k1_relset_1])).

thf('46',plain,
    ( ( k1_relset_1 @ sk_A @ sk_B @ sk_C_2 )
    = ( k1_relat_1 @ sk_C_2 ) ),
    inference('sup-',[status(thm)],['44','45'])).

thf('47',plain,
    ( sk_A
    = ( k1_relat_1 @ sk_C_2 ) ),
    inference(demod,[status(thm)],['9','43','46'])).

thf(t12_funct_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( ( v1_relat_1 @ B )
        & ( v1_funct_1 @ B ) )
     => ( ( r2_hidden @ A @ ( k1_relat_1 @ B ) )
       => ( r2_hidden @ ( k1_funct_1 @ B @ A ) @ ( k2_relat_1 @ B ) ) ) ) )).

thf('48',plain,(
    ! [X13: $i,X14: $i] :
      ( ~ ( r2_hidden @ X13 @ ( k1_relat_1 @ X14 ) )
      | ( r2_hidden @ ( k1_funct_1 @ X14 @ X13 ) @ ( k2_relat_1 @ X14 ) )
      | ~ ( v1_funct_1 @ X14 )
      | ~ ( v1_relat_1 @ X14 ) ) ),
    inference(cnf,[status(esa)],[t12_funct_1])).

thf('49',plain,(
    ! [X0: $i] :
      ( ~ ( r2_hidden @ X0 @ sk_A )
      | ~ ( v1_relat_1 @ sk_C_2 )
      | ~ ( v1_funct_1 @ sk_C_2 )
      | ( r2_hidden @ ( k1_funct_1 @ sk_C_2 @ X0 ) @ ( k2_relat_1 @ sk_C_2 ) ) ) ),
    inference('sup-',[status(thm)],['47','48'])).

thf('50',plain,(
    v1_relat_1 @ sk_C_2 ),
    inference('sup-',[status(thm)],['24','25'])).

thf('51',plain,(
    v1_funct_1 @ sk_C_2 ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('52',plain,(
    ! [X0: $i] :
      ( ~ ( r2_hidden @ X0 @ sk_A )
      | ( r2_hidden @ ( k1_funct_1 @ sk_C_2 @ X0 ) @ ( k2_relat_1 @ sk_C_2 ) ) ) ),
    inference(demod,[status(thm)],['49','50','51'])).

thf('53',plain,(
    ! [X0: $i] :
      ( ( r1_tarski @ sk_B @ X0 )
      | ( r2_hidden @ ( k1_funct_1 @ sk_C_2 @ ( sk_E @ ( sk_C @ X0 @ sk_B ) ) ) @ ( k2_relat_1 @ sk_C_2 ) ) ) ),
    inference('sup-',[status(thm)],['6','52'])).

thf('54',plain,(
    ! [X0: $i] :
      ( ( r2_hidden @ ( sk_C @ X0 @ sk_B ) @ ( k2_relat_1 @ sk_C_2 ) )
      | ( r1_tarski @ sk_B @ X0 )
      | ( r1_tarski @ sk_B @ X0 ) ) ),
    inference('sup+',[status(thm)],['3','53'])).

thf('55',plain,(
    ! [X0: $i] :
      ( ( r1_tarski @ sk_B @ X0 )
      | ( r2_hidden @ ( sk_C @ X0 @ sk_B ) @ ( k2_relat_1 @ sk_C_2 ) ) ) ),
    inference(simplify,[status(thm)],['54'])).

thf('56',plain,(
    ! [X1: $i,X3: $i] :
      ( ( r1_tarski @ X1 @ X3 )
      | ~ ( r2_hidden @ ( sk_C @ X3 @ X1 ) @ X3 ) ) ),
    inference(cnf,[status(esa)],[d3_tarski])).

thf('57',plain,
    ( ( r1_tarski @ sk_B @ ( k2_relat_1 @ sk_C_2 ) )
    | ( r1_tarski @ sk_B @ ( k2_relat_1 @ sk_C_2 ) ) ),
    inference('sup-',[status(thm)],['55','56'])).

thf('58',plain,(
    r1_tarski @ sk_B @ ( k2_relat_1 @ sk_C_2 ) ),
    inference(simplify,[status(thm)],['57'])).

thf('59',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( ~ ( r2_hidden @ X0 @ X1 )
      | ( r2_hidden @ X0 @ X2 )
      | ~ ( r1_tarski @ X1 @ X2 ) ) ),
    inference(cnf,[status(esa)],[d3_tarski])).

thf('60',plain,(
    ! [X0: $i] :
      ( ( r2_hidden @ X0 @ ( k2_relat_1 @ sk_C_2 ) )
      | ~ ( r2_hidden @ X0 @ sk_B ) ) ),
    inference('sup-',[status(thm)],['58','59'])).

thf('61',plain,(
    ! [X0: $i] :
      ( ( r2_hidden @ ( sk_C_1 @ sk_B @ X0 ) @ X0 )
      | ( X0 = sk_B )
      | ( r2_hidden @ ( sk_C_1 @ sk_B @ X0 ) @ ( k2_relat_1 @ sk_C_2 ) ) ) ),
    inference('sup-',[status(thm)],['0','60'])).

thf('62',plain,
    ( ( ( k2_relat_1 @ sk_C_2 )
      = sk_B )
    | ( r2_hidden @ ( sk_C_1 @ sk_B @ ( k2_relat_1 @ sk_C_2 ) ) @ ( k2_relat_1 @ sk_C_2 ) ) ),
    inference(eq_fact,[status(thm)],['61'])).

thf('63',plain,(
    ( k2_relat_1 @ sk_C_2 )
 != sk_B ),
    inference(demod,[status(thm)],['35','38'])).

thf('64',plain,(
    r2_hidden @ ( sk_C_1 @ sk_B @ ( k2_relat_1 @ sk_C_2 ) ) @ ( k2_relat_1 @ sk_C_2 ) ),
    inference('simplify_reflect-',[status(thm)],['62','63'])).

thf('65',plain,(
    ! [X0: $i] :
      ( ( r2_hidden @ X0 @ sk_B )
      | ~ ( r2_hidden @ X0 @ ( k2_relat_1 @ sk_C_2 ) ) ) ),
    inference('sup-',[status(thm)],['27','28'])).

thf('66',plain,(
    r2_hidden @ ( sk_C_1 @ sk_B @ ( k2_relat_1 @ sk_C_2 ) ) @ sk_B ),
    inference('sup-',[status(thm)],['64','65'])).

thf('67',plain,(
    ! [X4: $i,X5: $i] :
      ( ( X5 = X4 )
      | ~ ( r2_hidden @ ( sk_C_1 @ X4 @ X5 ) @ X4 )
      | ~ ( r2_hidden @ ( sk_C_1 @ X4 @ X5 ) @ X5 ) ) ),
    inference(cnf,[status(esa)],[t2_tarski])).

thf('68',plain,
    ( ~ ( r2_hidden @ ( sk_C_1 @ sk_B @ ( k2_relat_1 @ sk_C_2 ) ) @ ( k2_relat_1 @ sk_C_2 ) )
    | ( ( k2_relat_1 @ sk_C_2 )
      = sk_B ) ),
    inference('sup-',[status(thm)],['66','67'])).

thf('69',plain,(
    r2_hidden @ ( sk_C_1 @ sk_B @ ( k2_relat_1 @ sk_C_2 ) ) @ ( k2_relat_1 @ sk_C_2 ) ),
    inference('simplify_reflect-',[status(thm)],['62','63'])).

thf('70',plain,
    ( ( k2_relat_1 @ sk_C_2 )
    = sk_B ),
    inference(demod,[status(thm)],['68','69'])).

thf('71',plain,(
    ( k2_relat_1 @ sk_C_2 )
 != sk_B ),
    inference(demod,[status(thm)],['35','38'])).

thf('72',plain,(
    $false ),
    inference('simplify_reflect-',[status(thm)],['70','71'])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.07/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.07/0.14  % Command    : run_portfolio.sh /export/starexec/sandbox2/benchmark/theBenchmark.p /export/starexec/sandbox2/tmp/tmp.JQyLPJnyM8
% 0.13/0.35  % Computer   : n007.cluster.edu
% 0.13/0.35  % Model      : x86_64 x86_64
% 0.13/0.35  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.35  % Memory     : 8042.1875MB
% 0.13/0.35  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.35  % CPULimit   : 60
% 0.13/0.35  % DateTime   : Tue Dec  1 16:10:21 EST 2020
% 0.13/0.35  % CPUTime    : 
% 0.13/0.35  % Running portfolio for 600 s
% 0.13/0.35  % File         : /export/starexec/sandbox2/benchmark/theBenchmark.p
% 0.13/0.35  % Number of cores: 8
% 0.13/0.36  % Python version: Python 3.6.8
% 0.13/0.36  % Running in FO mode
% 1.63/1.81  % Running /export/starexec/sandbox2/solver/bin/fo/fo7.sh for 78
% 1.63/1.81  % Solved by: fo/fo7.sh
% 1.63/1.81  To remain in the chosen logic fragment, unification with booleans has been disabled.
% 1.63/1.81  % done 786 iterations in 1.349s
% 1.63/1.81  % SZS status Theorem for '/export/starexec/sandbox2/benchmark/theBenchmark.p'
% 1.63/1.81  % SZS output start Refutation
% 1.63/1.81  thf(sk_B_type, type, sk_B: $i).
% 1.63/1.81  thf(k1_relat_1_type, type, k1_relat_1: $i > $i).
% 1.63/1.81  thf(sk_C_2_type, type, sk_C_2: $i).
% 1.63/1.81  thf(k1_zfmisc_1_type, type, k1_zfmisc_1: $i > $i).
% 1.63/1.81  thf(zip_tseitin_0_type, type, zip_tseitin_0: $i > $i > $o).
% 1.63/1.81  thf(v1_funct_2_type, type, v1_funct_2: $i > $i > $i > $o).
% 1.63/1.81  thf(r2_hidden_type, type, r2_hidden: $i > $i > $o).
% 1.63/1.81  thf(sk_A_type, type, sk_A: $i).
% 1.63/1.81  thf(k1_relset_1_type, type, k1_relset_1: $i > $i > $i > $i).
% 1.63/1.81  thf(sk_C_1_type, type, sk_C_1: $i > $i > $i).
% 1.63/1.81  thf(r1_tarski_type, type, r1_tarski: $i > $i > $o).
% 1.63/1.81  thf(k2_relat_1_type, type, k2_relat_1: $i > $i).
% 1.63/1.81  thf(m1_subset_1_type, type, m1_subset_1: $i > $i > $o).
% 1.63/1.81  thf(k1_funct_1_type, type, k1_funct_1: $i > $i > $i).
% 1.63/1.81  thf(v1_relat_1_type, type, v1_relat_1: $i > $o).
% 1.63/1.81  thf(v4_relat_1_type, type, v4_relat_1: $i > $i > $o).
% 1.63/1.81  thf(k1_xboole_0_type, type, k1_xboole_0: $i).
% 1.63/1.81  thf(sk_C_type, type, sk_C: $i > $i > $i).
% 1.63/1.81  thf(k2_zfmisc_1_type, type, k2_zfmisc_1: $i > $i > $i).
% 1.63/1.81  thf(v1_funct_1_type, type, v1_funct_1: $i > $o).
% 1.63/1.81  thf(sk_E_type, type, sk_E: $i > $i).
% 1.63/1.81  thf(v5_relat_1_type, type, v5_relat_1: $i > $i > $o).
% 1.63/1.81  thf(zip_tseitin_1_type, type, zip_tseitin_1: $i > $i > $i > $o).
% 1.63/1.81  thf(k2_relset_1_type, type, k2_relset_1: $i > $i > $i > $i).
% 1.63/1.81  thf(t2_tarski, axiom,
% 1.63/1.81    (![A:$i,B:$i]:
% 1.63/1.81     ( ( ![C:$i]: ( ( r2_hidden @ C @ A ) <=> ( r2_hidden @ C @ B ) ) ) =>
% 1.63/1.81       ( ( A ) = ( B ) ) ))).
% 1.63/1.81  thf('0', plain,
% 1.63/1.81      (![X4 : $i, X5 : $i]:
% 1.63/1.81         (((X5) = (X4))
% 1.63/1.81          | (r2_hidden @ (sk_C_1 @ X4 @ X5) @ X4)
% 1.63/1.81          | (r2_hidden @ (sk_C_1 @ X4 @ X5) @ X5))),
% 1.63/1.81      inference('cnf', [status(esa)], [t2_tarski])).
% 1.63/1.81  thf(d3_tarski, axiom,
% 1.63/1.81    (![A:$i,B:$i]:
% 1.63/1.81     ( ( r1_tarski @ A @ B ) <=>
% 1.63/1.81       ( ![C:$i]: ( ( r2_hidden @ C @ A ) => ( r2_hidden @ C @ B ) ) ) ))).
% 1.63/1.81  thf('1', plain,
% 1.63/1.81      (![X1 : $i, X3 : $i]:
% 1.63/1.81         ((r1_tarski @ X1 @ X3) | (r2_hidden @ (sk_C @ X3 @ X1) @ X1))),
% 1.63/1.81      inference('cnf', [status(esa)], [d3_tarski])).
% 1.63/1.81  thf(t16_funct_2, conjecture,
% 1.63/1.81    (![A:$i,B:$i,C:$i]:
% 1.63/1.81     ( ( ( v1_funct_1 @ C ) & ( v1_funct_2 @ C @ A @ B ) & 
% 1.63/1.81         ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) ) =>
% 1.63/1.81       ( ( ![D:$i]:
% 1.63/1.81           ( ~( ( r2_hidden @ D @ B ) & 
% 1.63/1.81                ( ![E:$i]:
% 1.63/1.81                  ( ~( ( r2_hidden @ E @ A ) & 
% 1.63/1.81                       ( ( D ) = ( k1_funct_1 @ C @ E ) ) ) ) ) ) ) ) =>
% 1.63/1.81         ( ( k2_relset_1 @ A @ B @ C ) = ( B ) ) ) ))).
% 1.63/1.81  thf(zf_stmt_0, negated_conjecture,
% 1.63/1.81    (~( ![A:$i,B:$i,C:$i]:
% 1.63/1.81        ( ( ( v1_funct_1 @ C ) & ( v1_funct_2 @ C @ A @ B ) & 
% 1.63/1.81            ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) ) =>
% 1.63/1.81          ( ( ![D:$i]:
% 1.63/1.81              ( ~( ( r2_hidden @ D @ B ) & 
% 1.63/1.81                   ( ![E:$i]:
% 1.63/1.81                     ( ~( ( r2_hidden @ E @ A ) & 
% 1.63/1.81                          ( ( D ) = ( k1_funct_1 @ C @ E ) ) ) ) ) ) ) ) =>
% 1.63/1.81            ( ( k2_relset_1 @ A @ B @ C ) = ( B ) ) ) ) )),
% 1.63/1.81    inference('cnf.neg', [status(esa)], [t16_funct_2])).
% 1.63/1.81  thf('2', plain,
% 1.63/1.81      (![X35 : $i]:
% 1.63/1.81         (~ (r2_hidden @ X35 @ sk_B)
% 1.63/1.81          | ((X35) = (k1_funct_1 @ sk_C_2 @ (sk_E @ X35))))),
% 1.63/1.81      inference('cnf', [status(esa)], [zf_stmt_0])).
% 1.63/1.81  thf('3', plain,
% 1.63/1.81      (![X0 : $i]:
% 1.63/1.81         ((r1_tarski @ sk_B @ X0)
% 1.63/1.81          | ((sk_C @ X0 @ sk_B)
% 1.63/1.81              = (k1_funct_1 @ sk_C_2 @ (sk_E @ (sk_C @ X0 @ sk_B)))))),
% 1.63/1.81      inference('sup-', [status(thm)], ['1', '2'])).
% 1.63/1.81  thf('4', plain,
% 1.63/1.81      (![X1 : $i, X3 : $i]:
% 1.63/1.81         ((r1_tarski @ X1 @ X3) | (r2_hidden @ (sk_C @ X3 @ X1) @ X1))),
% 1.63/1.81      inference('cnf', [status(esa)], [d3_tarski])).
% 1.63/1.81  thf('5', plain,
% 1.63/1.81      (![X35 : $i]:
% 1.63/1.81         (~ (r2_hidden @ X35 @ sk_B) | (r2_hidden @ (sk_E @ X35) @ sk_A))),
% 1.63/1.81      inference('cnf', [status(esa)], [zf_stmt_0])).
% 1.63/1.81  thf('6', plain,
% 1.63/1.81      (![X0 : $i]:
% 1.63/1.81         ((r1_tarski @ sk_B @ X0)
% 1.63/1.81          | (r2_hidden @ (sk_E @ (sk_C @ X0 @ sk_B)) @ sk_A))),
% 1.63/1.81      inference('sup-', [status(thm)], ['4', '5'])).
% 1.63/1.81  thf('7', plain, ((v1_funct_2 @ sk_C_2 @ sk_A @ sk_B)),
% 1.63/1.81      inference('cnf', [status(esa)], [zf_stmt_0])).
% 1.63/1.81  thf(d1_funct_2, axiom,
% 1.63/1.81    (![A:$i,B:$i,C:$i]:
% 1.63/1.81     ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) =>
% 1.63/1.81       ( ( ( ( B ) = ( k1_xboole_0 ) ) =>
% 1.63/1.81           ( ( ( v1_funct_2 @ C @ A @ B ) <=> ( ( C ) = ( k1_xboole_0 ) ) ) | 
% 1.63/1.81             ( ( A ) = ( k1_xboole_0 ) ) ) ) & 
% 1.63/1.81         ( ( ( ( B ) = ( k1_xboole_0 ) ) => ( ( A ) = ( k1_xboole_0 ) ) ) =>
% 1.63/1.81           ( ( v1_funct_2 @ C @ A @ B ) <=>
% 1.63/1.81             ( ( A ) = ( k1_relset_1 @ A @ B @ C ) ) ) ) ) ))).
% 1.63/1.81  thf(zf_stmt_1, axiom,
% 1.63/1.81    (![C:$i,B:$i,A:$i]:
% 1.63/1.81     ( ( zip_tseitin_1 @ C @ B @ A ) =>
% 1.63/1.81       ( ( v1_funct_2 @ C @ A @ B ) <=> ( ( A ) = ( k1_relset_1 @ A @ B @ C ) ) ) ))).
% 1.63/1.81  thf('8', plain,
% 1.63/1.81      (![X29 : $i, X30 : $i, X31 : $i]:
% 1.63/1.81         (~ (v1_funct_2 @ X31 @ X29 @ X30)
% 1.63/1.81          | ((X29) = (k1_relset_1 @ X29 @ X30 @ X31))
% 1.63/1.81          | ~ (zip_tseitin_1 @ X31 @ X30 @ X29))),
% 1.63/1.81      inference('cnf', [status(esa)], [zf_stmt_1])).
% 1.63/1.81  thf('9', plain,
% 1.63/1.81      ((~ (zip_tseitin_1 @ sk_C_2 @ sk_B @ sk_A)
% 1.63/1.81        | ((sk_A) = (k1_relset_1 @ sk_A @ sk_B @ sk_C_2)))),
% 1.63/1.81      inference('sup-', [status(thm)], ['7', '8'])).
% 1.63/1.81  thf('10', plain,
% 1.63/1.81      ((m1_subset_1 @ sk_C_2 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_A @ sk_B)))),
% 1.63/1.81      inference('cnf', [status(esa)], [zf_stmt_0])).
% 1.63/1.81  thf(zf_stmt_2, type, zip_tseitin_1 : $i > $i > $i > $o).
% 1.63/1.81  thf(zf_stmt_3, type, zip_tseitin_0 : $i > $i > $o).
% 1.63/1.81  thf(zf_stmt_4, axiom,
% 1.63/1.81    (![B:$i,A:$i]:
% 1.63/1.81     ( ( ( ( B ) = ( k1_xboole_0 ) ) => ( ( A ) = ( k1_xboole_0 ) ) ) =>
% 1.63/1.81       ( zip_tseitin_0 @ B @ A ) ))).
% 1.63/1.81  thf(zf_stmt_5, axiom,
% 1.63/1.81    (![A:$i,B:$i,C:$i]:
% 1.63/1.81     ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) =>
% 1.63/1.81       ( ( ( zip_tseitin_0 @ B @ A ) => ( zip_tseitin_1 @ C @ B @ A ) ) & 
% 1.63/1.81         ( ( ( B ) = ( k1_xboole_0 ) ) =>
% 1.63/1.81           ( ( ( A ) = ( k1_xboole_0 ) ) | 
% 1.63/1.81             ( ( v1_funct_2 @ C @ A @ B ) <=> ( ( C ) = ( k1_xboole_0 ) ) ) ) ) ) ))).
% 1.63/1.81  thf('11', plain,
% 1.63/1.81      (![X32 : $i, X33 : $i, X34 : $i]:
% 1.63/1.81         (~ (zip_tseitin_0 @ X32 @ X33)
% 1.63/1.81          | (zip_tseitin_1 @ X34 @ X32 @ X33)
% 1.63/1.81          | ~ (m1_subset_1 @ X34 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X33 @ X32))))),
% 1.63/1.81      inference('cnf', [status(esa)], [zf_stmt_5])).
% 1.63/1.81  thf('12', plain,
% 1.63/1.81      (((zip_tseitin_1 @ sk_C_2 @ sk_B @ sk_A)
% 1.63/1.81        | ~ (zip_tseitin_0 @ sk_B @ sk_A))),
% 1.63/1.81      inference('sup-', [status(thm)], ['10', '11'])).
% 1.63/1.81  thf('13', plain,
% 1.63/1.81      (![X4 : $i, X5 : $i]:
% 1.63/1.81         (((X5) = (X4))
% 1.63/1.81          | (r2_hidden @ (sk_C_1 @ X4 @ X5) @ X4)
% 1.63/1.81          | (r2_hidden @ (sk_C_1 @ X4 @ X5) @ X5))),
% 1.63/1.81      inference('cnf', [status(esa)], [t2_tarski])).
% 1.63/1.81  thf(t113_zfmisc_1, axiom,
% 1.63/1.81    (![A:$i,B:$i]:
% 1.63/1.81     ( ( ( k2_zfmisc_1 @ A @ B ) = ( k1_xboole_0 ) ) <=>
% 1.63/1.81       ( ( ( A ) = ( k1_xboole_0 ) ) | ( ( B ) = ( k1_xboole_0 ) ) ) ))).
% 1.63/1.81  thf('14', plain,
% 1.63/1.81      (![X7 : $i, X8 : $i]:
% 1.63/1.81         (((k2_zfmisc_1 @ X7 @ X8) = (k1_xboole_0)) | ((X8) != (k1_xboole_0)))),
% 1.63/1.81      inference('cnf', [status(esa)], [t113_zfmisc_1])).
% 1.63/1.81  thf('15', plain,
% 1.63/1.81      (![X7 : $i]: ((k2_zfmisc_1 @ X7 @ k1_xboole_0) = (k1_xboole_0))),
% 1.63/1.81      inference('simplify', [status(thm)], ['14'])).
% 1.63/1.81  thf(t152_zfmisc_1, axiom,
% 1.63/1.81    (![A:$i,B:$i]: ( ~( r2_hidden @ A @ ( k2_zfmisc_1 @ A @ B ) ) ))).
% 1.63/1.81  thf('16', plain,
% 1.63/1.81      (![X9 : $i, X10 : $i]: ~ (r2_hidden @ X9 @ (k2_zfmisc_1 @ X9 @ X10))),
% 1.63/1.81      inference('cnf', [status(esa)], [t152_zfmisc_1])).
% 1.63/1.81  thf('17', plain, (![X0 : $i]: ~ (r2_hidden @ X0 @ k1_xboole_0)),
% 1.63/1.81      inference('sup-', [status(thm)], ['15', '16'])).
% 1.63/1.81  thf('18', plain,
% 1.63/1.81      (![X0 : $i]:
% 1.63/1.81         ((r2_hidden @ (sk_C_1 @ X0 @ k1_xboole_0) @ X0)
% 1.63/1.81          | ((k1_xboole_0) = (X0)))),
% 1.63/1.81      inference('sup-', [status(thm)], ['13', '17'])).
% 1.63/1.81  thf('19', plain,
% 1.63/1.81      ((m1_subset_1 @ sk_C_2 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_A @ sk_B)))),
% 1.63/1.81      inference('cnf', [status(esa)], [zf_stmt_0])).
% 1.63/1.81  thf(cc2_relset_1, axiom,
% 1.63/1.81    (![A:$i,B:$i,C:$i]:
% 1.63/1.81     ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) =>
% 1.63/1.81       ( ( v4_relat_1 @ C @ A ) & ( v5_relat_1 @ C @ B ) ) ))).
% 1.63/1.81  thf('20', plain,
% 1.63/1.81      (![X18 : $i, X19 : $i, X20 : $i]:
% 1.63/1.81         ((v5_relat_1 @ X18 @ X20)
% 1.63/1.81          | ~ (m1_subset_1 @ X18 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X19 @ X20))))),
% 1.63/1.81      inference('cnf', [status(esa)], [cc2_relset_1])).
% 1.63/1.81  thf('21', plain, ((v5_relat_1 @ sk_C_2 @ sk_B)),
% 1.63/1.81      inference('sup-', [status(thm)], ['19', '20'])).
% 1.63/1.81  thf(d19_relat_1, axiom,
% 1.63/1.81    (![A:$i,B:$i]:
% 1.63/1.81     ( ( v1_relat_1 @ B ) =>
% 1.63/1.81       ( ( v5_relat_1 @ B @ A ) <=> ( r1_tarski @ ( k2_relat_1 @ B ) @ A ) ) ))).
% 1.63/1.81  thf('22', plain,
% 1.63/1.81      (![X11 : $i, X12 : $i]:
% 1.63/1.81         (~ (v5_relat_1 @ X11 @ X12)
% 1.63/1.81          | (r1_tarski @ (k2_relat_1 @ X11) @ X12)
% 1.63/1.81          | ~ (v1_relat_1 @ X11))),
% 1.63/1.81      inference('cnf', [status(esa)], [d19_relat_1])).
% 1.63/1.81  thf('23', plain,
% 1.63/1.81      ((~ (v1_relat_1 @ sk_C_2) | (r1_tarski @ (k2_relat_1 @ sk_C_2) @ sk_B))),
% 1.63/1.81      inference('sup-', [status(thm)], ['21', '22'])).
% 1.63/1.81  thf('24', plain,
% 1.63/1.81      ((m1_subset_1 @ sk_C_2 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_A @ sk_B)))),
% 1.63/1.81      inference('cnf', [status(esa)], [zf_stmt_0])).
% 1.63/1.81  thf(cc1_relset_1, axiom,
% 1.63/1.81    (![A:$i,B:$i,C:$i]:
% 1.63/1.81     ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) =>
% 1.63/1.81       ( v1_relat_1 @ C ) ))).
% 1.63/1.81  thf('25', plain,
% 1.63/1.81      (![X15 : $i, X16 : $i, X17 : $i]:
% 1.63/1.81         ((v1_relat_1 @ X15)
% 1.63/1.81          | ~ (m1_subset_1 @ X15 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X16 @ X17))))),
% 1.63/1.81      inference('cnf', [status(esa)], [cc1_relset_1])).
% 1.63/1.81  thf('26', plain, ((v1_relat_1 @ sk_C_2)),
% 1.63/1.81      inference('sup-', [status(thm)], ['24', '25'])).
% 1.63/1.81  thf('27', plain, ((r1_tarski @ (k2_relat_1 @ sk_C_2) @ sk_B)),
% 1.63/1.81      inference('demod', [status(thm)], ['23', '26'])).
% 1.63/1.81  thf('28', plain,
% 1.63/1.81      (![X0 : $i, X1 : $i, X2 : $i]:
% 1.63/1.81         (~ (r2_hidden @ X0 @ X1)
% 1.63/1.81          | (r2_hidden @ X0 @ X2)
% 1.63/1.81          | ~ (r1_tarski @ X1 @ X2))),
% 1.63/1.81      inference('cnf', [status(esa)], [d3_tarski])).
% 1.63/1.81  thf('29', plain,
% 1.63/1.81      (![X0 : $i]:
% 1.63/1.81         ((r2_hidden @ X0 @ sk_B) | ~ (r2_hidden @ X0 @ (k2_relat_1 @ sk_C_2)))),
% 1.63/1.81      inference('sup-', [status(thm)], ['27', '28'])).
% 1.63/1.81  thf('30', plain,
% 1.63/1.81      ((((k1_xboole_0) = (k2_relat_1 @ sk_C_2))
% 1.63/1.81        | (r2_hidden @ (sk_C_1 @ (k2_relat_1 @ sk_C_2) @ k1_xboole_0) @ sk_B))),
% 1.63/1.81      inference('sup-', [status(thm)], ['18', '29'])).
% 1.63/1.81  thf('31', plain,
% 1.63/1.81      (![X27 : $i, X28 : $i]:
% 1.63/1.81         ((zip_tseitin_0 @ X27 @ X28) | ((X27) = (k1_xboole_0)))),
% 1.63/1.81      inference('cnf', [status(esa)], [zf_stmt_4])).
% 1.63/1.81  thf('32', plain, (![X0 : $i]: ~ (r2_hidden @ X0 @ k1_xboole_0)),
% 1.63/1.82      inference('sup-', [status(thm)], ['15', '16'])).
% 1.63/1.82  thf('33', plain,
% 1.63/1.82      (![X0 : $i, X1 : $i, X2 : $i]:
% 1.63/1.82         (~ (r2_hidden @ X1 @ X0) | (zip_tseitin_0 @ X0 @ X2))),
% 1.63/1.82      inference('sup-', [status(thm)], ['31', '32'])).
% 1.63/1.82  thf('34', plain,
% 1.63/1.82      (![X0 : $i]:
% 1.63/1.82         (((k1_xboole_0) = (k2_relat_1 @ sk_C_2)) | (zip_tseitin_0 @ sk_B @ X0))),
% 1.63/1.82      inference('sup-', [status(thm)], ['30', '33'])).
% 1.63/1.82  thf('35', plain, (((k2_relset_1 @ sk_A @ sk_B @ sk_C_2) != (sk_B))),
% 1.63/1.82      inference('cnf', [status(esa)], [zf_stmt_0])).
% 1.63/1.82  thf('36', plain,
% 1.63/1.82      ((m1_subset_1 @ sk_C_2 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_A @ sk_B)))),
% 1.63/1.82      inference('cnf', [status(esa)], [zf_stmt_0])).
% 1.63/1.82  thf(redefinition_k2_relset_1, axiom,
% 1.63/1.82    (![A:$i,B:$i,C:$i]:
% 1.63/1.82     ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) =>
% 1.63/1.82       ( ( k2_relset_1 @ A @ B @ C ) = ( k2_relat_1 @ C ) ) ))).
% 1.63/1.82  thf('37', plain,
% 1.63/1.82      (![X24 : $i, X25 : $i, X26 : $i]:
% 1.63/1.82         (((k2_relset_1 @ X25 @ X26 @ X24) = (k2_relat_1 @ X24))
% 1.63/1.82          | ~ (m1_subset_1 @ X24 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X25 @ X26))))),
% 1.63/1.82      inference('cnf', [status(esa)], [redefinition_k2_relset_1])).
% 1.63/1.82  thf('38', plain,
% 1.63/1.82      (((k2_relset_1 @ sk_A @ sk_B @ sk_C_2) = (k2_relat_1 @ sk_C_2))),
% 1.63/1.82      inference('sup-', [status(thm)], ['36', '37'])).
% 1.63/1.82  thf('39', plain, (((k2_relat_1 @ sk_C_2) != (sk_B))),
% 1.63/1.82      inference('demod', [status(thm)], ['35', '38'])).
% 1.63/1.82  thf('40', plain,
% 1.63/1.82      (![X0 : $i]: (((k1_xboole_0) != (sk_B)) | (zip_tseitin_0 @ sk_B @ X0))),
% 1.63/1.82      inference('sup-', [status(thm)], ['34', '39'])).
% 1.63/1.82  thf('41', plain,
% 1.63/1.82      (![X27 : $i, X28 : $i]:
% 1.63/1.82         ((zip_tseitin_0 @ X27 @ X28) | ((X27) = (k1_xboole_0)))),
% 1.63/1.82      inference('cnf', [status(esa)], [zf_stmt_4])).
% 1.63/1.82  thf('42', plain, (![X0 : $i]: (zip_tseitin_0 @ sk_B @ X0)),
% 1.63/1.82      inference('clc', [status(thm)], ['40', '41'])).
% 1.63/1.82  thf('43', plain, ((zip_tseitin_1 @ sk_C_2 @ sk_B @ sk_A)),
% 1.63/1.82      inference('demod', [status(thm)], ['12', '42'])).
% 1.63/1.82  thf('44', plain,
% 1.63/1.82      ((m1_subset_1 @ sk_C_2 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_A @ sk_B)))),
% 1.63/1.82      inference('cnf', [status(esa)], [zf_stmt_0])).
% 1.63/1.82  thf(redefinition_k1_relset_1, axiom,
% 1.63/1.82    (![A:$i,B:$i,C:$i]:
% 1.63/1.82     ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) =>
% 1.63/1.82       ( ( k1_relset_1 @ A @ B @ C ) = ( k1_relat_1 @ C ) ) ))).
% 1.63/1.82  thf('45', plain,
% 1.63/1.82      (![X21 : $i, X22 : $i, X23 : $i]:
% 1.63/1.82         (((k1_relset_1 @ X22 @ X23 @ X21) = (k1_relat_1 @ X21))
% 1.63/1.82          | ~ (m1_subset_1 @ X21 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X22 @ X23))))),
% 1.63/1.82      inference('cnf', [status(esa)], [redefinition_k1_relset_1])).
% 1.63/1.82  thf('46', plain,
% 1.63/1.82      (((k1_relset_1 @ sk_A @ sk_B @ sk_C_2) = (k1_relat_1 @ sk_C_2))),
% 1.63/1.82      inference('sup-', [status(thm)], ['44', '45'])).
% 1.63/1.82  thf('47', plain, (((sk_A) = (k1_relat_1 @ sk_C_2))),
% 1.63/1.82      inference('demod', [status(thm)], ['9', '43', '46'])).
% 1.63/1.82  thf(t12_funct_1, axiom,
% 1.63/1.82    (![A:$i,B:$i]:
% 1.63/1.82     ( ( ( v1_relat_1 @ B ) & ( v1_funct_1 @ B ) ) =>
% 1.63/1.82       ( ( r2_hidden @ A @ ( k1_relat_1 @ B ) ) =>
% 1.63/1.82         ( r2_hidden @ ( k1_funct_1 @ B @ A ) @ ( k2_relat_1 @ B ) ) ) ))).
% 1.63/1.82  thf('48', plain,
% 1.63/1.82      (![X13 : $i, X14 : $i]:
% 1.63/1.82         (~ (r2_hidden @ X13 @ (k1_relat_1 @ X14))
% 1.63/1.82          | (r2_hidden @ (k1_funct_1 @ X14 @ X13) @ (k2_relat_1 @ X14))
% 1.63/1.82          | ~ (v1_funct_1 @ X14)
% 1.63/1.82          | ~ (v1_relat_1 @ X14))),
% 1.63/1.82      inference('cnf', [status(esa)], [t12_funct_1])).
% 1.63/1.82  thf('49', plain,
% 1.63/1.82      (![X0 : $i]:
% 1.63/1.82         (~ (r2_hidden @ X0 @ sk_A)
% 1.63/1.82          | ~ (v1_relat_1 @ sk_C_2)
% 1.63/1.82          | ~ (v1_funct_1 @ sk_C_2)
% 1.63/1.82          | (r2_hidden @ (k1_funct_1 @ sk_C_2 @ X0) @ (k2_relat_1 @ sk_C_2)))),
% 1.63/1.82      inference('sup-', [status(thm)], ['47', '48'])).
% 1.63/1.82  thf('50', plain, ((v1_relat_1 @ sk_C_2)),
% 1.63/1.82      inference('sup-', [status(thm)], ['24', '25'])).
% 1.63/1.82  thf('51', plain, ((v1_funct_1 @ sk_C_2)),
% 1.63/1.82      inference('cnf', [status(esa)], [zf_stmt_0])).
% 1.63/1.82  thf('52', plain,
% 1.63/1.82      (![X0 : $i]:
% 1.63/1.82         (~ (r2_hidden @ X0 @ sk_A)
% 1.63/1.82          | (r2_hidden @ (k1_funct_1 @ sk_C_2 @ X0) @ (k2_relat_1 @ sk_C_2)))),
% 1.63/1.82      inference('demod', [status(thm)], ['49', '50', '51'])).
% 1.63/1.82  thf('53', plain,
% 1.63/1.82      (![X0 : $i]:
% 1.63/1.82         ((r1_tarski @ sk_B @ X0)
% 1.63/1.82          | (r2_hidden @ (k1_funct_1 @ sk_C_2 @ (sk_E @ (sk_C @ X0 @ sk_B))) @ 
% 1.63/1.82             (k2_relat_1 @ sk_C_2)))),
% 1.63/1.82      inference('sup-', [status(thm)], ['6', '52'])).
% 1.63/1.82  thf('54', plain,
% 1.63/1.82      (![X0 : $i]:
% 1.63/1.82         ((r2_hidden @ (sk_C @ X0 @ sk_B) @ (k2_relat_1 @ sk_C_2))
% 1.63/1.82          | (r1_tarski @ sk_B @ X0)
% 1.63/1.82          | (r1_tarski @ sk_B @ X0))),
% 1.63/1.82      inference('sup+', [status(thm)], ['3', '53'])).
% 1.63/1.82  thf('55', plain,
% 1.63/1.82      (![X0 : $i]:
% 1.63/1.82         ((r1_tarski @ sk_B @ X0)
% 1.63/1.82          | (r2_hidden @ (sk_C @ X0 @ sk_B) @ (k2_relat_1 @ sk_C_2)))),
% 1.63/1.82      inference('simplify', [status(thm)], ['54'])).
% 1.63/1.82  thf('56', plain,
% 1.63/1.82      (![X1 : $i, X3 : $i]:
% 1.63/1.82         ((r1_tarski @ X1 @ X3) | ~ (r2_hidden @ (sk_C @ X3 @ X1) @ X3))),
% 1.63/1.82      inference('cnf', [status(esa)], [d3_tarski])).
% 1.63/1.82  thf('57', plain,
% 1.63/1.82      (((r1_tarski @ sk_B @ (k2_relat_1 @ sk_C_2))
% 1.63/1.82        | (r1_tarski @ sk_B @ (k2_relat_1 @ sk_C_2)))),
% 1.63/1.82      inference('sup-', [status(thm)], ['55', '56'])).
% 1.63/1.82  thf('58', plain, ((r1_tarski @ sk_B @ (k2_relat_1 @ sk_C_2))),
% 1.63/1.82      inference('simplify', [status(thm)], ['57'])).
% 1.63/1.82  thf('59', plain,
% 1.63/1.82      (![X0 : $i, X1 : $i, X2 : $i]:
% 1.63/1.82         (~ (r2_hidden @ X0 @ X1)
% 1.63/1.82          | (r2_hidden @ X0 @ X2)
% 1.63/1.82          | ~ (r1_tarski @ X1 @ X2))),
% 1.63/1.82      inference('cnf', [status(esa)], [d3_tarski])).
% 1.63/1.82  thf('60', plain,
% 1.63/1.82      (![X0 : $i]:
% 1.63/1.82         ((r2_hidden @ X0 @ (k2_relat_1 @ sk_C_2)) | ~ (r2_hidden @ X0 @ sk_B))),
% 1.63/1.82      inference('sup-', [status(thm)], ['58', '59'])).
% 1.63/1.82  thf('61', plain,
% 1.63/1.82      (![X0 : $i]:
% 1.63/1.82         ((r2_hidden @ (sk_C_1 @ sk_B @ X0) @ X0)
% 1.63/1.82          | ((X0) = (sk_B))
% 1.63/1.82          | (r2_hidden @ (sk_C_1 @ sk_B @ X0) @ (k2_relat_1 @ sk_C_2)))),
% 1.63/1.82      inference('sup-', [status(thm)], ['0', '60'])).
% 1.63/1.82  thf('62', plain,
% 1.63/1.82      ((((k2_relat_1 @ sk_C_2) = (sk_B))
% 1.63/1.82        | (r2_hidden @ (sk_C_1 @ sk_B @ (k2_relat_1 @ sk_C_2)) @ 
% 1.63/1.82           (k2_relat_1 @ sk_C_2)))),
% 1.63/1.82      inference('eq_fact', [status(thm)], ['61'])).
% 1.63/1.82  thf('63', plain, (((k2_relat_1 @ sk_C_2) != (sk_B))),
% 1.63/1.82      inference('demod', [status(thm)], ['35', '38'])).
% 1.63/1.82  thf('64', plain,
% 1.63/1.82      ((r2_hidden @ (sk_C_1 @ sk_B @ (k2_relat_1 @ sk_C_2)) @ 
% 1.63/1.82        (k2_relat_1 @ sk_C_2))),
% 1.63/1.82      inference('simplify_reflect-', [status(thm)], ['62', '63'])).
% 1.63/1.82  thf('65', plain,
% 1.63/1.82      (![X0 : $i]:
% 1.63/1.82         ((r2_hidden @ X0 @ sk_B) | ~ (r2_hidden @ X0 @ (k2_relat_1 @ sk_C_2)))),
% 1.63/1.82      inference('sup-', [status(thm)], ['27', '28'])).
% 1.63/1.82  thf('66', plain,
% 1.63/1.82      ((r2_hidden @ (sk_C_1 @ sk_B @ (k2_relat_1 @ sk_C_2)) @ sk_B)),
% 1.63/1.82      inference('sup-', [status(thm)], ['64', '65'])).
% 1.63/1.82  thf('67', plain,
% 1.63/1.82      (![X4 : $i, X5 : $i]:
% 1.63/1.82         (((X5) = (X4))
% 1.63/1.82          | ~ (r2_hidden @ (sk_C_1 @ X4 @ X5) @ X4)
% 1.63/1.82          | ~ (r2_hidden @ (sk_C_1 @ X4 @ X5) @ X5))),
% 1.63/1.82      inference('cnf', [status(esa)], [t2_tarski])).
% 1.63/1.82  thf('68', plain,
% 1.63/1.82      ((~ (r2_hidden @ (sk_C_1 @ sk_B @ (k2_relat_1 @ sk_C_2)) @ 
% 1.63/1.82           (k2_relat_1 @ sk_C_2))
% 1.63/1.82        | ((k2_relat_1 @ sk_C_2) = (sk_B)))),
% 1.63/1.82      inference('sup-', [status(thm)], ['66', '67'])).
% 1.63/1.82  thf('69', plain,
% 1.63/1.82      ((r2_hidden @ (sk_C_1 @ sk_B @ (k2_relat_1 @ sk_C_2)) @ 
% 1.63/1.82        (k2_relat_1 @ sk_C_2))),
% 1.63/1.82      inference('simplify_reflect-', [status(thm)], ['62', '63'])).
% 1.63/1.82  thf('70', plain, (((k2_relat_1 @ sk_C_2) = (sk_B))),
% 1.63/1.82      inference('demod', [status(thm)], ['68', '69'])).
% 1.63/1.82  thf('71', plain, (((k2_relat_1 @ sk_C_2) != (sk_B))),
% 1.63/1.82      inference('demod', [status(thm)], ['35', '38'])).
% 1.63/1.82  thf('72', plain, ($false),
% 1.63/1.82      inference('simplify_reflect-', [status(thm)], ['70', '71'])).
% 1.63/1.82  
% 1.63/1.82  % SZS output end Refutation
% 1.63/1.82  
% 1.63/1.82  % Zipperpin 1.5 exiting
%------------------------------------------------------------------------------
