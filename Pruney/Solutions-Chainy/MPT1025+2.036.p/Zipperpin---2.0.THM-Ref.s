%------------------------------------------------------------------------------
% File       : Zipperpin---2.0
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_portfolio.sh /export/starexec/sandbox/benchmark/theBenchmark.p /export/starexec/sandbox/tmp/tmp.09d5g4Radd

% Computer   : n024.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 13:58:48 EST 2020

% Result     : Theorem 0.22s
% Output     : Refutation 0.22s
% Verified   : 
% Statistics : Number of formulae       :  143 ( 617 expanded)
%              Number of leaves         :   36 ( 196 expanded)
%              Depth                    :   16
%              Number of atoms          : 1261 (9030 expanded)
%              Number of equality atoms :   28 ( 250 expanded)
%              Maximal formula depth    :   19 (   7 average)

% Comments   : 
%------------------------------------------------------------------------------
thf(k1_relat_1_type,type,(
    k1_relat_1: $i > $i )).

thf(k1_funct_1_type,type,(
    k1_funct_1: $i > $i > $i )).

thf(sk_A_type,type,(
    sk_A: $i )).

thf(sk_D_type,type,(
    sk_D: $i > $i > $i > $i )).

thf(r2_hidden_type,type,(
    r2_hidden: $i > $i > $o )).

thf(m1_subset_1_type,type,(
    m1_subset_1: $i > $i > $o )).

thf(k7_relset_1_type,type,(
    k7_relset_1: $i > $i > $i > $i > $i )).

thf(sk_E_1_type,type,(
    sk_E_1: $i )).

thf(v1_xboole_0_type,type,(
    v1_xboole_0: $i > $o )).

thf(sk_D_1_type,type,(
    sk_D_1: $i > $i > $i )).

thf(k1_zfmisc_1_type,type,(
    k1_zfmisc_1: $i > $i )).

thf(sk_B_1_type,type,(
    sk_B_1: $i )).

thf(v1_relat_1_type,type,(
    v1_relat_1: $i > $o )).

thf(v1_funct_2_type,type,(
    v1_funct_2: $i > $i > $i > $o )).

thf(sk_B_type,type,(
    sk_B: $i > $i )).

thf(v1_funct_1_type,type,(
    v1_funct_1: $i > $o )).

thf(k9_relat_1_type,type,(
    k9_relat_1: $i > $i > $i )).

thf(sk_C_type,type,(
    sk_C: $i )).

thf(k1_relset_1_type,type,(
    k1_relset_1: $i > $i > $i > $i )).

thf(sk_D_2_type,type,(
    sk_D_2: $i )).

thf(k2_zfmisc_1_type,type,(
    k2_zfmisc_1: $i > $i > $i )).

thf(k4_tarski_type,type,(
    k4_tarski: $i > $i > $i )).

thf(sk_F_type,type,(
    sk_F: $i > $i > $i > $i > $i )).

thf(t116_funct_2,conjecture,(
    ! [A: $i,B: $i,C: $i,D: $i] :
      ( ( ( v1_funct_1 @ D )
        & ( v1_funct_2 @ D @ A @ B )
        & ( m1_subset_1 @ D @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) )
     => ! [E: $i] :
          ~ ( ( r2_hidden @ E @ ( k7_relset_1 @ A @ B @ D @ C ) )
            & ! [F: $i] :
                ( ( m1_subset_1 @ F @ A )
               => ~ ( ( r2_hidden @ F @ C )
                    & ( E
                      = ( k1_funct_1 @ D @ F ) ) ) ) ) ) )).

thf(zf_stmt_0,negated_conjecture,(
    ~ ! [A: $i,B: $i,C: $i,D: $i] :
        ( ( ( v1_funct_1 @ D )
          & ( v1_funct_2 @ D @ A @ B )
          & ( m1_subset_1 @ D @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) )
       => ! [E: $i] :
            ~ ( ( r2_hidden @ E @ ( k7_relset_1 @ A @ B @ D @ C ) )
              & ! [F: $i] :
                  ( ( m1_subset_1 @ F @ A )
                 => ~ ( ( r2_hidden @ F @ C )
                      & ( E
                        = ( k1_funct_1 @ D @ F ) ) ) ) ) ) ),
    inference('cnf.neg',[status(esa)],[t116_funct_2])).

thf('0',plain,(
    r2_hidden @ sk_E_1 @ ( k7_relset_1 @ sk_A @ sk_B_1 @ sk_D_2 @ sk_C ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('1',plain,(
    m1_subset_1 @ sk_D_2 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_A @ sk_B_1 ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(redefinition_k7_relset_1,axiom,(
    ! [A: $i,B: $i,C: $i,D: $i] :
      ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) )
     => ( ( k7_relset_1 @ A @ B @ C @ D )
        = ( k9_relat_1 @ C @ D ) ) ) )).

thf('2',plain,(
    ! [X26: $i,X27: $i,X28: $i,X29: $i] :
      ( ~ ( m1_subset_1 @ X26 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X27 @ X28 ) ) )
      | ( ( k7_relset_1 @ X27 @ X28 @ X26 @ X29 )
        = ( k9_relat_1 @ X26 @ X29 ) ) ) ),
    inference(cnf,[status(esa)],[redefinition_k7_relset_1])).

thf('3',plain,(
    ! [X0: $i] :
      ( ( k7_relset_1 @ sk_A @ sk_B_1 @ sk_D_2 @ X0 )
      = ( k9_relat_1 @ sk_D_2 @ X0 ) ) ),
    inference('sup-',[status(thm)],['1','2'])).

thf('4',plain,(
    r2_hidden @ sk_E_1 @ ( k9_relat_1 @ sk_D_2 @ sk_C ) ),
    inference(demod,[status(thm)],['0','3'])).

thf(t143_relat_1,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( v1_relat_1 @ C )
     => ( ( r2_hidden @ A @ ( k9_relat_1 @ C @ B ) )
      <=> ? [D: $i] :
            ( ( r2_hidden @ D @ B )
            & ( r2_hidden @ ( k4_tarski @ D @ A ) @ C )
            & ( r2_hidden @ D @ ( k1_relat_1 @ C ) ) ) ) ) )).

thf('5',plain,(
    ! [X13: $i,X14: $i,X15: $i] :
      ( ~ ( r2_hidden @ X14 @ ( k9_relat_1 @ X15 @ X13 ) )
      | ( r2_hidden @ ( sk_D @ X15 @ X13 @ X14 ) @ ( k1_relat_1 @ X15 ) )
      | ~ ( v1_relat_1 @ X15 ) ) ),
    inference(cnf,[status(esa)],[t143_relat_1])).

thf('6',plain,
    ( ~ ( v1_relat_1 @ sk_D_2 )
    | ( r2_hidden @ ( sk_D @ sk_D_2 @ sk_C @ sk_E_1 ) @ ( k1_relat_1 @ sk_D_2 ) ) ),
    inference('sup-',[status(thm)],['4','5'])).

thf('7',plain,(
    m1_subset_1 @ sk_D_2 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_A @ sk_B_1 ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(cc2_relat_1,axiom,(
    ! [A: $i] :
      ( ( v1_relat_1 @ A )
     => ! [B: $i] :
          ( ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ A ) )
         => ( v1_relat_1 @ B ) ) ) )).

thf('8',plain,(
    ! [X8: $i,X9: $i] :
      ( ~ ( m1_subset_1 @ X8 @ ( k1_zfmisc_1 @ X9 ) )
      | ( v1_relat_1 @ X8 )
      | ~ ( v1_relat_1 @ X9 ) ) ),
    inference(cnf,[status(esa)],[cc2_relat_1])).

thf('9',plain,
    ( ~ ( v1_relat_1 @ ( k2_zfmisc_1 @ sk_A @ sk_B_1 ) )
    | ( v1_relat_1 @ sk_D_2 ) ),
    inference('sup-',[status(thm)],['7','8'])).

thf(fc6_relat_1,axiom,(
    ! [A: $i,B: $i] :
      ( v1_relat_1 @ ( k2_zfmisc_1 @ A @ B ) ) )).

thf('10',plain,(
    ! [X10: $i,X11: $i] :
      ( v1_relat_1 @ ( k2_zfmisc_1 @ X10 @ X11 ) ) ),
    inference(cnf,[status(esa)],[fc6_relat_1])).

thf('11',plain,(
    v1_relat_1 @ sk_D_2 ),
    inference(demod,[status(thm)],['9','10'])).

thf('12',plain,(
    r2_hidden @ ( sk_D @ sk_D_2 @ sk_C @ sk_E_1 ) @ ( k1_relat_1 @ sk_D_2 ) ),
    inference(demod,[status(thm)],['6','11'])).

thf(d1_xboole_0,axiom,(
    ! [A: $i] :
      ( ( v1_xboole_0 @ A )
    <=> ! [B: $i] :
          ~ ( r2_hidden @ B @ A ) ) )).

thf('13',plain,(
    ! [X0: $i,X1: $i] :
      ( ~ ( r2_hidden @ X0 @ X1 )
      | ~ ( v1_xboole_0 @ X1 ) ) ),
    inference(cnf,[status(esa)],[d1_xboole_0])).

thf('14',plain,(
    ~ ( v1_xboole_0 @ ( k1_relat_1 @ sk_D_2 ) ) ),
    inference('sup-',[status(thm)],['12','13'])).

thf('15',plain,(
    m1_subset_1 @ sk_D_2 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_A @ sk_B_1 ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(t22_relset_1,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ B @ A ) ) )
     => ( ! [D: $i] :
            ~ ( ( r2_hidden @ D @ B )
              & ! [E: $i] :
                  ~ ( r2_hidden @ ( k4_tarski @ D @ E ) @ C ) )
      <=> ( ( k1_relset_1 @ B @ A @ C )
          = B ) ) ) )).

thf('16',plain,(
    ! [X30: $i,X31: $i,X32: $i] :
      ( ( r2_hidden @ ( sk_D_1 @ X32 @ X30 ) @ X30 )
      | ( ( k1_relset_1 @ X30 @ X31 @ X32 )
        = X30 )
      | ~ ( m1_subset_1 @ X32 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X30 @ X31 ) ) ) ) ),
    inference(cnf,[status(esa)],[t22_relset_1])).

thf('17',plain,
    ( ( ( k1_relset_1 @ sk_A @ sk_B_1 @ sk_D_2 )
      = sk_A )
    | ( r2_hidden @ ( sk_D_1 @ sk_D_2 @ sk_A ) @ sk_A ) ),
    inference('sup-',[status(thm)],['15','16'])).

thf('18',plain,(
    m1_subset_1 @ sk_D_2 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_A @ sk_B_1 ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(redefinition_k1_relset_1,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) )
     => ( ( k1_relset_1 @ A @ B @ C )
        = ( k1_relat_1 @ C ) ) ) )).

thf('19',plain,(
    ! [X23: $i,X24: $i,X25: $i] :
      ( ( ( k1_relset_1 @ X24 @ X25 @ X23 )
        = ( k1_relat_1 @ X23 ) )
      | ~ ( m1_subset_1 @ X23 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X24 @ X25 ) ) ) ) ),
    inference(cnf,[status(esa)],[redefinition_k1_relset_1])).

thf('20',plain,
    ( ( k1_relset_1 @ sk_A @ sk_B_1 @ sk_D_2 )
    = ( k1_relat_1 @ sk_D_2 ) ),
    inference('sup-',[status(thm)],['18','19'])).

thf('21',plain,
    ( ( ( k1_relat_1 @ sk_D_2 )
      = sk_A )
    | ( r2_hidden @ ( sk_D_1 @ sk_D_2 @ sk_A ) @ sk_A ) ),
    inference(demod,[status(thm)],['17','20'])).

thf('22',plain,(
    ! [X0: $i,X1: $i] :
      ( ~ ( r2_hidden @ X0 @ X1 )
      | ~ ( v1_xboole_0 @ X1 ) ) ),
    inference(cnf,[status(esa)],[d1_xboole_0])).

thf('23',plain,
    ( ( ( k1_relat_1 @ sk_D_2 )
      = sk_A )
    | ~ ( v1_xboole_0 @ sk_A ) ),
    inference('sup-',[status(thm)],['21','22'])).

thf('24',plain,(
    r2_hidden @ sk_E_1 @ ( k9_relat_1 @ sk_D_2 @ sk_C ) ),
    inference(demod,[status(thm)],['0','3'])).

thf('25',plain,(
    m1_subset_1 @ sk_D_2 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_A @ sk_B_1 ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(t52_relset_1,axiom,(
    ! [A: $i] :
      ( ~ ( v1_xboole_0 @ A )
     => ! [B: $i] :
          ( ~ ( v1_xboole_0 @ B )
         => ! [C: $i] :
              ( ~ ( v1_xboole_0 @ C )
             => ! [D: $i] :
                  ( ( m1_subset_1 @ D @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ C @ A ) ) )
                 => ! [E: $i] :
                      ( ( m1_subset_1 @ E @ A )
                     => ( ( r2_hidden @ E @ ( k7_relset_1 @ C @ A @ D @ B ) )
                      <=> ? [F: $i] :
                            ( ( r2_hidden @ F @ B )
                            & ( r2_hidden @ ( k4_tarski @ F @ E ) @ D )
                            & ( m1_subset_1 @ F @ C ) ) ) ) ) ) ) ) )).

thf('26',plain,(
    ! [X35: $i,X36: $i,X37: $i,X38: $i,X40: $i] :
      ( ( v1_xboole_0 @ X35 )
      | ~ ( m1_subset_1 @ X36 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X37 @ X38 ) ) )
      | ~ ( r2_hidden @ X40 @ ( k7_relset_1 @ X37 @ X38 @ X36 @ X35 ) )
      | ( r2_hidden @ ( k4_tarski @ ( sk_F @ X40 @ X36 @ X37 @ X35 ) @ X40 ) @ X36 )
      | ~ ( m1_subset_1 @ X40 @ X38 )
      | ( v1_xboole_0 @ X37 )
      | ( v1_xboole_0 @ X38 ) ) ),
    inference(cnf,[status(esa)],[t52_relset_1])).

thf('27',plain,(
    ! [X0: $i,X1: $i] :
      ( ( v1_xboole_0 @ sk_B_1 )
      | ( v1_xboole_0 @ sk_A )
      | ~ ( m1_subset_1 @ X0 @ sk_B_1 )
      | ( r2_hidden @ ( k4_tarski @ ( sk_F @ X0 @ sk_D_2 @ sk_A @ X1 ) @ X0 ) @ sk_D_2 )
      | ~ ( r2_hidden @ X0 @ ( k7_relset_1 @ sk_A @ sk_B_1 @ sk_D_2 @ X1 ) )
      | ( v1_xboole_0 @ X1 ) ) ),
    inference('sup-',[status(thm)],['25','26'])).

thf('28',plain,(
    ! [X0: $i] :
      ( ( k7_relset_1 @ sk_A @ sk_B_1 @ sk_D_2 @ X0 )
      = ( k9_relat_1 @ sk_D_2 @ X0 ) ) ),
    inference('sup-',[status(thm)],['1','2'])).

thf('29',plain,(
    ! [X0: $i,X1: $i] :
      ( ( v1_xboole_0 @ sk_B_1 )
      | ( v1_xboole_0 @ sk_A )
      | ~ ( m1_subset_1 @ X0 @ sk_B_1 )
      | ( r2_hidden @ ( k4_tarski @ ( sk_F @ X0 @ sk_D_2 @ sk_A @ X1 ) @ X0 ) @ sk_D_2 )
      | ~ ( r2_hidden @ X0 @ ( k9_relat_1 @ sk_D_2 @ X1 ) )
      | ( v1_xboole_0 @ X1 ) ) ),
    inference(demod,[status(thm)],['27','28'])).

thf('30',plain,
    ( ( v1_xboole_0 @ sk_C )
    | ( r2_hidden @ ( k4_tarski @ ( sk_F @ sk_E_1 @ sk_D_2 @ sk_A @ sk_C ) @ sk_E_1 ) @ sk_D_2 )
    | ~ ( m1_subset_1 @ sk_E_1 @ sk_B_1 )
    | ( v1_xboole_0 @ sk_A )
    | ( v1_xboole_0 @ sk_B_1 ) ),
    inference('sup-',[status(thm)],['24','29'])).

thf('31',plain,(
    r2_hidden @ sk_E_1 @ ( k7_relset_1 @ sk_A @ sk_B_1 @ sk_D_2 @ sk_C ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('32',plain,(
    m1_subset_1 @ sk_D_2 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_A @ sk_B_1 ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(dt_k7_relset_1,axiom,(
    ! [A: $i,B: $i,C: $i,D: $i] :
      ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) )
     => ( m1_subset_1 @ ( k7_relset_1 @ A @ B @ C @ D ) @ ( k1_zfmisc_1 @ B ) ) ) )).

thf('33',plain,(
    ! [X19: $i,X20: $i,X21: $i,X22: $i] :
      ( ~ ( m1_subset_1 @ X19 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X20 @ X21 ) ) )
      | ( m1_subset_1 @ ( k7_relset_1 @ X20 @ X21 @ X19 @ X22 ) @ ( k1_zfmisc_1 @ X21 ) ) ) ),
    inference(cnf,[status(esa)],[dt_k7_relset_1])).

thf('34',plain,(
    ! [X0: $i] :
      ( m1_subset_1 @ ( k7_relset_1 @ sk_A @ sk_B_1 @ sk_D_2 @ X0 ) @ ( k1_zfmisc_1 @ sk_B_1 ) ) ),
    inference('sup-',[status(thm)],['32','33'])).

thf(t4_subset,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( ( r2_hidden @ A @ B )
        & ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ C ) ) )
     => ( m1_subset_1 @ A @ C ) ) )).

thf('35',plain,(
    ! [X5: $i,X6: $i,X7: $i] :
      ( ~ ( r2_hidden @ X5 @ X6 )
      | ~ ( m1_subset_1 @ X6 @ ( k1_zfmisc_1 @ X7 ) )
      | ( m1_subset_1 @ X5 @ X7 ) ) ),
    inference(cnf,[status(esa)],[t4_subset])).

thf('36',plain,(
    ! [X0: $i,X1: $i] :
      ( ( m1_subset_1 @ X1 @ sk_B_1 )
      | ~ ( r2_hidden @ X1 @ ( k7_relset_1 @ sk_A @ sk_B_1 @ sk_D_2 @ X0 ) ) ) ),
    inference('sup-',[status(thm)],['34','35'])).

thf('37',plain,(
    m1_subset_1 @ sk_E_1 @ sk_B_1 ),
    inference('sup-',[status(thm)],['31','36'])).

thf('38',plain,
    ( ( v1_xboole_0 @ sk_C )
    | ( r2_hidden @ ( k4_tarski @ ( sk_F @ sk_E_1 @ sk_D_2 @ sk_A @ sk_C ) @ sk_E_1 ) @ sk_D_2 )
    | ( v1_xboole_0 @ sk_A )
    | ( v1_xboole_0 @ sk_B_1 ) ),
    inference(demod,[status(thm)],['30','37'])).

thf(t8_funct_1,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( ( v1_relat_1 @ C )
        & ( v1_funct_1 @ C ) )
     => ( ( r2_hidden @ ( k4_tarski @ A @ B ) @ C )
      <=> ( ( r2_hidden @ A @ ( k1_relat_1 @ C ) )
          & ( B
            = ( k1_funct_1 @ C @ A ) ) ) ) ) )).

thf('39',plain,(
    ! [X16: $i,X17: $i,X18: $i] :
      ( ~ ( r2_hidden @ ( k4_tarski @ X16 @ X18 ) @ X17 )
      | ( X18
        = ( k1_funct_1 @ X17 @ X16 ) )
      | ~ ( v1_funct_1 @ X17 )
      | ~ ( v1_relat_1 @ X17 ) ) ),
    inference(cnf,[status(esa)],[t8_funct_1])).

thf('40',plain,
    ( ( v1_xboole_0 @ sk_B_1 )
    | ( v1_xboole_0 @ sk_A )
    | ( v1_xboole_0 @ sk_C )
    | ~ ( v1_relat_1 @ sk_D_2 )
    | ~ ( v1_funct_1 @ sk_D_2 )
    | ( sk_E_1
      = ( k1_funct_1 @ sk_D_2 @ ( sk_F @ sk_E_1 @ sk_D_2 @ sk_A @ sk_C ) ) ) ),
    inference('sup-',[status(thm)],['38','39'])).

thf('41',plain,(
    v1_relat_1 @ sk_D_2 ),
    inference(demod,[status(thm)],['9','10'])).

thf('42',plain,(
    v1_funct_1 @ sk_D_2 ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('43',plain,
    ( ( v1_xboole_0 @ sk_B_1 )
    | ( v1_xboole_0 @ sk_A )
    | ( v1_xboole_0 @ sk_C )
    | ( sk_E_1
      = ( k1_funct_1 @ sk_D_2 @ ( sk_F @ sk_E_1 @ sk_D_2 @ sk_A @ sk_C ) ) ) ),
    inference(demod,[status(thm)],['40','41','42'])).

thf('44',plain,(
    r2_hidden @ sk_E_1 @ ( k9_relat_1 @ sk_D_2 @ sk_C ) ),
    inference(demod,[status(thm)],['0','3'])).

thf('45',plain,(
    m1_subset_1 @ sk_D_2 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_A @ sk_B_1 ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('46',plain,(
    ! [X35: $i,X36: $i,X37: $i,X38: $i,X40: $i] :
      ( ( v1_xboole_0 @ X35 )
      | ~ ( m1_subset_1 @ X36 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X37 @ X38 ) ) )
      | ~ ( r2_hidden @ X40 @ ( k7_relset_1 @ X37 @ X38 @ X36 @ X35 ) )
      | ( m1_subset_1 @ ( sk_F @ X40 @ X36 @ X37 @ X35 ) @ X37 )
      | ~ ( m1_subset_1 @ X40 @ X38 )
      | ( v1_xboole_0 @ X37 )
      | ( v1_xboole_0 @ X38 ) ) ),
    inference(cnf,[status(esa)],[t52_relset_1])).

thf('47',plain,(
    ! [X0: $i,X1: $i] :
      ( ( v1_xboole_0 @ sk_B_1 )
      | ( v1_xboole_0 @ sk_A )
      | ~ ( m1_subset_1 @ X0 @ sk_B_1 )
      | ( m1_subset_1 @ ( sk_F @ X0 @ sk_D_2 @ sk_A @ X1 ) @ sk_A )
      | ~ ( r2_hidden @ X0 @ ( k7_relset_1 @ sk_A @ sk_B_1 @ sk_D_2 @ X1 ) )
      | ( v1_xboole_0 @ X1 ) ) ),
    inference('sup-',[status(thm)],['45','46'])).

thf('48',plain,(
    ! [X0: $i] :
      ( ( k7_relset_1 @ sk_A @ sk_B_1 @ sk_D_2 @ X0 )
      = ( k9_relat_1 @ sk_D_2 @ X0 ) ) ),
    inference('sup-',[status(thm)],['1','2'])).

thf('49',plain,(
    ! [X0: $i,X1: $i] :
      ( ( v1_xboole_0 @ sk_B_1 )
      | ( v1_xboole_0 @ sk_A )
      | ~ ( m1_subset_1 @ X0 @ sk_B_1 )
      | ( m1_subset_1 @ ( sk_F @ X0 @ sk_D_2 @ sk_A @ X1 ) @ sk_A )
      | ~ ( r2_hidden @ X0 @ ( k9_relat_1 @ sk_D_2 @ X1 ) )
      | ( v1_xboole_0 @ X1 ) ) ),
    inference(demod,[status(thm)],['47','48'])).

thf('50',plain,
    ( ( v1_xboole_0 @ sk_C )
    | ( m1_subset_1 @ ( sk_F @ sk_E_1 @ sk_D_2 @ sk_A @ sk_C ) @ sk_A )
    | ~ ( m1_subset_1 @ sk_E_1 @ sk_B_1 )
    | ( v1_xboole_0 @ sk_A )
    | ( v1_xboole_0 @ sk_B_1 ) ),
    inference('sup-',[status(thm)],['44','49'])).

thf('51',plain,(
    m1_subset_1 @ sk_E_1 @ sk_B_1 ),
    inference('sup-',[status(thm)],['31','36'])).

thf('52',plain,
    ( ( v1_xboole_0 @ sk_C )
    | ( m1_subset_1 @ ( sk_F @ sk_E_1 @ sk_D_2 @ sk_A @ sk_C ) @ sk_A )
    | ( v1_xboole_0 @ sk_A )
    | ( v1_xboole_0 @ sk_B_1 ) ),
    inference(demod,[status(thm)],['50','51'])).

thf('53',plain,(
    r2_hidden @ sk_E_1 @ ( k9_relat_1 @ sk_D_2 @ sk_C ) ),
    inference(demod,[status(thm)],['0','3'])).

thf('54',plain,(
    m1_subset_1 @ sk_D_2 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_A @ sk_B_1 ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('55',plain,(
    ! [X35: $i,X36: $i,X37: $i,X38: $i,X40: $i] :
      ( ( v1_xboole_0 @ X35 )
      | ~ ( m1_subset_1 @ X36 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X37 @ X38 ) ) )
      | ~ ( r2_hidden @ X40 @ ( k7_relset_1 @ X37 @ X38 @ X36 @ X35 ) )
      | ( r2_hidden @ ( sk_F @ X40 @ X36 @ X37 @ X35 ) @ X35 )
      | ~ ( m1_subset_1 @ X40 @ X38 )
      | ( v1_xboole_0 @ X37 )
      | ( v1_xboole_0 @ X38 ) ) ),
    inference(cnf,[status(esa)],[t52_relset_1])).

thf('56',plain,(
    ! [X0: $i,X1: $i] :
      ( ( v1_xboole_0 @ sk_B_1 )
      | ( v1_xboole_0 @ sk_A )
      | ~ ( m1_subset_1 @ X0 @ sk_B_1 )
      | ( r2_hidden @ ( sk_F @ X0 @ sk_D_2 @ sk_A @ X1 ) @ X1 )
      | ~ ( r2_hidden @ X0 @ ( k7_relset_1 @ sk_A @ sk_B_1 @ sk_D_2 @ X1 ) )
      | ( v1_xboole_0 @ X1 ) ) ),
    inference('sup-',[status(thm)],['54','55'])).

thf('57',plain,(
    ! [X0: $i] :
      ( ( k7_relset_1 @ sk_A @ sk_B_1 @ sk_D_2 @ X0 )
      = ( k9_relat_1 @ sk_D_2 @ X0 ) ) ),
    inference('sup-',[status(thm)],['1','2'])).

thf('58',plain,(
    ! [X0: $i,X1: $i] :
      ( ( v1_xboole_0 @ sk_B_1 )
      | ( v1_xboole_0 @ sk_A )
      | ~ ( m1_subset_1 @ X0 @ sk_B_1 )
      | ( r2_hidden @ ( sk_F @ X0 @ sk_D_2 @ sk_A @ X1 ) @ X1 )
      | ~ ( r2_hidden @ X0 @ ( k9_relat_1 @ sk_D_2 @ X1 ) )
      | ( v1_xboole_0 @ X1 ) ) ),
    inference(demod,[status(thm)],['56','57'])).

thf('59',plain,
    ( ( v1_xboole_0 @ sk_C )
    | ( r2_hidden @ ( sk_F @ sk_E_1 @ sk_D_2 @ sk_A @ sk_C ) @ sk_C )
    | ~ ( m1_subset_1 @ sk_E_1 @ sk_B_1 )
    | ( v1_xboole_0 @ sk_A )
    | ( v1_xboole_0 @ sk_B_1 ) ),
    inference('sup-',[status(thm)],['53','58'])).

thf('60',plain,(
    m1_subset_1 @ sk_E_1 @ sk_B_1 ),
    inference('sup-',[status(thm)],['31','36'])).

thf('61',plain,
    ( ( v1_xboole_0 @ sk_C )
    | ( r2_hidden @ ( sk_F @ sk_E_1 @ sk_D_2 @ sk_A @ sk_C ) @ sk_C )
    | ( v1_xboole_0 @ sk_A )
    | ( v1_xboole_0 @ sk_B_1 ) ),
    inference(demod,[status(thm)],['59','60'])).

thf('62',plain,(
    ! [X41: $i] :
      ( ( sk_E_1
       != ( k1_funct_1 @ sk_D_2 @ X41 ) )
      | ~ ( r2_hidden @ X41 @ sk_C )
      | ~ ( m1_subset_1 @ X41 @ sk_A ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('63',plain,
    ( ( v1_xboole_0 @ sk_B_1 )
    | ( v1_xboole_0 @ sk_A )
    | ( v1_xboole_0 @ sk_C )
    | ~ ( m1_subset_1 @ ( sk_F @ sk_E_1 @ sk_D_2 @ sk_A @ sk_C ) @ sk_A )
    | ( sk_E_1
     != ( k1_funct_1 @ sk_D_2 @ ( sk_F @ sk_E_1 @ sk_D_2 @ sk_A @ sk_C ) ) ) ),
    inference('sup-',[status(thm)],['61','62'])).

thf('64',plain,
    ( ( v1_xboole_0 @ sk_B_1 )
    | ( v1_xboole_0 @ sk_A )
    | ( v1_xboole_0 @ sk_C )
    | ( sk_E_1
     != ( k1_funct_1 @ sk_D_2 @ ( sk_F @ sk_E_1 @ sk_D_2 @ sk_A @ sk_C ) ) )
    | ( v1_xboole_0 @ sk_C )
    | ( v1_xboole_0 @ sk_A )
    | ( v1_xboole_0 @ sk_B_1 ) ),
    inference('sup-',[status(thm)],['52','63'])).

thf('65',plain,
    ( ( sk_E_1
     != ( k1_funct_1 @ sk_D_2 @ ( sk_F @ sk_E_1 @ sk_D_2 @ sk_A @ sk_C ) ) )
    | ( v1_xboole_0 @ sk_C )
    | ( v1_xboole_0 @ sk_A )
    | ( v1_xboole_0 @ sk_B_1 ) ),
    inference(simplify,[status(thm)],['64'])).

thf('66',plain,
    ( ( sk_E_1 != sk_E_1 )
    | ( v1_xboole_0 @ sk_C )
    | ( v1_xboole_0 @ sk_A )
    | ( v1_xboole_0 @ sk_B_1 )
    | ( v1_xboole_0 @ sk_B_1 )
    | ( v1_xboole_0 @ sk_A )
    | ( v1_xboole_0 @ sk_C ) ),
    inference('sup-',[status(thm)],['43','65'])).

thf('67',plain,
    ( ( v1_xboole_0 @ sk_B_1 )
    | ( v1_xboole_0 @ sk_A )
    | ( v1_xboole_0 @ sk_C ) ),
    inference(simplify,[status(thm)],['66'])).

thf('68',plain,(
    ! [X2: $i] :
      ( ( v1_xboole_0 @ X2 )
      | ( r2_hidden @ ( sk_B @ X2 ) @ X2 ) ) ),
    inference(cnf,[status(esa)],[d1_xboole_0])).

thf('69',plain,(
    ! [X13: $i,X14: $i,X15: $i] :
      ( ~ ( r2_hidden @ X14 @ ( k9_relat_1 @ X15 @ X13 ) )
      | ( r2_hidden @ ( sk_D @ X15 @ X13 @ X14 ) @ X13 )
      | ~ ( v1_relat_1 @ X15 ) ) ),
    inference(cnf,[status(esa)],[t143_relat_1])).

thf('70',plain,(
    ! [X0: $i,X1: $i] :
      ( ( v1_xboole_0 @ ( k9_relat_1 @ X1 @ X0 ) )
      | ~ ( v1_relat_1 @ X1 )
      | ( r2_hidden @ ( sk_D @ X1 @ X0 @ ( sk_B @ ( k9_relat_1 @ X1 @ X0 ) ) ) @ X0 ) ) ),
    inference('sup-',[status(thm)],['68','69'])).

thf('71',plain,(
    ! [X0: $i,X1: $i] :
      ( ~ ( r2_hidden @ X0 @ X1 )
      | ~ ( v1_xboole_0 @ X1 ) ) ),
    inference(cnf,[status(esa)],[d1_xboole_0])).

thf('72',plain,(
    ! [X0: $i,X1: $i] :
      ( ~ ( v1_relat_1 @ X1 )
      | ( v1_xboole_0 @ ( k9_relat_1 @ X1 @ X0 ) )
      | ~ ( v1_xboole_0 @ X0 ) ) ),
    inference('sup-',[status(thm)],['70','71'])).

thf('73',plain,(
    r2_hidden @ sk_E_1 @ ( k7_relset_1 @ sk_A @ sk_B_1 @ sk_D_2 @ sk_C ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('74',plain,(
    ! [X0: $i,X1: $i] :
      ( ~ ( r2_hidden @ X0 @ X1 )
      | ~ ( v1_xboole_0 @ X1 ) ) ),
    inference(cnf,[status(esa)],[d1_xboole_0])).

thf('75',plain,(
    ~ ( v1_xboole_0 @ ( k7_relset_1 @ sk_A @ sk_B_1 @ sk_D_2 @ sk_C ) ) ),
    inference('sup-',[status(thm)],['73','74'])).

thf('76',plain,(
    ! [X0: $i] :
      ( ( k7_relset_1 @ sk_A @ sk_B_1 @ sk_D_2 @ X0 )
      = ( k9_relat_1 @ sk_D_2 @ X0 ) ) ),
    inference('sup-',[status(thm)],['1','2'])).

thf('77',plain,(
    ~ ( v1_xboole_0 @ ( k9_relat_1 @ sk_D_2 @ sk_C ) ) ),
    inference(demod,[status(thm)],['75','76'])).

thf('78',plain,
    ( ~ ( v1_xboole_0 @ sk_C )
    | ~ ( v1_relat_1 @ sk_D_2 ) ),
    inference('sup-',[status(thm)],['72','77'])).

thf('79',plain,(
    v1_relat_1 @ sk_D_2 ),
    inference(demod,[status(thm)],['9','10'])).

thf('80',plain,(
    ~ ( v1_xboole_0 @ sk_C ) ),
    inference(demod,[status(thm)],['78','79'])).

thf('81',plain,
    ( ( v1_xboole_0 @ sk_A )
    | ( v1_xboole_0 @ sk_B_1 ) ),
    inference(clc,[status(thm)],['67','80'])).

thf('82',plain,(
    ! [X0: $i] :
      ( m1_subset_1 @ ( k7_relset_1 @ sk_A @ sk_B_1 @ sk_D_2 @ X0 ) @ ( k1_zfmisc_1 @ sk_B_1 ) ) ),
    inference('sup-',[status(thm)],['32','33'])).

thf(cc1_subset_1,axiom,(
    ! [A: $i] :
      ( ( v1_xboole_0 @ A )
     => ! [B: $i] :
          ( ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ A ) )
         => ( v1_xboole_0 @ B ) ) ) )).

thf('83',plain,(
    ! [X3: $i,X4: $i] :
      ( ~ ( m1_subset_1 @ X3 @ ( k1_zfmisc_1 @ X4 ) )
      | ( v1_xboole_0 @ X3 )
      | ~ ( v1_xboole_0 @ X4 ) ) ),
    inference(cnf,[status(esa)],[cc1_subset_1])).

thf('84',plain,(
    ! [X0: $i] :
      ( ~ ( v1_xboole_0 @ sk_B_1 )
      | ( v1_xboole_0 @ ( k7_relset_1 @ sk_A @ sk_B_1 @ sk_D_2 @ X0 ) ) ) ),
    inference('sup-',[status(thm)],['82','83'])).

thf('85',plain,(
    ! [X0: $i] :
      ( ( k7_relset_1 @ sk_A @ sk_B_1 @ sk_D_2 @ X0 )
      = ( k9_relat_1 @ sk_D_2 @ X0 ) ) ),
    inference('sup-',[status(thm)],['1','2'])).

thf('86',plain,(
    ! [X0: $i] :
      ( ~ ( v1_xboole_0 @ sk_B_1 )
      | ( v1_xboole_0 @ ( k9_relat_1 @ sk_D_2 @ X0 ) ) ) ),
    inference(demod,[status(thm)],['84','85'])).

thf('87',plain,(
    ! [X0: $i] :
      ( ( v1_xboole_0 @ sk_A )
      | ( v1_xboole_0 @ ( k9_relat_1 @ sk_D_2 @ X0 ) ) ) ),
    inference('sup-',[status(thm)],['81','86'])).

thf('88',plain,(
    r2_hidden @ ( sk_D @ sk_D_2 @ sk_C @ sk_E_1 ) @ ( k1_relat_1 @ sk_D_2 ) ),
    inference(demod,[status(thm)],['6','11'])).

thf('89',plain,(
    r2_hidden @ sk_E_1 @ ( k9_relat_1 @ sk_D_2 @ sk_C ) ),
    inference(demod,[status(thm)],['0','3'])).

thf('90',plain,(
    ! [X13: $i,X14: $i,X15: $i] :
      ( ~ ( r2_hidden @ X14 @ ( k9_relat_1 @ X15 @ X13 ) )
      | ( r2_hidden @ ( k4_tarski @ ( sk_D @ X15 @ X13 @ X14 ) @ X14 ) @ X15 )
      | ~ ( v1_relat_1 @ X15 ) ) ),
    inference(cnf,[status(esa)],[t143_relat_1])).

thf('91',plain,
    ( ~ ( v1_relat_1 @ sk_D_2 )
    | ( r2_hidden @ ( k4_tarski @ ( sk_D @ sk_D_2 @ sk_C @ sk_E_1 ) @ sk_E_1 ) @ sk_D_2 ) ),
    inference('sup-',[status(thm)],['89','90'])).

thf('92',plain,(
    v1_relat_1 @ sk_D_2 ),
    inference(demod,[status(thm)],['9','10'])).

thf('93',plain,(
    r2_hidden @ ( k4_tarski @ ( sk_D @ sk_D_2 @ sk_C @ sk_E_1 ) @ sk_E_1 ) @ sk_D_2 ),
    inference(demod,[status(thm)],['91','92'])).

thf('94',plain,(
    ! [X12: $i,X13: $i,X14: $i,X15: $i] :
      ( ~ ( r2_hidden @ X12 @ X13 )
      | ~ ( r2_hidden @ ( k4_tarski @ X12 @ X14 ) @ X15 )
      | ~ ( r2_hidden @ X12 @ ( k1_relat_1 @ X15 ) )
      | ( r2_hidden @ X14 @ ( k9_relat_1 @ X15 @ X13 ) )
      | ~ ( v1_relat_1 @ X15 ) ) ),
    inference(cnf,[status(esa)],[t143_relat_1])).

thf('95',plain,(
    ! [X0: $i] :
      ( ~ ( v1_relat_1 @ sk_D_2 )
      | ( r2_hidden @ sk_E_1 @ ( k9_relat_1 @ sk_D_2 @ X0 ) )
      | ~ ( r2_hidden @ ( sk_D @ sk_D_2 @ sk_C @ sk_E_1 ) @ ( k1_relat_1 @ sk_D_2 ) )
      | ~ ( r2_hidden @ ( sk_D @ sk_D_2 @ sk_C @ sk_E_1 ) @ X0 ) ) ),
    inference('sup-',[status(thm)],['93','94'])).

thf('96',plain,(
    v1_relat_1 @ sk_D_2 ),
    inference(demod,[status(thm)],['9','10'])).

thf('97',plain,(
    r2_hidden @ ( sk_D @ sk_D_2 @ sk_C @ sk_E_1 ) @ ( k1_relat_1 @ sk_D_2 ) ),
    inference(demod,[status(thm)],['6','11'])).

thf('98',plain,(
    ! [X0: $i] :
      ( ( r2_hidden @ sk_E_1 @ ( k9_relat_1 @ sk_D_2 @ X0 ) )
      | ~ ( r2_hidden @ ( sk_D @ sk_D_2 @ sk_C @ sk_E_1 ) @ X0 ) ) ),
    inference(demod,[status(thm)],['95','96','97'])).

thf('99',plain,(
    r2_hidden @ sk_E_1 @ ( k9_relat_1 @ sk_D_2 @ ( k1_relat_1 @ sk_D_2 ) ) ),
    inference('sup-',[status(thm)],['88','98'])).

thf('100',plain,(
    ! [X0: $i,X1: $i] :
      ( ~ ( r2_hidden @ X0 @ X1 )
      | ~ ( v1_xboole_0 @ X1 ) ) ),
    inference(cnf,[status(esa)],[d1_xboole_0])).

thf('101',plain,(
    ~ ( v1_xboole_0 @ ( k9_relat_1 @ sk_D_2 @ ( k1_relat_1 @ sk_D_2 ) ) ) ),
    inference('sup-',[status(thm)],['99','100'])).

thf('102',plain,(
    v1_xboole_0 @ sk_A ),
    inference('sup-',[status(thm)],['87','101'])).

thf('103',plain,
    ( ( k1_relat_1 @ sk_D_2 )
    = sk_A ),
    inference(demod,[status(thm)],['23','102'])).

thf('104',plain,(
    v1_xboole_0 @ sk_A ),
    inference('sup-',[status(thm)],['87','101'])).

thf('105',plain,(
    $false ),
    inference(demod,[status(thm)],['14','103','104'])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.07/0.13  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.07/0.14  % Command    : run_portfolio.sh /export/starexec/sandbox/benchmark/theBenchmark.p /export/starexec/sandbox/tmp/tmp.09d5g4Radd
% 0.15/0.35  % Computer   : n024.cluster.edu
% 0.15/0.35  % Model      : x86_64 x86_64
% 0.15/0.35  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.15/0.35  % Memory     : 8042.1875MB
% 0.15/0.35  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.15/0.35  % CPULimit   : 60
% 0.15/0.35  % DateTime   : Tue Dec  1 18:24:21 EST 2020
% 0.15/0.36  % CPUTime    : 
% 0.15/0.36  % Running portfolio for 600 s
% 0.15/0.36  % File         : /export/starexec/sandbox/benchmark/theBenchmark.p
% 0.15/0.36  % Number of cores: 8
% 0.15/0.36  % Python version: Python 3.6.8
% 0.15/0.36  % Running in FO mode
% 0.22/0.60  % Running /export/starexec/sandbox/solver/bin/fo/fo7.sh for 78
% 0.22/0.60  % Solved by: fo/fo7.sh
% 0.22/0.60  To remain in the chosen logic fragment, unification with booleans has been disabled.
% 0.22/0.60  % done 191 iterations in 0.134s
% 0.22/0.60  % SZS status Theorem for '/export/starexec/sandbox/benchmark/theBenchmark.p'
% 0.22/0.60  % SZS output start Refutation
% 0.22/0.60  thf(k1_relat_1_type, type, k1_relat_1: $i > $i).
% 0.22/0.60  thf(k1_funct_1_type, type, k1_funct_1: $i > $i > $i).
% 0.22/0.60  thf(sk_A_type, type, sk_A: $i).
% 0.22/0.60  thf(sk_D_type, type, sk_D: $i > $i > $i > $i).
% 0.22/0.60  thf(r2_hidden_type, type, r2_hidden: $i > $i > $o).
% 0.22/0.60  thf(m1_subset_1_type, type, m1_subset_1: $i > $i > $o).
% 0.22/0.60  thf(k7_relset_1_type, type, k7_relset_1: $i > $i > $i > $i > $i).
% 0.22/0.60  thf(sk_E_1_type, type, sk_E_1: $i).
% 0.22/0.60  thf(v1_xboole_0_type, type, v1_xboole_0: $i > $o).
% 0.22/0.60  thf(sk_D_1_type, type, sk_D_1: $i > $i > $i).
% 0.22/0.60  thf(k1_zfmisc_1_type, type, k1_zfmisc_1: $i > $i).
% 0.22/0.60  thf(sk_B_1_type, type, sk_B_1: $i).
% 0.22/0.60  thf(v1_relat_1_type, type, v1_relat_1: $i > $o).
% 0.22/0.60  thf(v1_funct_2_type, type, v1_funct_2: $i > $i > $i > $o).
% 0.22/0.60  thf(sk_B_type, type, sk_B: $i > $i).
% 0.22/0.60  thf(v1_funct_1_type, type, v1_funct_1: $i > $o).
% 0.22/0.60  thf(k9_relat_1_type, type, k9_relat_1: $i > $i > $i).
% 0.22/0.60  thf(sk_C_type, type, sk_C: $i).
% 0.22/0.60  thf(k1_relset_1_type, type, k1_relset_1: $i > $i > $i > $i).
% 0.22/0.60  thf(sk_D_2_type, type, sk_D_2: $i).
% 0.22/0.60  thf(k2_zfmisc_1_type, type, k2_zfmisc_1: $i > $i > $i).
% 0.22/0.60  thf(k4_tarski_type, type, k4_tarski: $i > $i > $i).
% 0.22/0.60  thf(sk_F_type, type, sk_F: $i > $i > $i > $i > $i).
% 0.22/0.60  thf(t116_funct_2, conjecture,
% 0.22/0.60    (![A:$i,B:$i,C:$i,D:$i]:
% 0.22/0.60     ( ( ( v1_funct_1 @ D ) & ( v1_funct_2 @ D @ A @ B ) & 
% 0.22/0.60         ( m1_subset_1 @ D @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) ) =>
% 0.22/0.60       ( ![E:$i]:
% 0.22/0.60         ( ~( ( r2_hidden @ E @ ( k7_relset_1 @ A @ B @ D @ C ) ) & 
% 0.22/0.60              ( ![F:$i]:
% 0.22/0.60                ( ( m1_subset_1 @ F @ A ) =>
% 0.22/0.60                  ( ~( ( r2_hidden @ F @ C ) & 
% 0.22/0.60                       ( ( E ) = ( k1_funct_1 @ D @ F ) ) ) ) ) ) ) ) ) ))).
% 0.22/0.60  thf(zf_stmt_0, negated_conjecture,
% 0.22/0.60    (~( ![A:$i,B:$i,C:$i,D:$i]:
% 0.22/0.60        ( ( ( v1_funct_1 @ D ) & ( v1_funct_2 @ D @ A @ B ) & 
% 0.22/0.60            ( m1_subset_1 @ D @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) ) =>
% 0.22/0.60          ( ![E:$i]:
% 0.22/0.60            ( ~( ( r2_hidden @ E @ ( k7_relset_1 @ A @ B @ D @ C ) ) & 
% 0.22/0.60                 ( ![F:$i]:
% 0.22/0.60                   ( ( m1_subset_1 @ F @ A ) =>
% 0.22/0.60                     ( ~( ( r2_hidden @ F @ C ) & 
% 0.22/0.60                          ( ( E ) = ( k1_funct_1 @ D @ F ) ) ) ) ) ) ) ) ) ) )),
% 0.22/0.60    inference('cnf.neg', [status(esa)], [t116_funct_2])).
% 0.22/0.60  thf('0', plain,
% 0.22/0.60      ((r2_hidden @ sk_E_1 @ (k7_relset_1 @ sk_A @ sk_B_1 @ sk_D_2 @ sk_C))),
% 0.22/0.60      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.22/0.60  thf('1', plain,
% 0.22/0.60      ((m1_subset_1 @ sk_D_2 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_A @ sk_B_1)))),
% 0.22/0.60      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.22/0.60  thf(redefinition_k7_relset_1, axiom,
% 0.22/0.60    (![A:$i,B:$i,C:$i,D:$i]:
% 0.22/0.60     ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) =>
% 0.22/0.60       ( ( k7_relset_1 @ A @ B @ C @ D ) = ( k9_relat_1 @ C @ D ) ) ))).
% 0.22/0.60  thf('2', plain,
% 0.22/0.60      (![X26 : $i, X27 : $i, X28 : $i, X29 : $i]:
% 0.22/0.60         (~ (m1_subset_1 @ X26 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X27 @ X28)))
% 0.22/0.60          | ((k7_relset_1 @ X27 @ X28 @ X26 @ X29) = (k9_relat_1 @ X26 @ X29)))),
% 0.22/0.60      inference('cnf', [status(esa)], [redefinition_k7_relset_1])).
% 0.22/0.60  thf('3', plain,
% 0.22/0.60      (![X0 : $i]:
% 0.22/0.60         ((k7_relset_1 @ sk_A @ sk_B_1 @ sk_D_2 @ X0)
% 0.22/0.60           = (k9_relat_1 @ sk_D_2 @ X0))),
% 0.22/0.60      inference('sup-', [status(thm)], ['1', '2'])).
% 0.22/0.60  thf('4', plain, ((r2_hidden @ sk_E_1 @ (k9_relat_1 @ sk_D_2 @ sk_C))),
% 0.22/0.60      inference('demod', [status(thm)], ['0', '3'])).
% 0.22/0.60  thf(t143_relat_1, axiom,
% 0.22/0.60    (![A:$i,B:$i,C:$i]:
% 0.22/0.60     ( ( v1_relat_1 @ C ) =>
% 0.22/0.60       ( ( r2_hidden @ A @ ( k9_relat_1 @ C @ B ) ) <=>
% 0.22/0.60         ( ?[D:$i]:
% 0.22/0.60           ( ( r2_hidden @ D @ B ) & 
% 0.22/0.60             ( r2_hidden @ ( k4_tarski @ D @ A ) @ C ) & 
% 0.22/0.60             ( r2_hidden @ D @ ( k1_relat_1 @ C ) ) ) ) ) ))).
% 0.22/0.60  thf('5', plain,
% 0.22/0.60      (![X13 : $i, X14 : $i, X15 : $i]:
% 0.22/0.60         (~ (r2_hidden @ X14 @ (k9_relat_1 @ X15 @ X13))
% 0.22/0.60          | (r2_hidden @ (sk_D @ X15 @ X13 @ X14) @ (k1_relat_1 @ X15))
% 0.22/0.60          | ~ (v1_relat_1 @ X15))),
% 0.22/0.60      inference('cnf', [status(esa)], [t143_relat_1])).
% 0.22/0.60  thf('6', plain,
% 0.22/0.60      ((~ (v1_relat_1 @ sk_D_2)
% 0.22/0.60        | (r2_hidden @ (sk_D @ sk_D_2 @ sk_C @ sk_E_1) @ (k1_relat_1 @ sk_D_2)))),
% 0.22/0.60      inference('sup-', [status(thm)], ['4', '5'])).
% 0.22/0.60  thf('7', plain,
% 0.22/0.60      ((m1_subset_1 @ sk_D_2 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_A @ sk_B_1)))),
% 0.22/0.60      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.22/0.60  thf(cc2_relat_1, axiom,
% 0.22/0.60    (![A:$i]:
% 0.22/0.60     ( ( v1_relat_1 @ A ) =>
% 0.22/0.60       ( ![B:$i]:
% 0.22/0.60         ( ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ A ) ) => ( v1_relat_1 @ B ) ) ) ))).
% 0.22/0.60  thf('8', plain,
% 0.22/0.60      (![X8 : $i, X9 : $i]:
% 0.22/0.60         (~ (m1_subset_1 @ X8 @ (k1_zfmisc_1 @ X9))
% 0.22/0.60          | (v1_relat_1 @ X8)
% 0.22/0.60          | ~ (v1_relat_1 @ X9))),
% 0.22/0.60      inference('cnf', [status(esa)], [cc2_relat_1])).
% 0.22/0.60  thf('9', plain,
% 0.22/0.60      ((~ (v1_relat_1 @ (k2_zfmisc_1 @ sk_A @ sk_B_1)) | (v1_relat_1 @ sk_D_2))),
% 0.22/0.60      inference('sup-', [status(thm)], ['7', '8'])).
% 0.22/0.60  thf(fc6_relat_1, axiom,
% 0.22/0.60    (![A:$i,B:$i]: ( v1_relat_1 @ ( k2_zfmisc_1 @ A @ B ) ))).
% 0.22/0.60  thf('10', plain,
% 0.22/0.60      (![X10 : $i, X11 : $i]: (v1_relat_1 @ (k2_zfmisc_1 @ X10 @ X11))),
% 0.22/0.60      inference('cnf', [status(esa)], [fc6_relat_1])).
% 0.22/0.60  thf('11', plain, ((v1_relat_1 @ sk_D_2)),
% 0.22/0.60      inference('demod', [status(thm)], ['9', '10'])).
% 0.22/0.60  thf('12', plain,
% 0.22/0.60      ((r2_hidden @ (sk_D @ sk_D_2 @ sk_C @ sk_E_1) @ (k1_relat_1 @ sk_D_2))),
% 0.22/0.60      inference('demod', [status(thm)], ['6', '11'])).
% 0.22/0.60  thf(d1_xboole_0, axiom,
% 0.22/0.60    (![A:$i]:
% 0.22/0.60     ( ( v1_xboole_0 @ A ) <=> ( ![B:$i]: ( ~( r2_hidden @ B @ A ) ) ) ))).
% 0.22/0.60  thf('13', plain,
% 0.22/0.60      (![X0 : $i, X1 : $i]: (~ (r2_hidden @ X0 @ X1) | ~ (v1_xboole_0 @ X1))),
% 0.22/0.60      inference('cnf', [status(esa)], [d1_xboole_0])).
% 0.22/0.60  thf('14', plain, (~ (v1_xboole_0 @ (k1_relat_1 @ sk_D_2))),
% 0.22/0.60      inference('sup-', [status(thm)], ['12', '13'])).
% 0.22/0.60  thf('15', plain,
% 0.22/0.60      ((m1_subset_1 @ sk_D_2 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_A @ sk_B_1)))),
% 0.22/0.60      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.22/0.60  thf(t22_relset_1, axiom,
% 0.22/0.60    (![A:$i,B:$i,C:$i]:
% 0.22/0.60     ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ B @ A ) ) ) =>
% 0.22/0.60       ( ( ![D:$i]:
% 0.22/0.60           ( ~( ( r2_hidden @ D @ B ) & 
% 0.22/0.60                ( ![E:$i]: ( ~( r2_hidden @ ( k4_tarski @ D @ E ) @ C ) ) ) ) ) ) <=>
% 0.22/0.60         ( ( k1_relset_1 @ B @ A @ C ) = ( B ) ) ) ))).
% 0.22/0.60  thf('16', plain,
% 0.22/0.60      (![X30 : $i, X31 : $i, X32 : $i]:
% 0.22/0.60         ((r2_hidden @ (sk_D_1 @ X32 @ X30) @ X30)
% 0.22/0.60          | ((k1_relset_1 @ X30 @ X31 @ X32) = (X30))
% 0.22/0.60          | ~ (m1_subset_1 @ X32 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X30 @ X31))))),
% 0.22/0.60      inference('cnf', [status(esa)], [t22_relset_1])).
% 0.22/0.60  thf('17', plain,
% 0.22/0.60      ((((k1_relset_1 @ sk_A @ sk_B_1 @ sk_D_2) = (sk_A))
% 0.22/0.60        | (r2_hidden @ (sk_D_1 @ sk_D_2 @ sk_A) @ sk_A))),
% 0.22/0.60      inference('sup-', [status(thm)], ['15', '16'])).
% 0.22/0.60  thf('18', plain,
% 0.22/0.60      ((m1_subset_1 @ sk_D_2 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_A @ sk_B_1)))),
% 0.22/0.60      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.22/0.60  thf(redefinition_k1_relset_1, axiom,
% 0.22/0.60    (![A:$i,B:$i,C:$i]:
% 0.22/0.60     ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) =>
% 0.22/0.60       ( ( k1_relset_1 @ A @ B @ C ) = ( k1_relat_1 @ C ) ) ))).
% 0.22/0.60  thf('19', plain,
% 0.22/0.60      (![X23 : $i, X24 : $i, X25 : $i]:
% 0.22/0.60         (((k1_relset_1 @ X24 @ X25 @ X23) = (k1_relat_1 @ X23))
% 0.22/0.60          | ~ (m1_subset_1 @ X23 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X24 @ X25))))),
% 0.22/0.60      inference('cnf', [status(esa)], [redefinition_k1_relset_1])).
% 0.22/0.60  thf('20', plain,
% 0.22/0.60      (((k1_relset_1 @ sk_A @ sk_B_1 @ sk_D_2) = (k1_relat_1 @ sk_D_2))),
% 0.22/0.60      inference('sup-', [status(thm)], ['18', '19'])).
% 0.22/0.60  thf('21', plain,
% 0.22/0.60      ((((k1_relat_1 @ sk_D_2) = (sk_A))
% 0.22/0.60        | (r2_hidden @ (sk_D_1 @ sk_D_2 @ sk_A) @ sk_A))),
% 0.22/0.60      inference('demod', [status(thm)], ['17', '20'])).
% 0.22/0.60  thf('22', plain,
% 0.22/0.60      (![X0 : $i, X1 : $i]: (~ (r2_hidden @ X0 @ X1) | ~ (v1_xboole_0 @ X1))),
% 0.22/0.60      inference('cnf', [status(esa)], [d1_xboole_0])).
% 0.22/0.60  thf('23', plain,
% 0.22/0.60      ((((k1_relat_1 @ sk_D_2) = (sk_A)) | ~ (v1_xboole_0 @ sk_A))),
% 0.22/0.60      inference('sup-', [status(thm)], ['21', '22'])).
% 0.22/0.60  thf('24', plain, ((r2_hidden @ sk_E_1 @ (k9_relat_1 @ sk_D_2 @ sk_C))),
% 0.22/0.60      inference('demod', [status(thm)], ['0', '3'])).
% 0.22/0.60  thf('25', plain,
% 0.22/0.60      ((m1_subset_1 @ sk_D_2 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_A @ sk_B_1)))),
% 0.22/0.60      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.22/0.60  thf(t52_relset_1, axiom,
% 0.22/0.60    (![A:$i]:
% 0.22/0.60     ( ( ~( v1_xboole_0 @ A ) ) =>
% 0.22/0.60       ( ![B:$i]:
% 0.22/0.60         ( ( ~( v1_xboole_0 @ B ) ) =>
% 0.22/0.60           ( ![C:$i]:
% 0.22/0.60             ( ( ~( v1_xboole_0 @ C ) ) =>
% 0.22/0.60               ( ![D:$i]:
% 0.22/0.60                 ( ( m1_subset_1 @
% 0.22/0.60                     D @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ C @ A ) ) ) =>
% 0.22/0.60                   ( ![E:$i]:
% 0.22/0.60                     ( ( m1_subset_1 @ E @ A ) =>
% 0.22/0.60                       ( ( r2_hidden @ E @ ( k7_relset_1 @ C @ A @ D @ B ) ) <=>
% 0.22/0.60                         ( ?[F:$i]:
% 0.22/0.60                           ( ( r2_hidden @ F @ B ) & 
% 0.22/0.60                             ( r2_hidden @ ( k4_tarski @ F @ E ) @ D ) & 
% 0.22/0.60                             ( m1_subset_1 @ F @ C ) ) ) ) ) ) ) ) ) ) ) ) ))).
% 0.22/0.60  thf('26', plain,
% 0.22/0.60      (![X35 : $i, X36 : $i, X37 : $i, X38 : $i, X40 : $i]:
% 0.22/0.60         ((v1_xboole_0 @ X35)
% 0.22/0.60          | ~ (m1_subset_1 @ X36 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X37 @ X38)))
% 0.22/0.60          | ~ (r2_hidden @ X40 @ (k7_relset_1 @ X37 @ X38 @ X36 @ X35))
% 0.22/0.60          | (r2_hidden @ (k4_tarski @ (sk_F @ X40 @ X36 @ X37 @ X35) @ X40) @ 
% 0.22/0.60             X36)
% 0.22/0.60          | ~ (m1_subset_1 @ X40 @ X38)
% 0.22/0.60          | (v1_xboole_0 @ X37)
% 0.22/0.60          | (v1_xboole_0 @ X38))),
% 0.22/0.60      inference('cnf', [status(esa)], [t52_relset_1])).
% 0.22/0.60  thf('27', plain,
% 0.22/0.60      (![X0 : $i, X1 : $i]:
% 0.22/0.60         ((v1_xboole_0 @ sk_B_1)
% 0.22/0.60          | (v1_xboole_0 @ sk_A)
% 0.22/0.60          | ~ (m1_subset_1 @ X0 @ sk_B_1)
% 0.22/0.60          | (r2_hidden @ (k4_tarski @ (sk_F @ X0 @ sk_D_2 @ sk_A @ X1) @ X0) @ 
% 0.22/0.60             sk_D_2)
% 0.22/0.60          | ~ (r2_hidden @ X0 @ (k7_relset_1 @ sk_A @ sk_B_1 @ sk_D_2 @ X1))
% 0.22/0.60          | (v1_xboole_0 @ X1))),
% 0.22/0.60      inference('sup-', [status(thm)], ['25', '26'])).
% 0.22/0.60  thf('28', plain,
% 0.22/0.60      (![X0 : $i]:
% 0.22/0.60         ((k7_relset_1 @ sk_A @ sk_B_1 @ sk_D_2 @ X0)
% 0.22/0.60           = (k9_relat_1 @ sk_D_2 @ X0))),
% 0.22/0.60      inference('sup-', [status(thm)], ['1', '2'])).
% 0.22/0.60  thf('29', plain,
% 0.22/0.60      (![X0 : $i, X1 : $i]:
% 0.22/0.60         ((v1_xboole_0 @ sk_B_1)
% 0.22/0.60          | (v1_xboole_0 @ sk_A)
% 0.22/0.60          | ~ (m1_subset_1 @ X0 @ sk_B_1)
% 0.22/0.60          | (r2_hidden @ (k4_tarski @ (sk_F @ X0 @ sk_D_2 @ sk_A @ X1) @ X0) @ 
% 0.22/0.60             sk_D_2)
% 0.22/0.60          | ~ (r2_hidden @ X0 @ (k9_relat_1 @ sk_D_2 @ X1))
% 0.22/0.60          | (v1_xboole_0 @ X1))),
% 0.22/0.60      inference('demod', [status(thm)], ['27', '28'])).
% 0.22/0.60  thf('30', plain,
% 0.22/0.60      (((v1_xboole_0 @ sk_C)
% 0.22/0.60        | (r2_hidden @ 
% 0.22/0.60           (k4_tarski @ (sk_F @ sk_E_1 @ sk_D_2 @ sk_A @ sk_C) @ sk_E_1) @ 
% 0.22/0.60           sk_D_2)
% 0.22/0.60        | ~ (m1_subset_1 @ sk_E_1 @ sk_B_1)
% 0.22/0.60        | (v1_xboole_0 @ sk_A)
% 0.22/0.60        | (v1_xboole_0 @ sk_B_1))),
% 0.22/0.60      inference('sup-', [status(thm)], ['24', '29'])).
% 0.22/0.60  thf('31', plain,
% 0.22/0.60      ((r2_hidden @ sk_E_1 @ (k7_relset_1 @ sk_A @ sk_B_1 @ sk_D_2 @ sk_C))),
% 0.22/0.60      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.22/0.60  thf('32', plain,
% 0.22/0.60      ((m1_subset_1 @ sk_D_2 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_A @ sk_B_1)))),
% 0.22/0.60      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.22/0.60  thf(dt_k7_relset_1, axiom,
% 0.22/0.60    (![A:$i,B:$i,C:$i,D:$i]:
% 0.22/0.60     ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) =>
% 0.22/0.60       ( m1_subset_1 @ ( k7_relset_1 @ A @ B @ C @ D ) @ ( k1_zfmisc_1 @ B ) ) ))).
% 0.22/0.60  thf('33', plain,
% 0.22/0.60      (![X19 : $i, X20 : $i, X21 : $i, X22 : $i]:
% 0.22/0.60         (~ (m1_subset_1 @ X19 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X20 @ X21)))
% 0.22/0.60          | (m1_subset_1 @ (k7_relset_1 @ X20 @ X21 @ X19 @ X22) @ 
% 0.22/0.60             (k1_zfmisc_1 @ X21)))),
% 0.22/0.60      inference('cnf', [status(esa)], [dt_k7_relset_1])).
% 0.22/0.60  thf('34', plain,
% 0.22/0.60      (![X0 : $i]:
% 0.22/0.60         (m1_subset_1 @ (k7_relset_1 @ sk_A @ sk_B_1 @ sk_D_2 @ X0) @ 
% 0.22/0.60          (k1_zfmisc_1 @ sk_B_1))),
% 0.22/0.60      inference('sup-', [status(thm)], ['32', '33'])).
% 0.22/0.60  thf(t4_subset, axiom,
% 0.22/0.60    (![A:$i,B:$i,C:$i]:
% 0.22/0.60     ( ( ( r2_hidden @ A @ B ) & ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ C ) ) ) =>
% 0.22/0.60       ( m1_subset_1 @ A @ C ) ))).
% 0.22/0.60  thf('35', plain,
% 0.22/0.60      (![X5 : $i, X6 : $i, X7 : $i]:
% 0.22/0.60         (~ (r2_hidden @ X5 @ X6)
% 0.22/0.60          | ~ (m1_subset_1 @ X6 @ (k1_zfmisc_1 @ X7))
% 0.22/0.60          | (m1_subset_1 @ X5 @ X7))),
% 0.22/0.60      inference('cnf', [status(esa)], [t4_subset])).
% 0.22/0.60  thf('36', plain,
% 0.22/0.60      (![X0 : $i, X1 : $i]:
% 0.22/0.60         ((m1_subset_1 @ X1 @ sk_B_1)
% 0.22/0.60          | ~ (r2_hidden @ X1 @ (k7_relset_1 @ sk_A @ sk_B_1 @ sk_D_2 @ X0)))),
% 0.22/0.60      inference('sup-', [status(thm)], ['34', '35'])).
% 0.22/0.60  thf('37', plain, ((m1_subset_1 @ sk_E_1 @ sk_B_1)),
% 0.22/0.60      inference('sup-', [status(thm)], ['31', '36'])).
% 0.22/0.60  thf('38', plain,
% 0.22/0.60      (((v1_xboole_0 @ sk_C)
% 0.22/0.60        | (r2_hidden @ 
% 0.22/0.60           (k4_tarski @ (sk_F @ sk_E_1 @ sk_D_2 @ sk_A @ sk_C) @ sk_E_1) @ 
% 0.22/0.60           sk_D_2)
% 0.22/0.60        | (v1_xboole_0 @ sk_A)
% 0.22/0.60        | (v1_xboole_0 @ sk_B_1))),
% 0.22/0.60      inference('demod', [status(thm)], ['30', '37'])).
% 0.22/0.60  thf(t8_funct_1, axiom,
% 0.22/0.60    (![A:$i,B:$i,C:$i]:
% 0.22/0.60     ( ( ( v1_relat_1 @ C ) & ( v1_funct_1 @ C ) ) =>
% 0.22/0.60       ( ( r2_hidden @ ( k4_tarski @ A @ B ) @ C ) <=>
% 0.22/0.60         ( ( r2_hidden @ A @ ( k1_relat_1 @ C ) ) & 
% 0.22/0.60           ( ( B ) = ( k1_funct_1 @ C @ A ) ) ) ) ))).
% 0.22/0.60  thf('39', plain,
% 0.22/0.60      (![X16 : $i, X17 : $i, X18 : $i]:
% 0.22/0.60         (~ (r2_hidden @ (k4_tarski @ X16 @ X18) @ X17)
% 0.22/0.60          | ((X18) = (k1_funct_1 @ X17 @ X16))
% 0.22/0.60          | ~ (v1_funct_1 @ X17)
% 0.22/0.60          | ~ (v1_relat_1 @ X17))),
% 0.22/0.60      inference('cnf', [status(esa)], [t8_funct_1])).
% 0.22/0.60  thf('40', plain,
% 0.22/0.60      (((v1_xboole_0 @ sk_B_1)
% 0.22/0.60        | (v1_xboole_0 @ sk_A)
% 0.22/0.60        | (v1_xboole_0 @ sk_C)
% 0.22/0.60        | ~ (v1_relat_1 @ sk_D_2)
% 0.22/0.60        | ~ (v1_funct_1 @ sk_D_2)
% 0.22/0.60        | ((sk_E_1)
% 0.22/0.60            = (k1_funct_1 @ sk_D_2 @ (sk_F @ sk_E_1 @ sk_D_2 @ sk_A @ sk_C))))),
% 0.22/0.60      inference('sup-', [status(thm)], ['38', '39'])).
% 0.22/0.60  thf('41', plain, ((v1_relat_1 @ sk_D_2)),
% 0.22/0.60      inference('demod', [status(thm)], ['9', '10'])).
% 0.22/0.60  thf('42', plain, ((v1_funct_1 @ sk_D_2)),
% 0.22/0.60      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.22/0.60  thf('43', plain,
% 0.22/0.60      (((v1_xboole_0 @ sk_B_1)
% 0.22/0.60        | (v1_xboole_0 @ sk_A)
% 0.22/0.60        | (v1_xboole_0 @ sk_C)
% 0.22/0.60        | ((sk_E_1)
% 0.22/0.60            = (k1_funct_1 @ sk_D_2 @ (sk_F @ sk_E_1 @ sk_D_2 @ sk_A @ sk_C))))),
% 0.22/0.60      inference('demod', [status(thm)], ['40', '41', '42'])).
% 0.22/0.60  thf('44', plain, ((r2_hidden @ sk_E_1 @ (k9_relat_1 @ sk_D_2 @ sk_C))),
% 0.22/0.60      inference('demod', [status(thm)], ['0', '3'])).
% 0.22/0.60  thf('45', plain,
% 0.22/0.60      ((m1_subset_1 @ sk_D_2 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_A @ sk_B_1)))),
% 0.22/0.60      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.22/0.60  thf('46', plain,
% 0.22/0.60      (![X35 : $i, X36 : $i, X37 : $i, X38 : $i, X40 : $i]:
% 0.22/0.60         ((v1_xboole_0 @ X35)
% 0.22/0.60          | ~ (m1_subset_1 @ X36 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X37 @ X38)))
% 0.22/0.60          | ~ (r2_hidden @ X40 @ (k7_relset_1 @ X37 @ X38 @ X36 @ X35))
% 0.22/0.60          | (m1_subset_1 @ (sk_F @ X40 @ X36 @ X37 @ X35) @ X37)
% 0.22/0.60          | ~ (m1_subset_1 @ X40 @ X38)
% 0.22/0.60          | (v1_xboole_0 @ X37)
% 0.22/0.60          | (v1_xboole_0 @ X38))),
% 0.22/0.60      inference('cnf', [status(esa)], [t52_relset_1])).
% 0.22/0.60  thf('47', plain,
% 0.22/0.60      (![X0 : $i, X1 : $i]:
% 0.22/0.60         ((v1_xboole_0 @ sk_B_1)
% 0.22/0.60          | (v1_xboole_0 @ sk_A)
% 0.22/0.60          | ~ (m1_subset_1 @ X0 @ sk_B_1)
% 0.22/0.60          | (m1_subset_1 @ (sk_F @ X0 @ sk_D_2 @ sk_A @ X1) @ sk_A)
% 0.22/0.60          | ~ (r2_hidden @ X0 @ (k7_relset_1 @ sk_A @ sk_B_1 @ sk_D_2 @ X1))
% 0.22/0.60          | (v1_xboole_0 @ X1))),
% 0.22/0.60      inference('sup-', [status(thm)], ['45', '46'])).
% 0.22/0.60  thf('48', plain,
% 0.22/0.60      (![X0 : $i]:
% 0.22/0.60         ((k7_relset_1 @ sk_A @ sk_B_1 @ sk_D_2 @ X0)
% 0.22/0.60           = (k9_relat_1 @ sk_D_2 @ X0))),
% 0.22/0.60      inference('sup-', [status(thm)], ['1', '2'])).
% 0.22/0.60  thf('49', plain,
% 0.22/0.60      (![X0 : $i, X1 : $i]:
% 0.22/0.60         ((v1_xboole_0 @ sk_B_1)
% 0.22/0.60          | (v1_xboole_0 @ sk_A)
% 0.22/0.60          | ~ (m1_subset_1 @ X0 @ sk_B_1)
% 0.22/0.60          | (m1_subset_1 @ (sk_F @ X0 @ sk_D_2 @ sk_A @ X1) @ sk_A)
% 0.22/0.60          | ~ (r2_hidden @ X0 @ (k9_relat_1 @ sk_D_2 @ X1))
% 0.22/0.60          | (v1_xboole_0 @ X1))),
% 0.22/0.60      inference('demod', [status(thm)], ['47', '48'])).
% 0.22/0.60  thf('50', plain,
% 0.22/0.60      (((v1_xboole_0 @ sk_C)
% 0.22/0.60        | (m1_subset_1 @ (sk_F @ sk_E_1 @ sk_D_2 @ sk_A @ sk_C) @ sk_A)
% 0.22/0.60        | ~ (m1_subset_1 @ sk_E_1 @ sk_B_1)
% 0.22/0.60        | (v1_xboole_0 @ sk_A)
% 0.22/0.60        | (v1_xboole_0 @ sk_B_1))),
% 0.22/0.60      inference('sup-', [status(thm)], ['44', '49'])).
% 0.22/0.60  thf('51', plain, ((m1_subset_1 @ sk_E_1 @ sk_B_1)),
% 0.22/0.60      inference('sup-', [status(thm)], ['31', '36'])).
% 0.22/0.60  thf('52', plain,
% 0.22/0.60      (((v1_xboole_0 @ sk_C)
% 0.22/0.60        | (m1_subset_1 @ (sk_F @ sk_E_1 @ sk_D_2 @ sk_A @ sk_C) @ sk_A)
% 0.22/0.60        | (v1_xboole_0 @ sk_A)
% 0.22/0.60        | (v1_xboole_0 @ sk_B_1))),
% 0.22/0.60      inference('demod', [status(thm)], ['50', '51'])).
% 0.22/0.60  thf('53', plain, ((r2_hidden @ sk_E_1 @ (k9_relat_1 @ sk_D_2 @ sk_C))),
% 0.22/0.60      inference('demod', [status(thm)], ['0', '3'])).
% 0.22/0.60  thf('54', plain,
% 0.22/0.60      ((m1_subset_1 @ sk_D_2 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_A @ sk_B_1)))),
% 0.22/0.60      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.22/0.60  thf('55', plain,
% 0.22/0.60      (![X35 : $i, X36 : $i, X37 : $i, X38 : $i, X40 : $i]:
% 0.22/0.60         ((v1_xboole_0 @ X35)
% 0.22/0.60          | ~ (m1_subset_1 @ X36 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X37 @ X38)))
% 0.22/0.60          | ~ (r2_hidden @ X40 @ (k7_relset_1 @ X37 @ X38 @ X36 @ X35))
% 0.22/0.60          | (r2_hidden @ (sk_F @ X40 @ X36 @ X37 @ X35) @ X35)
% 0.22/0.60          | ~ (m1_subset_1 @ X40 @ X38)
% 0.22/0.60          | (v1_xboole_0 @ X37)
% 0.22/0.60          | (v1_xboole_0 @ X38))),
% 0.22/0.60      inference('cnf', [status(esa)], [t52_relset_1])).
% 0.22/0.60  thf('56', plain,
% 0.22/0.60      (![X0 : $i, X1 : $i]:
% 0.22/0.60         ((v1_xboole_0 @ sk_B_1)
% 0.22/0.60          | (v1_xboole_0 @ sk_A)
% 0.22/0.60          | ~ (m1_subset_1 @ X0 @ sk_B_1)
% 0.22/0.60          | (r2_hidden @ (sk_F @ X0 @ sk_D_2 @ sk_A @ X1) @ X1)
% 0.22/0.60          | ~ (r2_hidden @ X0 @ (k7_relset_1 @ sk_A @ sk_B_1 @ sk_D_2 @ X1))
% 0.22/0.60          | (v1_xboole_0 @ X1))),
% 0.22/0.60      inference('sup-', [status(thm)], ['54', '55'])).
% 0.22/0.60  thf('57', plain,
% 0.22/0.60      (![X0 : $i]:
% 0.22/0.60         ((k7_relset_1 @ sk_A @ sk_B_1 @ sk_D_2 @ X0)
% 0.22/0.60           = (k9_relat_1 @ sk_D_2 @ X0))),
% 0.22/0.60      inference('sup-', [status(thm)], ['1', '2'])).
% 0.22/0.60  thf('58', plain,
% 0.22/0.60      (![X0 : $i, X1 : $i]:
% 0.22/0.60         ((v1_xboole_0 @ sk_B_1)
% 0.22/0.60          | (v1_xboole_0 @ sk_A)
% 0.22/0.60          | ~ (m1_subset_1 @ X0 @ sk_B_1)
% 0.22/0.60          | (r2_hidden @ (sk_F @ X0 @ sk_D_2 @ sk_A @ X1) @ X1)
% 0.22/0.60          | ~ (r2_hidden @ X0 @ (k9_relat_1 @ sk_D_2 @ X1))
% 0.22/0.60          | (v1_xboole_0 @ X1))),
% 0.22/0.60      inference('demod', [status(thm)], ['56', '57'])).
% 0.22/0.60  thf('59', plain,
% 0.22/0.60      (((v1_xboole_0 @ sk_C)
% 0.22/0.60        | (r2_hidden @ (sk_F @ sk_E_1 @ sk_D_2 @ sk_A @ sk_C) @ sk_C)
% 0.22/0.60        | ~ (m1_subset_1 @ sk_E_1 @ sk_B_1)
% 0.22/0.60        | (v1_xboole_0 @ sk_A)
% 0.22/0.60        | (v1_xboole_0 @ sk_B_1))),
% 0.22/0.60      inference('sup-', [status(thm)], ['53', '58'])).
% 0.22/0.60  thf('60', plain, ((m1_subset_1 @ sk_E_1 @ sk_B_1)),
% 0.22/0.60      inference('sup-', [status(thm)], ['31', '36'])).
% 0.22/0.60  thf('61', plain,
% 0.22/0.60      (((v1_xboole_0 @ sk_C)
% 0.22/0.60        | (r2_hidden @ (sk_F @ sk_E_1 @ sk_D_2 @ sk_A @ sk_C) @ sk_C)
% 0.22/0.60        | (v1_xboole_0 @ sk_A)
% 0.22/0.60        | (v1_xboole_0 @ sk_B_1))),
% 0.22/0.60      inference('demod', [status(thm)], ['59', '60'])).
% 0.22/0.60  thf('62', plain,
% 0.22/0.60      (![X41 : $i]:
% 0.22/0.60         (((sk_E_1) != (k1_funct_1 @ sk_D_2 @ X41))
% 0.22/0.60          | ~ (r2_hidden @ X41 @ sk_C)
% 0.22/0.60          | ~ (m1_subset_1 @ X41 @ sk_A))),
% 0.22/0.60      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.22/0.60  thf('63', plain,
% 0.22/0.60      (((v1_xboole_0 @ sk_B_1)
% 0.22/0.60        | (v1_xboole_0 @ sk_A)
% 0.22/0.60        | (v1_xboole_0 @ sk_C)
% 0.22/0.60        | ~ (m1_subset_1 @ (sk_F @ sk_E_1 @ sk_D_2 @ sk_A @ sk_C) @ sk_A)
% 0.22/0.60        | ((sk_E_1)
% 0.22/0.60            != (k1_funct_1 @ sk_D_2 @ (sk_F @ sk_E_1 @ sk_D_2 @ sk_A @ sk_C))))),
% 0.22/0.60      inference('sup-', [status(thm)], ['61', '62'])).
% 0.22/0.60  thf('64', plain,
% 0.22/0.60      (((v1_xboole_0 @ sk_B_1)
% 0.22/0.60        | (v1_xboole_0 @ sk_A)
% 0.22/0.60        | (v1_xboole_0 @ sk_C)
% 0.22/0.60        | ((sk_E_1)
% 0.22/0.60            != (k1_funct_1 @ sk_D_2 @ (sk_F @ sk_E_1 @ sk_D_2 @ sk_A @ sk_C)))
% 0.22/0.60        | (v1_xboole_0 @ sk_C)
% 0.22/0.60        | (v1_xboole_0 @ sk_A)
% 0.22/0.60        | (v1_xboole_0 @ sk_B_1))),
% 0.22/0.60      inference('sup-', [status(thm)], ['52', '63'])).
% 0.22/0.60  thf('65', plain,
% 0.22/0.60      ((((sk_E_1)
% 0.22/0.60          != (k1_funct_1 @ sk_D_2 @ (sk_F @ sk_E_1 @ sk_D_2 @ sk_A @ sk_C)))
% 0.22/0.60        | (v1_xboole_0 @ sk_C)
% 0.22/0.60        | (v1_xboole_0 @ sk_A)
% 0.22/0.60        | (v1_xboole_0 @ sk_B_1))),
% 0.22/0.60      inference('simplify', [status(thm)], ['64'])).
% 0.22/0.60  thf('66', plain,
% 0.22/0.60      ((((sk_E_1) != (sk_E_1))
% 0.22/0.60        | (v1_xboole_0 @ sk_C)
% 0.22/0.60        | (v1_xboole_0 @ sk_A)
% 0.22/0.60        | (v1_xboole_0 @ sk_B_1)
% 0.22/0.60        | (v1_xboole_0 @ sk_B_1)
% 0.22/0.60        | (v1_xboole_0 @ sk_A)
% 0.22/0.60        | (v1_xboole_0 @ sk_C))),
% 0.22/0.60      inference('sup-', [status(thm)], ['43', '65'])).
% 0.22/0.60  thf('67', plain,
% 0.22/0.60      (((v1_xboole_0 @ sk_B_1) | (v1_xboole_0 @ sk_A) | (v1_xboole_0 @ sk_C))),
% 0.22/0.60      inference('simplify', [status(thm)], ['66'])).
% 0.22/0.60  thf('68', plain,
% 0.22/0.60      (![X2 : $i]: ((v1_xboole_0 @ X2) | (r2_hidden @ (sk_B @ X2) @ X2))),
% 0.22/0.60      inference('cnf', [status(esa)], [d1_xboole_0])).
% 0.22/0.60  thf('69', plain,
% 0.22/0.60      (![X13 : $i, X14 : $i, X15 : $i]:
% 0.22/0.60         (~ (r2_hidden @ X14 @ (k9_relat_1 @ X15 @ X13))
% 0.22/0.60          | (r2_hidden @ (sk_D @ X15 @ X13 @ X14) @ X13)
% 0.22/0.60          | ~ (v1_relat_1 @ X15))),
% 0.22/0.60      inference('cnf', [status(esa)], [t143_relat_1])).
% 0.22/0.60  thf('70', plain,
% 0.22/0.60      (![X0 : $i, X1 : $i]:
% 0.22/0.60         ((v1_xboole_0 @ (k9_relat_1 @ X1 @ X0))
% 0.22/0.60          | ~ (v1_relat_1 @ X1)
% 0.22/0.60          | (r2_hidden @ (sk_D @ X1 @ X0 @ (sk_B @ (k9_relat_1 @ X1 @ X0))) @ 
% 0.22/0.60             X0))),
% 0.22/0.60      inference('sup-', [status(thm)], ['68', '69'])).
% 0.22/0.60  thf('71', plain,
% 0.22/0.60      (![X0 : $i, X1 : $i]: (~ (r2_hidden @ X0 @ X1) | ~ (v1_xboole_0 @ X1))),
% 0.22/0.60      inference('cnf', [status(esa)], [d1_xboole_0])).
% 0.22/0.60  thf('72', plain,
% 0.22/0.60      (![X0 : $i, X1 : $i]:
% 0.22/0.60         (~ (v1_relat_1 @ X1)
% 0.22/0.60          | (v1_xboole_0 @ (k9_relat_1 @ X1 @ X0))
% 0.22/0.60          | ~ (v1_xboole_0 @ X0))),
% 0.22/0.60      inference('sup-', [status(thm)], ['70', '71'])).
% 0.22/0.60  thf('73', plain,
% 0.22/0.60      ((r2_hidden @ sk_E_1 @ (k7_relset_1 @ sk_A @ sk_B_1 @ sk_D_2 @ sk_C))),
% 0.22/0.60      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.22/0.60  thf('74', plain,
% 0.22/0.60      (![X0 : $i, X1 : $i]: (~ (r2_hidden @ X0 @ X1) | ~ (v1_xboole_0 @ X1))),
% 0.22/0.60      inference('cnf', [status(esa)], [d1_xboole_0])).
% 0.22/0.60  thf('75', plain,
% 0.22/0.60      (~ (v1_xboole_0 @ (k7_relset_1 @ sk_A @ sk_B_1 @ sk_D_2 @ sk_C))),
% 0.22/0.60      inference('sup-', [status(thm)], ['73', '74'])).
% 0.22/0.60  thf('76', plain,
% 0.22/0.60      (![X0 : $i]:
% 0.22/0.60         ((k7_relset_1 @ sk_A @ sk_B_1 @ sk_D_2 @ X0)
% 0.22/0.60           = (k9_relat_1 @ sk_D_2 @ X0))),
% 0.22/0.60      inference('sup-', [status(thm)], ['1', '2'])).
% 0.22/0.60  thf('77', plain, (~ (v1_xboole_0 @ (k9_relat_1 @ sk_D_2 @ sk_C))),
% 0.22/0.60      inference('demod', [status(thm)], ['75', '76'])).
% 0.22/0.60  thf('78', plain, ((~ (v1_xboole_0 @ sk_C) | ~ (v1_relat_1 @ sk_D_2))),
% 0.22/0.60      inference('sup-', [status(thm)], ['72', '77'])).
% 0.22/0.60  thf('79', plain, ((v1_relat_1 @ sk_D_2)),
% 0.22/0.60      inference('demod', [status(thm)], ['9', '10'])).
% 0.22/0.60  thf('80', plain, (~ (v1_xboole_0 @ sk_C)),
% 0.22/0.60      inference('demod', [status(thm)], ['78', '79'])).
% 0.22/0.60  thf('81', plain, (((v1_xboole_0 @ sk_A) | (v1_xboole_0 @ sk_B_1))),
% 0.22/0.60      inference('clc', [status(thm)], ['67', '80'])).
% 0.22/0.60  thf('82', plain,
% 0.22/0.60      (![X0 : $i]:
% 0.22/0.60         (m1_subset_1 @ (k7_relset_1 @ sk_A @ sk_B_1 @ sk_D_2 @ X0) @ 
% 0.22/0.60          (k1_zfmisc_1 @ sk_B_1))),
% 0.22/0.60      inference('sup-', [status(thm)], ['32', '33'])).
% 0.22/0.60  thf(cc1_subset_1, axiom,
% 0.22/0.60    (![A:$i]:
% 0.22/0.60     ( ( v1_xboole_0 @ A ) =>
% 0.22/0.60       ( ![B:$i]:
% 0.22/0.60         ( ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ A ) ) => ( v1_xboole_0 @ B ) ) ) ))).
% 0.22/0.60  thf('83', plain,
% 0.22/0.60      (![X3 : $i, X4 : $i]:
% 0.22/0.60         (~ (m1_subset_1 @ X3 @ (k1_zfmisc_1 @ X4))
% 0.22/0.60          | (v1_xboole_0 @ X3)
% 0.22/0.60          | ~ (v1_xboole_0 @ X4))),
% 0.22/0.60      inference('cnf', [status(esa)], [cc1_subset_1])).
% 0.22/0.60  thf('84', plain,
% 0.22/0.60      (![X0 : $i]:
% 0.22/0.60         (~ (v1_xboole_0 @ sk_B_1)
% 0.22/0.60          | (v1_xboole_0 @ (k7_relset_1 @ sk_A @ sk_B_1 @ sk_D_2 @ X0)))),
% 0.22/0.60      inference('sup-', [status(thm)], ['82', '83'])).
% 0.22/0.60  thf('85', plain,
% 0.22/0.60      (![X0 : $i]:
% 0.22/0.60         ((k7_relset_1 @ sk_A @ sk_B_1 @ sk_D_2 @ X0)
% 0.22/0.60           = (k9_relat_1 @ sk_D_2 @ X0))),
% 0.22/0.60      inference('sup-', [status(thm)], ['1', '2'])).
% 0.22/0.60  thf('86', plain,
% 0.22/0.60      (![X0 : $i]:
% 0.22/0.60         (~ (v1_xboole_0 @ sk_B_1) | (v1_xboole_0 @ (k9_relat_1 @ sk_D_2 @ X0)))),
% 0.22/0.60      inference('demod', [status(thm)], ['84', '85'])).
% 0.22/0.60  thf('87', plain,
% 0.22/0.60      (![X0 : $i]:
% 0.22/0.60         ((v1_xboole_0 @ sk_A) | (v1_xboole_0 @ (k9_relat_1 @ sk_D_2 @ X0)))),
% 0.22/0.60      inference('sup-', [status(thm)], ['81', '86'])).
% 0.22/0.60  thf('88', plain,
% 0.22/0.60      ((r2_hidden @ (sk_D @ sk_D_2 @ sk_C @ sk_E_1) @ (k1_relat_1 @ sk_D_2))),
% 0.22/0.60      inference('demod', [status(thm)], ['6', '11'])).
% 0.22/0.60  thf('89', plain, ((r2_hidden @ sk_E_1 @ (k9_relat_1 @ sk_D_2 @ sk_C))),
% 0.22/0.60      inference('demod', [status(thm)], ['0', '3'])).
% 0.22/0.60  thf('90', plain,
% 0.22/0.60      (![X13 : $i, X14 : $i, X15 : $i]:
% 0.22/0.60         (~ (r2_hidden @ X14 @ (k9_relat_1 @ X15 @ X13))
% 0.22/0.60          | (r2_hidden @ (k4_tarski @ (sk_D @ X15 @ X13 @ X14) @ X14) @ X15)
% 0.22/0.60          | ~ (v1_relat_1 @ X15))),
% 0.22/0.60      inference('cnf', [status(esa)], [t143_relat_1])).
% 0.22/0.60  thf('91', plain,
% 0.22/0.60      ((~ (v1_relat_1 @ sk_D_2)
% 0.22/0.60        | (r2_hidden @ 
% 0.22/0.60           (k4_tarski @ (sk_D @ sk_D_2 @ sk_C @ sk_E_1) @ sk_E_1) @ sk_D_2))),
% 0.22/0.60      inference('sup-', [status(thm)], ['89', '90'])).
% 0.22/0.60  thf('92', plain, ((v1_relat_1 @ sk_D_2)),
% 0.22/0.60      inference('demod', [status(thm)], ['9', '10'])).
% 0.22/0.60  thf('93', plain,
% 0.22/0.60      ((r2_hidden @ (k4_tarski @ (sk_D @ sk_D_2 @ sk_C @ sk_E_1) @ sk_E_1) @ 
% 0.22/0.60        sk_D_2)),
% 0.22/0.60      inference('demod', [status(thm)], ['91', '92'])).
% 0.22/0.60  thf('94', plain,
% 0.22/0.60      (![X12 : $i, X13 : $i, X14 : $i, X15 : $i]:
% 0.22/0.60         (~ (r2_hidden @ X12 @ X13)
% 0.22/0.60          | ~ (r2_hidden @ (k4_tarski @ X12 @ X14) @ X15)
% 0.22/0.60          | ~ (r2_hidden @ X12 @ (k1_relat_1 @ X15))
% 0.22/0.60          | (r2_hidden @ X14 @ (k9_relat_1 @ X15 @ X13))
% 0.22/0.60          | ~ (v1_relat_1 @ X15))),
% 0.22/0.60      inference('cnf', [status(esa)], [t143_relat_1])).
% 0.22/0.60  thf('95', plain,
% 0.22/0.60      (![X0 : $i]:
% 0.22/0.60         (~ (v1_relat_1 @ sk_D_2)
% 0.22/0.60          | (r2_hidden @ sk_E_1 @ (k9_relat_1 @ sk_D_2 @ X0))
% 0.22/0.60          | ~ (r2_hidden @ (sk_D @ sk_D_2 @ sk_C @ sk_E_1) @ 
% 0.22/0.60               (k1_relat_1 @ sk_D_2))
% 0.22/0.60          | ~ (r2_hidden @ (sk_D @ sk_D_2 @ sk_C @ sk_E_1) @ X0))),
% 0.22/0.60      inference('sup-', [status(thm)], ['93', '94'])).
% 0.22/0.60  thf('96', plain, ((v1_relat_1 @ sk_D_2)),
% 0.22/0.60      inference('demod', [status(thm)], ['9', '10'])).
% 0.22/0.60  thf('97', plain,
% 0.22/0.60      ((r2_hidden @ (sk_D @ sk_D_2 @ sk_C @ sk_E_1) @ (k1_relat_1 @ sk_D_2))),
% 0.22/0.60      inference('demod', [status(thm)], ['6', '11'])).
% 0.22/0.60  thf('98', plain,
% 0.22/0.60      (![X0 : $i]:
% 0.22/0.60         ((r2_hidden @ sk_E_1 @ (k9_relat_1 @ sk_D_2 @ X0))
% 0.22/0.60          | ~ (r2_hidden @ (sk_D @ sk_D_2 @ sk_C @ sk_E_1) @ X0))),
% 0.22/0.60      inference('demod', [status(thm)], ['95', '96', '97'])).
% 0.22/0.60  thf('99', plain,
% 0.22/0.60      ((r2_hidden @ sk_E_1 @ (k9_relat_1 @ sk_D_2 @ (k1_relat_1 @ sk_D_2)))),
% 0.22/0.60      inference('sup-', [status(thm)], ['88', '98'])).
% 0.22/0.60  thf('100', plain,
% 0.22/0.60      (![X0 : $i, X1 : $i]: (~ (r2_hidden @ X0 @ X1) | ~ (v1_xboole_0 @ X1))),
% 0.22/0.60      inference('cnf', [status(esa)], [d1_xboole_0])).
% 0.22/0.60  thf('101', plain,
% 0.22/0.60      (~ (v1_xboole_0 @ (k9_relat_1 @ sk_D_2 @ (k1_relat_1 @ sk_D_2)))),
% 0.22/0.60      inference('sup-', [status(thm)], ['99', '100'])).
% 0.22/0.60  thf('102', plain, ((v1_xboole_0 @ sk_A)),
% 0.22/0.60      inference('sup-', [status(thm)], ['87', '101'])).
% 0.22/0.60  thf('103', plain, (((k1_relat_1 @ sk_D_2) = (sk_A))),
% 0.22/0.60      inference('demod', [status(thm)], ['23', '102'])).
% 0.22/0.60  thf('104', plain, ((v1_xboole_0 @ sk_A)),
% 0.22/0.60      inference('sup-', [status(thm)], ['87', '101'])).
% 0.22/0.60  thf('105', plain, ($false),
% 0.22/0.60      inference('demod', [status(thm)], ['14', '103', '104'])).
% 0.22/0.60  
% 0.22/0.60  % SZS output end Refutation
% 0.22/0.60  
% 0.22/0.61  % Zipperpin 1.5 exiting
%------------------------------------------------------------------------------
