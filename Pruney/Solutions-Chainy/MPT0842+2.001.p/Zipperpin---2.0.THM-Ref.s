%------------------------------------------------------------------------------
% File       : Zipperpin---2.0
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_portfolio.sh /export/starexec/sandbox2/benchmark/theBenchmark.p /export/starexec/sandbox2/tmp/tmp.k18UkyDWa6

% Computer   : n011.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 13:50:25 EST 2020

% Result     : Theorem 0.20s
% Output     : Refutation 0.20s
% Verified   : 
% Statistics : Number of formulae       :   85 ( 157 expanded)
%              Number of leaves         :   29 (  57 expanded)
%              Depth                    :   10
%              Number of atoms          :  770 (2392 expanded)
%              Number of equality atoms :    6 (  14 expanded)
%              Maximal formula depth    :   20 (   7 average)

% Comments   : 
%------------------------------------------------------------------------------
thf(k2_relat_1_type,type,(
    k2_relat_1: $i > $i )).

thf(k2_zfmisc_1_type,type,(
    k2_zfmisc_1: $i > $i > $i )).

thf(k1_zfmisc_1_type,type,(
    k1_zfmisc_1: $i > $i )).

thf(sk_D_1_type,type,(
    sk_D_1: $i > $i > $i > $i )).

thf(v5_relat_1_type,type,(
    v5_relat_1: $i > $i > $o )).

thf(sk_A_type,type,(
    sk_A: $i )).

thf(sk_E_2_type,type,(
    sk_E_2: $i )).

thf(sk_D_2_type,type,(
    sk_D_2: $i )).

thf(v1_xboole_0_type,type,(
    v1_xboole_0: $i > $o )).

thf(k8_relset_1_type,type,(
    k8_relset_1: $i > $i > $i > $i > $i )).

thf(m1_subset_1_type,type,(
    m1_subset_1: $i > $i > $o )).

thf(r2_hidden_type,type,(
    r2_hidden: $i > $i > $o )).

thf(k4_tarski_type,type,(
    k4_tarski: $i > $i > $i )).

thf(sk_F_type,type,(
    sk_F: $i )).

thf(sk_B_type,type,(
    sk_B: $i )).

thf(v4_relat_1_type,type,(
    v4_relat_1: $i > $i > $o )).

thf(v1_relat_1_type,type,(
    v1_relat_1: $i > $o )).

thf(sk_C_type,type,(
    sk_C: $i )).

thf(r1_tarski_type,type,(
    r1_tarski: $i > $i > $o )).

thf(k10_relat_1_type,type,(
    k10_relat_1: $i > $i > $i )).

thf(t53_relset_1,conjecture,(
    ! [A: $i] :
      ( ~ ( v1_xboole_0 @ A )
     => ! [B: $i] :
          ( ~ ( v1_xboole_0 @ B )
         => ! [C: $i] :
              ( ~ ( v1_xboole_0 @ C )
             => ! [D: $i] :
                  ( ( m1_subset_1 @ D @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ C ) ) )
                 => ! [E: $i] :
                      ( ( m1_subset_1 @ E @ A )
                     => ( ( r2_hidden @ E @ ( k8_relset_1 @ A @ C @ D @ B ) )
                      <=> ? [F: $i] :
                            ( ( r2_hidden @ F @ B )
                            & ( r2_hidden @ ( k4_tarski @ E @ F ) @ D )
                            & ( m1_subset_1 @ F @ C ) ) ) ) ) ) ) ) )).

thf(zf_stmt_0,negated_conjecture,(
    ~ ! [A: $i] :
        ( ~ ( v1_xboole_0 @ A )
       => ! [B: $i] :
            ( ~ ( v1_xboole_0 @ B )
           => ! [C: $i] :
                ( ~ ( v1_xboole_0 @ C )
               => ! [D: $i] :
                    ( ( m1_subset_1 @ D @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ C ) ) )
                   => ! [E: $i] :
                        ( ( m1_subset_1 @ E @ A )
                       => ( ( r2_hidden @ E @ ( k8_relset_1 @ A @ C @ D @ B ) )
                        <=> ? [F: $i] :
                              ( ( r2_hidden @ F @ B )
                              & ( r2_hidden @ ( k4_tarski @ E @ F ) @ D )
                              & ( m1_subset_1 @ F @ C ) ) ) ) ) ) ) ) ),
    inference('cnf.neg',[status(esa)],[t53_relset_1])).

thf('0',plain,
    ( ( r2_hidden @ ( k4_tarski @ sk_E_2 @ sk_F ) @ sk_D_2 )
    | ( r2_hidden @ sk_E_2 @ ( k8_relset_1 @ sk_A @ sk_C @ sk_D_2 @ sk_B ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('1',plain,
    ( ( r2_hidden @ ( k4_tarski @ sk_E_2 @ sk_F ) @ sk_D_2 )
    | ( r2_hidden @ sk_E_2 @ ( k8_relset_1 @ sk_A @ sk_C @ sk_D_2 @ sk_B ) ) ),
    inference(split,[status(esa)],['0'])).

thf('2',plain,(
    ! [X30: $i] :
      ( ~ ( m1_subset_1 @ X30 @ sk_C )
      | ~ ( r2_hidden @ ( k4_tarski @ sk_E_2 @ X30 ) @ sk_D_2 )
      | ~ ( r2_hidden @ X30 @ sk_B )
      | ~ ( r2_hidden @ sk_E_2 @ ( k8_relset_1 @ sk_A @ sk_C @ sk_D_2 @ sk_B ) ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('3',plain,
    ( ! [X30: $i] :
        ( ~ ( m1_subset_1 @ X30 @ sk_C )
        | ~ ( r2_hidden @ ( k4_tarski @ sk_E_2 @ X30 ) @ sk_D_2 )
        | ~ ( r2_hidden @ X30 @ sk_B ) )
    | ~ ( r2_hidden @ sk_E_2 @ ( k8_relset_1 @ sk_A @ sk_C @ sk_D_2 @ sk_B ) ) ),
    inference(split,[status(esa)],['2'])).

thf('4',plain,(
    m1_subset_1 @ sk_D_2 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_A @ sk_C ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(redefinition_k8_relset_1,axiom,(
    ! [A: $i,B: $i,C: $i,D: $i] :
      ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) )
     => ( ( k8_relset_1 @ A @ B @ C @ D )
        = ( k10_relat_1 @ C @ D ) ) ) )).

thf('5',plain,(
    ! [X26: $i,X27: $i,X28: $i,X29: $i] :
      ( ~ ( m1_subset_1 @ X26 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X27 @ X28 ) ) )
      | ( ( k8_relset_1 @ X27 @ X28 @ X26 @ X29 )
        = ( k10_relat_1 @ X26 @ X29 ) ) ) ),
    inference(cnf,[status(esa)],[redefinition_k8_relset_1])).

thf('6',plain,(
    ! [X0: $i] :
      ( ( k8_relset_1 @ sk_A @ sk_C @ sk_D_2 @ X0 )
      = ( k10_relat_1 @ sk_D_2 @ X0 ) ) ),
    inference('sup-',[status(thm)],['4','5'])).

thf('7',plain,
    ( ( r2_hidden @ sk_F @ sk_B )
    | ( r2_hidden @ sk_E_2 @ ( k8_relset_1 @ sk_A @ sk_C @ sk_D_2 @ sk_B ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('8',plain,
    ( ( r2_hidden @ sk_E_2 @ ( k8_relset_1 @ sk_A @ sk_C @ sk_D_2 @ sk_B ) )
   <= ( r2_hidden @ sk_E_2 @ ( k8_relset_1 @ sk_A @ sk_C @ sk_D_2 @ sk_B ) ) ),
    inference(split,[status(esa)],['7'])).

thf('9',plain,
    ( ( r2_hidden @ sk_E_2 @ ( k10_relat_1 @ sk_D_2 @ sk_B ) )
   <= ( r2_hidden @ sk_E_2 @ ( k8_relset_1 @ sk_A @ sk_C @ sk_D_2 @ sk_B ) ) ),
    inference('sup+',[status(thm)],['6','8'])).

thf(t166_relat_1,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( v1_relat_1 @ C )
     => ( ( r2_hidden @ A @ ( k10_relat_1 @ C @ B ) )
      <=> ? [D: $i] :
            ( ( r2_hidden @ D @ B )
            & ( r2_hidden @ ( k4_tarski @ A @ D ) @ C )
            & ( r2_hidden @ D @ ( k2_relat_1 @ C ) ) ) ) ) )).

thf('10',plain,(
    ! [X17: $i,X18: $i,X19: $i] :
      ( ~ ( r2_hidden @ X18 @ ( k10_relat_1 @ X19 @ X17 ) )
      | ( r2_hidden @ ( k4_tarski @ X18 @ ( sk_D_1 @ X19 @ X17 @ X18 ) ) @ X19 )
      | ~ ( v1_relat_1 @ X19 ) ) ),
    inference(cnf,[status(esa)],[t166_relat_1])).

thf('11',plain,
    ( ( ~ ( v1_relat_1 @ sk_D_2 )
      | ( r2_hidden @ ( k4_tarski @ sk_E_2 @ ( sk_D_1 @ sk_D_2 @ sk_B @ sk_E_2 ) ) @ sk_D_2 ) )
   <= ( r2_hidden @ sk_E_2 @ ( k8_relset_1 @ sk_A @ sk_C @ sk_D_2 @ sk_B ) ) ),
    inference('sup-',[status(thm)],['9','10'])).

thf('12',plain,(
    m1_subset_1 @ sk_D_2 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_A @ sk_C ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(cc1_relset_1,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) )
     => ( v1_relat_1 @ C ) ) )).

thf('13',plain,(
    ! [X20: $i,X21: $i,X22: $i] :
      ( ( v1_relat_1 @ X20 )
      | ~ ( m1_subset_1 @ X20 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X21 @ X22 ) ) ) ) ),
    inference(cnf,[status(esa)],[cc1_relset_1])).

thf('14',plain,(
    v1_relat_1 @ sk_D_2 ),
    inference('sup-',[status(thm)],['12','13'])).

thf('15',plain,
    ( ( r2_hidden @ ( k4_tarski @ sk_E_2 @ ( sk_D_1 @ sk_D_2 @ sk_B @ sk_E_2 ) ) @ sk_D_2 )
   <= ( r2_hidden @ sk_E_2 @ ( k8_relset_1 @ sk_A @ sk_C @ sk_D_2 @ sk_B ) ) ),
    inference(demod,[status(thm)],['11','14'])).

thf('16',plain,
    ( ! [X30: $i] :
        ( ~ ( m1_subset_1 @ X30 @ sk_C )
        | ~ ( r2_hidden @ ( k4_tarski @ sk_E_2 @ X30 ) @ sk_D_2 )
        | ~ ( r2_hidden @ X30 @ sk_B ) )
   <= ! [X30: $i] :
        ( ~ ( m1_subset_1 @ X30 @ sk_C )
        | ~ ( r2_hidden @ ( k4_tarski @ sk_E_2 @ X30 ) @ sk_D_2 )
        | ~ ( r2_hidden @ X30 @ sk_B ) ) ),
    inference(split,[status(esa)],['2'])).

thf('17',plain,
    ( ( ~ ( r2_hidden @ ( sk_D_1 @ sk_D_2 @ sk_B @ sk_E_2 ) @ sk_B )
      | ~ ( m1_subset_1 @ ( sk_D_1 @ sk_D_2 @ sk_B @ sk_E_2 ) @ sk_C ) )
   <= ( ! [X30: $i] :
          ( ~ ( m1_subset_1 @ X30 @ sk_C )
          | ~ ( r2_hidden @ ( k4_tarski @ sk_E_2 @ X30 ) @ sk_D_2 )
          | ~ ( r2_hidden @ X30 @ sk_B ) )
      & ( r2_hidden @ sk_E_2 @ ( k8_relset_1 @ sk_A @ sk_C @ sk_D_2 @ sk_B ) ) ) ),
    inference('sup-',[status(thm)],['15','16'])).

thf('18',plain,
    ( ( r2_hidden @ sk_E_2 @ ( k10_relat_1 @ sk_D_2 @ sk_B ) )
   <= ( r2_hidden @ sk_E_2 @ ( k8_relset_1 @ sk_A @ sk_C @ sk_D_2 @ sk_B ) ) ),
    inference('sup+',[status(thm)],['6','8'])).

thf('19',plain,(
    ! [X17: $i,X18: $i,X19: $i] :
      ( ~ ( r2_hidden @ X18 @ ( k10_relat_1 @ X19 @ X17 ) )
      | ( r2_hidden @ ( sk_D_1 @ X19 @ X17 @ X18 ) @ X17 )
      | ~ ( v1_relat_1 @ X19 ) ) ),
    inference(cnf,[status(esa)],[t166_relat_1])).

thf('20',plain,
    ( ( ~ ( v1_relat_1 @ sk_D_2 )
      | ( r2_hidden @ ( sk_D_1 @ sk_D_2 @ sk_B @ sk_E_2 ) @ sk_B ) )
   <= ( r2_hidden @ sk_E_2 @ ( k8_relset_1 @ sk_A @ sk_C @ sk_D_2 @ sk_B ) ) ),
    inference('sup-',[status(thm)],['18','19'])).

thf('21',plain,(
    v1_relat_1 @ sk_D_2 ),
    inference('sup-',[status(thm)],['12','13'])).

thf('22',plain,
    ( ( r2_hidden @ ( sk_D_1 @ sk_D_2 @ sk_B @ sk_E_2 ) @ sk_B )
   <= ( r2_hidden @ sk_E_2 @ ( k8_relset_1 @ sk_A @ sk_C @ sk_D_2 @ sk_B ) ) ),
    inference(demod,[status(thm)],['20','21'])).

thf('23',plain,
    ( ( r2_hidden @ sk_E_2 @ ( k10_relat_1 @ sk_D_2 @ sk_B ) )
   <= ( r2_hidden @ sk_E_2 @ ( k8_relset_1 @ sk_A @ sk_C @ sk_D_2 @ sk_B ) ) ),
    inference('sup+',[status(thm)],['6','8'])).

thf('24',plain,(
    ! [X17: $i,X18: $i,X19: $i] :
      ( ~ ( r2_hidden @ X18 @ ( k10_relat_1 @ X19 @ X17 ) )
      | ( r2_hidden @ ( sk_D_1 @ X19 @ X17 @ X18 ) @ ( k2_relat_1 @ X19 ) )
      | ~ ( v1_relat_1 @ X19 ) ) ),
    inference(cnf,[status(esa)],[t166_relat_1])).

thf('25',plain,
    ( ( ~ ( v1_relat_1 @ sk_D_2 )
      | ( r2_hidden @ ( sk_D_1 @ sk_D_2 @ sk_B @ sk_E_2 ) @ ( k2_relat_1 @ sk_D_2 ) ) )
   <= ( r2_hidden @ sk_E_2 @ ( k8_relset_1 @ sk_A @ sk_C @ sk_D_2 @ sk_B ) ) ),
    inference('sup-',[status(thm)],['23','24'])).

thf('26',plain,(
    v1_relat_1 @ sk_D_2 ),
    inference('sup-',[status(thm)],['12','13'])).

thf('27',plain,
    ( ( r2_hidden @ ( sk_D_1 @ sk_D_2 @ sk_B @ sk_E_2 ) @ ( k2_relat_1 @ sk_D_2 ) )
   <= ( r2_hidden @ sk_E_2 @ ( k8_relset_1 @ sk_A @ sk_C @ sk_D_2 @ sk_B ) ) ),
    inference(demod,[status(thm)],['25','26'])).

thf('28',plain,(
    m1_subset_1 @ sk_D_2 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_A @ sk_C ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(cc2_relset_1,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) )
     => ( ( v4_relat_1 @ C @ A )
        & ( v5_relat_1 @ C @ B ) ) ) )).

thf('29',plain,(
    ! [X23: $i,X24: $i,X25: $i] :
      ( ( v5_relat_1 @ X23 @ X25 )
      | ~ ( m1_subset_1 @ X23 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X24 @ X25 ) ) ) ) ),
    inference(cnf,[status(esa)],[cc2_relset_1])).

thf('30',plain,(
    v5_relat_1 @ sk_D_2 @ sk_C ),
    inference('sup-',[status(thm)],['28','29'])).

thf(d19_relat_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( v1_relat_1 @ B )
     => ( ( v5_relat_1 @ B @ A )
      <=> ( r1_tarski @ ( k2_relat_1 @ B ) @ A ) ) ) )).

thf('31',plain,(
    ! [X14: $i,X15: $i] :
      ( ~ ( v5_relat_1 @ X14 @ X15 )
      | ( r1_tarski @ ( k2_relat_1 @ X14 ) @ X15 )
      | ~ ( v1_relat_1 @ X14 ) ) ),
    inference(cnf,[status(esa)],[d19_relat_1])).

thf('32',plain,
    ( ~ ( v1_relat_1 @ sk_D_2 )
    | ( r1_tarski @ ( k2_relat_1 @ sk_D_2 ) @ sk_C ) ),
    inference('sup-',[status(thm)],['30','31'])).

thf('33',plain,(
    v1_relat_1 @ sk_D_2 ),
    inference('sup-',[status(thm)],['12','13'])).

thf('34',plain,(
    r1_tarski @ ( k2_relat_1 @ sk_D_2 ) @ sk_C ),
    inference(demod,[status(thm)],['32','33'])).

thf(t3_subset,axiom,(
    ! [A: $i,B: $i] :
      ( ( m1_subset_1 @ A @ ( k1_zfmisc_1 @ B ) )
    <=> ( r1_tarski @ A @ B ) ) )).

thf('35',plain,(
    ! [X0: $i,X2: $i] :
      ( ( m1_subset_1 @ X0 @ ( k1_zfmisc_1 @ X2 ) )
      | ~ ( r1_tarski @ X0 @ X2 ) ) ),
    inference(cnf,[status(esa)],[t3_subset])).

thf('36',plain,(
    m1_subset_1 @ ( k2_relat_1 @ sk_D_2 ) @ ( k1_zfmisc_1 @ sk_C ) ),
    inference('sup-',[status(thm)],['34','35'])).

thf(t4_subset,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( ( r2_hidden @ A @ B )
        & ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ C ) ) )
     => ( m1_subset_1 @ A @ C ) ) )).

thf('37',plain,(
    ! [X3: $i,X4: $i,X5: $i] :
      ( ~ ( r2_hidden @ X3 @ X4 )
      | ~ ( m1_subset_1 @ X4 @ ( k1_zfmisc_1 @ X5 ) )
      | ( m1_subset_1 @ X3 @ X5 ) ) ),
    inference(cnf,[status(esa)],[t4_subset])).

thf('38',plain,(
    ! [X0: $i] :
      ( ( m1_subset_1 @ X0 @ sk_C )
      | ~ ( r2_hidden @ X0 @ ( k2_relat_1 @ sk_D_2 ) ) ) ),
    inference('sup-',[status(thm)],['36','37'])).

thf('39',plain,
    ( ( m1_subset_1 @ ( sk_D_1 @ sk_D_2 @ sk_B @ sk_E_2 ) @ sk_C )
   <= ( r2_hidden @ sk_E_2 @ ( k8_relset_1 @ sk_A @ sk_C @ sk_D_2 @ sk_B ) ) ),
    inference('sup-',[status(thm)],['27','38'])).

thf('40',plain,
    ( ~ ! [X30: $i] :
          ( ~ ( m1_subset_1 @ X30 @ sk_C )
          | ~ ( r2_hidden @ ( k4_tarski @ sk_E_2 @ X30 ) @ sk_D_2 )
          | ~ ( r2_hidden @ X30 @ sk_B ) )
    | ~ ( r2_hidden @ sk_E_2 @ ( k8_relset_1 @ sk_A @ sk_C @ sk_D_2 @ sk_B ) ) ),
    inference(demod,[status(thm)],['17','22','39'])).

thf('41',plain,
    ( ( r2_hidden @ sk_F @ sk_B )
    | ( r2_hidden @ sk_E_2 @ ( k8_relset_1 @ sk_A @ sk_C @ sk_D_2 @ sk_B ) ) ),
    inference(split,[status(esa)],['7'])).

thf('42',plain,
    ( ( r2_hidden @ sk_F @ sk_B )
   <= ( r2_hidden @ sk_F @ sk_B ) ),
    inference(split,[status(esa)],['7'])).

thf('43',plain,
    ( ( r2_hidden @ ( k4_tarski @ sk_E_2 @ sk_F ) @ sk_D_2 )
   <= ( r2_hidden @ ( k4_tarski @ sk_E_2 @ sk_F ) @ sk_D_2 ) ),
    inference(split,[status(esa)],['0'])).

thf(d14_relat_1,axiom,(
    ! [A: $i] :
      ( ( v1_relat_1 @ A )
     => ! [B: $i,C: $i] :
          ( ( C
            = ( k10_relat_1 @ A @ B ) )
        <=> ! [D: $i] :
              ( ( r2_hidden @ D @ C )
            <=> ? [E: $i] :
                  ( ( r2_hidden @ E @ B )
                  & ( r2_hidden @ ( k4_tarski @ D @ E ) @ A ) ) ) ) ) )).

thf('44',plain,(
    ! [X7: $i,X8: $i,X10: $i,X12: $i,X13: $i] :
      ( ( X10
       != ( k10_relat_1 @ X8 @ X7 ) )
      | ( r2_hidden @ X12 @ X10 )
      | ~ ( r2_hidden @ ( k4_tarski @ X12 @ X13 ) @ X8 )
      | ~ ( r2_hidden @ X13 @ X7 )
      | ~ ( v1_relat_1 @ X8 ) ) ),
    inference(cnf,[status(esa)],[d14_relat_1])).

thf('45',plain,(
    ! [X7: $i,X8: $i,X12: $i,X13: $i] :
      ( ~ ( v1_relat_1 @ X8 )
      | ~ ( r2_hidden @ X13 @ X7 )
      | ~ ( r2_hidden @ ( k4_tarski @ X12 @ X13 ) @ X8 )
      | ( r2_hidden @ X12 @ ( k10_relat_1 @ X8 @ X7 ) ) ) ),
    inference(simplify,[status(thm)],['44'])).

thf('46',plain,
    ( ! [X0: $i] :
        ( ( r2_hidden @ sk_E_2 @ ( k10_relat_1 @ sk_D_2 @ X0 ) )
        | ~ ( r2_hidden @ sk_F @ X0 )
        | ~ ( v1_relat_1 @ sk_D_2 ) )
   <= ( r2_hidden @ ( k4_tarski @ sk_E_2 @ sk_F ) @ sk_D_2 ) ),
    inference('sup-',[status(thm)],['43','45'])).

thf('47',plain,(
    v1_relat_1 @ sk_D_2 ),
    inference('sup-',[status(thm)],['12','13'])).

thf('48',plain,
    ( ! [X0: $i] :
        ( ( r2_hidden @ sk_E_2 @ ( k10_relat_1 @ sk_D_2 @ X0 ) )
        | ~ ( r2_hidden @ sk_F @ X0 ) )
   <= ( r2_hidden @ ( k4_tarski @ sk_E_2 @ sk_F ) @ sk_D_2 ) ),
    inference(demod,[status(thm)],['46','47'])).

thf('49',plain,
    ( ( r2_hidden @ sk_E_2 @ ( k10_relat_1 @ sk_D_2 @ sk_B ) )
   <= ( ( r2_hidden @ sk_F @ sk_B )
      & ( r2_hidden @ ( k4_tarski @ sk_E_2 @ sk_F ) @ sk_D_2 ) ) ),
    inference('sup-',[status(thm)],['42','48'])).

thf('50',plain,(
    ! [X0: $i] :
      ( ( k8_relset_1 @ sk_A @ sk_C @ sk_D_2 @ X0 )
      = ( k10_relat_1 @ sk_D_2 @ X0 ) ) ),
    inference('sup-',[status(thm)],['4','5'])).

thf('51',plain,
    ( ~ ( r2_hidden @ sk_E_2 @ ( k8_relset_1 @ sk_A @ sk_C @ sk_D_2 @ sk_B ) )
   <= ~ ( r2_hidden @ sk_E_2 @ ( k8_relset_1 @ sk_A @ sk_C @ sk_D_2 @ sk_B ) ) ),
    inference(split,[status(esa)],['2'])).

thf('52',plain,
    ( ~ ( r2_hidden @ sk_E_2 @ ( k10_relat_1 @ sk_D_2 @ sk_B ) )
   <= ~ ( r2_hidden @ sk_E_2 @ ( k8_relset_1 @ sk_A @ sk_C @ sk_D_2 @ sk_B ) ) ),
    inference('sup-',[status(thm)],['50','51'])).

thf('53',plain,
    ( ~ ( r2_hidden @ sk_F @ sk_B )
    | ~ ( r2_hidden @ ( k4_tarski @ sk_E_2 @ sk_F ) @ sk_D_2 )
    | ( r2_hidden @ sk_E_2 @ ( k8_relset_1 @ sk_A @ sk_C @ sk_D_2 @ sk_B ) ) ),
    inference('sup-',[status(thm)],['49','52'])).

thf('54',plain,(
    $false ),
    inference('sat_resolution*',[status(thm)],['1','3','40','41','53'])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.11/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.11/0.13  % Command    : run_portfolio.sh /export/starexec/sandbox2/benchmark/theBenchmark.p /export/starexec/sandbox2/tmp/tmp.k18UkyDWa6
% 0.13/0.34  % Computer   : n011.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % DateTime   : Tue Dec  1 13:25:57 EST 2020
% 0.13/0.34  % CPUTime    : 
% 0.13/0.34  % Running portfolio for 600 s
% 0.13/0.34  % File         : /export/starexec/sandbox2/benchmark/theBenchmark.p
% 0.13/0.35  % Number of cores: 8
% 0.13/0.35  % Python version: Python 3.6.8
% 0.13/0.35  % Running in FO mode
% 0.20/0.49  % Running /export/starexec/sandbox2/solver/bin/fo/fo7.sh for 78
% 0.20/0.49  % Solved by: fo/fo7.sh
% 0.20/0.49  To remain in the chosen logic fragment, unification with booleans has been disabled.
% 0.20/0.49  % done 63 iterations in 0.037s
% 0.20/0.49  % SZS status Theorem for '/export/starexec/sandbox2/benchmark/theBenchmark.p'
% 0.20/0.49  % SZS output start Refutation
% 0.20/0.49  thf(k2_relat_1_type, type, k2_relat_1: $i > $i).
% 0.20/0.49  thf(k2_zfmisc_1_type, type, k2_zfmisc_1: $i > $i > $i).
% 0.20/0.49  thf(k1_zfmisc_1_type, type, k1_zfmisc_1: $i > $i).
% 0.20/0.49  thf(sk_D_1_type, type, sk_D_1: $i > $i > $i > $i).
% 0.20/0.49  thf(v5_relat_1_type, type, v5_relat_1: $i > $i > $o).
% 0.20/0.49  thf(sk_A_type, type, sk_A: $i).
% 0.20/0.49  thf(sk_E_2_type, type, sk_E_2: $i).
% 0.20/0.49  thf(sk_D_2_type, type, sk_D_2: $i).
% 0.20/0.49  thf(v1_xboole_0_type, type, v1_xboole_0: $i > $o).
% 0.20/0.49  thf(k8_relset_1_type, type, k8_relset_1: $i > $i > $i > $i > $i).
% 0.20/0.49  thf(m1_subset_1_type, type, m1_subset_1: $i > $i > $o).
% 0.20/0.49  thf(r2_hidden_type, type, r2_hidden: $i > $i > $o).
% 0.20/0.49  thf(k4_tarski_type, type, k4_tarski: $i > $i > $i).
% 0.20/0.49  thf(sk_F_type, type, sk_F: $i).
% 0.20/0.49  thf(sk_B_type, type, sk_B: $i).
% 0.20/0.49  thf(v4_relat_1_type, type, v4_relat_1: $i > $i > $o).
% 0.20/0.49  thf(v1_relat_1_type, type, v1_relat_1: $i > $o).
% 0.20/0.49  thf(sk_C_type, type, sk_C: $i).
% 0.20/0.49  thf(r1_tarski_type, type, r1_tarski: $i > $i > $o).
% 0.20/0.49  thf(k10_relat_1_type, type, k10_relat_1: $i > $i > $i).
% 0.20/0.49  thf(t53_relset_1, conjecture,
% 0.20/0.49    (![A:$i]:
% 0.20/0.49     ( ( ~( v1_xboole_0 @ A ) ) =>
% 0.20/0.49       ( ![B:$i]:
% 0.20/0.49         ( ( ~( v1_xboole_0 @ B ) ) =>
% 0.20/0.49           ( ![C:$i]:
% 0.20/0.49             ( ( ~( v1_xboole_0 @ C ) ) =>
% 0.20/0.49               ( ![D:$i]:
% 0.20/0.49                 ( ( m1_subset_1 @
% 0.20/0.49                     D @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ C ) ) ) =>
% 0.20/0.49                   ( ![E:$i]:
% 0.20/0.49                     ( ( m1_subset_1 @ E @ A ) =>
% 0.20/0.49                       ( ( r2_hidden @ E @ ( k8_relset_1 @ A @ C @ D @ B ) ) <=>
% 0.20/0.49                         ( ?[F:$i]:
% 0.20/0.49                           ( ( r2_hidden @ F @ B ) & 
% 0.20/0.49                             ( r2_hidden @ ( k4_tarski @ E @ F ) @ D ) & 
% 0.20/0.49                             ( m1_subset_1 @ F @ C ) ) ) ) ) ) ) ) ) ) ) ) ))).
% 0.20/0.49  thf(zf_stmt_0, negated_conjecture,
% 0.20/0.49    (~( ![A:$i]:
% 0.20/0.49        ( ( ~( v1_xboole_0 @ A ) ) =>
% 0.20/0.49          ( ![B:$i]:
% 0.20/0.49            ( ( ~( v1_xboole_0 @ B ) ) =>
% 0.20/0.49              ( ![C:$i]:
% 0.20/0.49                ( ( ~( v1_xboole_0 @ C ) ) =>
% 0.20/0.49                  ( ![D:$i]:
% 0.20/0.49                    ( ( m1_subset_1 @
% 0.20/0.49                        D @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ C ) ) ) =>
% 0.20/0.49                      ( ![E:$i]:
% 0.20/0.49                        ( ( m1_subset_1 @ E @ A ) =>
% 0.20/0.49                          ( ( r2_hidden @ E @ ( k8_relset_1 @ A @ C @ D @ B ) ) <=>
% 0.20/0.49                            ( ?[F:$i]:
% 0.20/0.49                              ( ( r2_hidden @ F @ B ) & 
% 0.20/0.49                                ( r2_hidden @ ( k4_tarski @ E @ F ) @ D ) & 
% 0.20/0.49                                ( m1_subset_1 @ F @ C ) ) ) ) ) ) ) ) ) ) ) ) ) )),
% 0.20/0.49    inference('cnf.neg', [status(esa)], [t53_relset_1])).
% 0.20/0.49  thf('0', plain,
% 0.20/0.49      (((r2_hidden @ (k4_tarski @ sk_E_2 @ sk_F) @ sk_D_2)
% 0.20/0.49        | (r2_hidden @ sk_E_2 @ (k8_relset_1 @ sk_A @ sk_C @ sk_D_2 @ sk_B)))),
% 0.20/0.49      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.49  thf('1', plain,
% 0.20/0.49      (((r2_hidden @ (k4_tarski @ sk_E_2 @ sk_F) @ sk_D_2)) | 
% 0.20/0.49       ((r2_hidden @ sk_E_2 @ (k8_relset_1 @ sk_A @ sk_C @ sk_D_2 @ sk_B)))),
% 0.20/0.49      inference('split', [status(esa)], ['0'])).
% 0.20/0.49  thf('2', plain,
% 0.20/0.49      (![X30 : $i]:
% 0.20/0.49         (~ (m1_subset_1 @ X30 @ sk_C)
% 0.20/0.49          | ~ (r2_hidden @ (k4_tarski @ sk_E_2 @ X30) @ sk_D_2)
% 0.20/0.49          | ~ (r2_hidden @ X30 @ sk_B)
% 0.20/0.49          | ~ (r2_hidden @ sk_E_2 @ (k8_relset_1 @ sk_A @ sk_C @ sk_D_2 @ sk_B)))),
% 0.20/0.49      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.49  thf('3', plain,
% 0.20/0.49      ((![X30 : $i]:
% 0.20/0.49          (~ (m1_subset_1 @ X30 @ sk_C)
% 0.20/0.49           | ~ (r2_hidden @ (k4_tarski @ sk_E_2 @ X30) @ sk_D_2)
% 0.20/0.49           | ~ (r2_hidden @ X30 @ sk_B))) | 
% 0.20/0.49       ~ ((r2_hidden @ sk_E_2 @ (k8_relset_1 @ sk_A @ sk_C @ sk_D_2 @ sk_B)))),
% 0.20/0.49      inference('split', [status(esa)], ['2'])).
% 0.20/0.49  thf('4', plain,
% 0.20/0.49      ((m1_subset_1 @ sk_D_2 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_A @ sk_C)))),
% 0.20/0.49      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.49  thf(redefinition_k8_relset_1, axiom,
% 0.20/0.49    (![A:$i,B:$i,C:$i,D:$i]:
% 0.20/0.49     ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) =>
% 0.20/0.49       ( ( k8_relset_1 @ A @ B @ C @ D ) = ( k10_relat_1 @ C @ D ) ) ))).
% 0.20/0.49  thf('5', plain,
% 0.20/0.49      (![X26 : $i, X27 : $i, X28 : $i, X29 : $i]:
% 0.20/0.49         (~ (m1_subset_1 @ X26 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X27 @ X28)))
% 0.20/0.49          | ((k8_relset_1 @ X27 @ X28 @ X26 @ X29) = (k10_relat_1 @ X26 @ X29)))),
% 0.20/0.49      inference('cnf', [status(esa)], [redefinition_k8_relset_1])).
% 0.20/0.49  thf('6', plain,
% 0.20/0.49      (![X0 : $i]:
% 0.20/0.49         ((k8_relset_1 @ sk_A @ sk_C @ sk_D_2 @ X0)
% 0.20/0.49           = (k10_relat_1 @ sk_D_2 @ X0))),
% 0.20/0.49      inference('sup-', [status(thm)], ['4', '5'])).
% 0.20/0.49  thf('7', plain,
% 0.20/0.49      (((r2_hidden @ sk_F @ sk_B)
% 0.20/0.49        | (r2_hidden @ sk_E_2 @ (k8_relset_1 @ sk_A @ sk_C @ sk_D_2 @ sk_B)))),
% 0.20/0.49      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.49  thf('8', plain,
% 0.20/0.49      (((r2_hidden @ sk_E_2 @ (k8_relset_1 @ sk_A @ sk_C @ sk_D_2 @ sk_B)))
% 0.20/0.49         <= (((r2_hidden @ sk_E_2 @ (k8_relset_1 @ sk_A @ sk_C @ sk_D_2 @ sk_B))))),
% 0.20/0.49      inference('split', [status(esa)], ['7'])).
% 0.20/0.49  thf('9', plain,
% 0.20/0.49      (((r2_hidden @ sk_E_2 @ (k10_relat_1 @ sk_D_2 @ sk_B)))
% 0.20/0.49         <= (((r2_hidden @ sk_E_2 @ (k8_relset_1 @ sk_A @ sk_C @ sk_D_2 @ sk_B))))),
% 0.20/0.49      inference('sup+', [status(thm)], ['6', '8'])).
% 0.20/0.49  thf(t166_relat_1, axiom,
% 0.20/0.49    (![A:$i,B:$i,C:$i]:
% 0.20/0.49     ( ( v1_relat_1 @ C ) =>
% 0.20/0.49       ( ( r2_hidden @ A @ ( k10_relat_1 @ C @ B ) ) <=>
% 0.20/0.49         ( ?[D:$i]:
% 0.20/0.49           ( ( r2_hidden @ D @ B ) & 
% 0.20/0.49             ( r2_hidden @ ( k4_tarski @ A @ D ) @ C ) & 
% 0.20/0.49             ( r2_hidden @ D @ ( k2_relat_1 @ C ) ) ) ) ) ))).
% 0.20/0.49  thf('10', plain,
% 0.20/0.49      (![X17 : $i, X18 : $i, X19 : $i]:
% 0.20/0.49         (~ (r2_hidden @ X18 @ (k10_relat_1 @ X19 @ X17))
% 0.20/0.49          | (r2_hidden @ (k4_tarski @ X18 @ (sk_D_1 @ X19 @ X17 @ X18)) @ X19)
% 0.20/0.49          | ~ (v1_relat_1 @ X19))),
% 0.20/0.49      inference('cnf', [status(esa)], [t166_relat_1])).
% 0.20/0.49  thf('11', plain,
% 0.20/0.49      (((~ (v1_relat_1 @ sk_D_2)
% 0.20/0.49         | (r2_hidden @ 
% 0.20/0.49            (k4_tarski @ sk_E_2 @ (sk_D_1 @ sk_D_2 @ sk_B @ sk_E_2)) @ sk_D_2)))
% 0.20/0.49         <= (((r2_hidden @ sk_E_2 @ (k8_relset_1 @ sk_A @ sk_C @ sk_D_2 @ sk_B))))),
% 0.20/0.49      inference('sup-', [status(thm)], ['9', '10'])).
% 0.20/0.49  thf('12', plain,
% 0.20/0.49      ((m1_subset_1 @ sk_D_2 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_A @ sk_C)))),
% 0.20/0.49      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.49  thf(cc1_relset_1, axiom,
% 0.20/0.49    (![A:$i,B:$i,C:$i]:
% 0.20/0.49     ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) =>
% 0.20/0.49       ( v1_relat_1 @ C ) ))).
% 0.20/0.49  thf('13', plain,
% 0.20/0.49      (![X20 : $i, X21 : $i, X22 : $i]:
% 0.20/0.49         ((v1_relat_1 @ X20)
% 0.20/0.49          | ~ (m1_subset_1 @ X20 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X21 @ X22))))),
% 0.20/0.49      inference('cnf', [status(esa)], [cc1_relset_1])).
% 0.20/0.49  thf('14', plain, ((v1_relat_1 @ sk_D_2)),
% 0.20/0.49      inference('sup-', [status(thm)], ['12', '13'])).
% 0.20/0.49  thf('15', plain,
% 0.20/0.49      (((r2_hidden @ 
% 0.20/0.49         (k4_tarski @ sk_E_2 @ (sk_D_1 @ sk_D_2 @ sk_B @ sk_E_2)) @ sk_D_2))
% 0.20/0.49         <= (((r2_hidden @ sk_E_2 @ (k8_relset_1 @ sk_A @ sk_C @ sk_D_2 @ sk_B))))),
% 0.20/0.49      inference('demod', [status(thm)], ['11', '14'])).
% 0.20/0.49  thf('16', plain,
% 0.20/0.49      ((![X30 : $i]:
% 0.20/0.49          (~ (m1_subset_1 @ X30 @ sk_C)
% 0.20/0.49           | ~ (r2_hidden @ (k4_tarski @ sk_E_2 @ X30) @ sk_D_2)
% 0.20/0.49           | ~ (r2_hidden @ X30 @ sk_B)))
% 0.20/0.49         <= ((![X30 : $i]:
% 0.20/0.49                (~ (m1_subset_1 @ X30 @ sk_C)
% 0.20/0.49                 | ~ (r2_hidden @ (k4_tarski @ sk_E_2 @ X30) @ sk_D_2)
% 0.20/0.49                 | ~ (r2_hidden @ X30 @ sk_B))))),
% 0.20/0.49      inference('split', [status(esa)], ['2'])).
% 0.20/0.49  thf('17', plain,
% 0.20/0.49      (((~ (r2_hidden @ (sk_D_1 @ sk_D_2 @ sk_B @ sk_E_2) @ sk_B)
% 0.20/0.49         | ~ (m1_subset_1 @ (sk_D_1 @ sk_D_2 @ sk_B @ sk_E_2) @ sk_C)))
% 0.20/0.49         <= ((![X30 : $i]:
% 0.20/0.49                (~ (m1_subset_1 @ X30 @ sk_C)
% 0.20/0.49                 | ~ (r2_hidden @ (k4_tarski @ sk_E_2 @ X30) @ sk_D_2)
% 0.20/0.49                 | ~ (r2_hidden @ X30 @ sk_B))) & 
% 0.20/0.49             ((r2_hidden @ sk_E_2 @ (k8_relset_1 @ sk_A @ sk_C @ sk_D_2 @ sk_B))))),
% 0.20/0.49      inference('sup-', [status(thm)], ['15', '16'])).
% 0.20/0.49  thf('18', plain,
% 0.20/0.49      (((r2_hidden @ sk_E_2 @ (k10_relat_1 @ sk_D_2 @ sk_B)))
% 0.20/0.49         <= (((r2_hidden @ sk_E_2 @ (k8_relset_1 @ sk_A @ sk_C @ sk_D_2 @ sk_B))))),
% 0.20/0.49      inference('sup+', [status(thm)], ['6', '8'])).
% 0.20/0.49  thf('19', plain,
% 0.20/0.49      (![X17 : $i, X18 : $i, X19 : $i]:
% 0.20/0.49         (~ (r2_hidden @ X18 @ (k10_relat_1 @ X19 @ X17))
% 0.20/0.49          | (r2_hidden @ (sk_D_1 @ X19 @ X17 @ X18) @ X17)
% 0.20/0.49          | ~ (v1_relat_1 @ X19))),
% 0.20/0.49      inference('cnf', [status(esa)], [t166_relat_1])).
% 0.20/0.49  thf('20', plain,
% 0.20/0.49      (((~ (v1_relat_1 @ sk_D_2)
% 0.20/0.49         | (r2_hidden @ (sk_D_1 @ sk_D_2 @ sk_B @ sk_E_2) @ sk_B)))
% 0.20/0.49         <= (((r2_hidden @ sk_E_2 @ (k8_relset_1 @ sk_A @ sk_C @ sk_D_2 @ sk_B))))),
% 0.20/0.49      inference('sup-', [status(thm)], ['18', '19'])).
% 0.20/0.49  thf('21', plain, ((v1_relat_1 @ sk_D_2)),
% 0.20/0.49      inference('sup-', [status(thm)], ['12', '13'])).
% 0.20/0.49  thf('22', plain,
% 0.20/0.49      (((r2_hidden @ (sk_D_1 @ sk_D_2 @ sk_B @ sk_E_2) @ sk_B))
% 0.20/0.49         <= (((r2_hidden @ sk_E_2 @ (k8_relset_1 @ sk_A @ sk_C @ sk_D_2 @ sk_B))))),
% 0.20/0.49      inference('demod', [status(thm)], ['20', '21'])).
% 0.20/0.49  thf('23', plain,
% 0.20/0.49      (((r2_hidden @ sk_E_2 @ (k10_relat_1 @ sk_D_2 @ sk_B)))
% 0.20/0.49         <= (((r2_hidden @ sk_E_2 @ (k8_relset_1 @ sk_A @ sk_C @ sk_D_2 @ sk_B))))),
% 0.20/0.49      inference('sup+', [status(thm)], ['6', '8'])).
% 0.20/0.49  thf('24', plain,
% 0.20/0.49      (![X17 : $i, X18 : $i, X19 : $i]:
% 0.20/0.49         (~ (r2_hidden @ X18 @ (k10_relat_1 @ X19 @ X17))
% 0.20/0.49          | (r2_hidden @ (sk_D_1 @ X19 @ X17 @ X18) @ (k2_relat_1 @ X19))
% 0.20/0.49          | ~ (v1_relat_1 @ X19))),
% 0.20/0.49      inference('cnf', [status(esa)], [t166_relat_1])).
% 0.20/0.49  thf('25', plain,
% 0.20/0.49      (((~ (v1_relat_1 @ sk_D_2)
% 0.20/0.49         | (r2_hidden @ (sk_D_1 @ sk_D_2 @ sk_B @ sk_E_2) @ 
% 0.20/0.49            (k2_relat_1 @ sk_D_2))))
% 0.20/0.49         <= (((r2_hidden @ sk_E_2 @ (k8_relset_1 @ sk_A @ sk_C @ sk_D_2 @ sk_B))))),
% 0.20/0.49      inference('sup-', [status(thm)], ['23', '24'])).
% 0.20/0.49  thf('26', plain, ((v1_relat_1 @ sk_D_2)),
% 0.20/0.49      inference('sup-', [status(thm)], ['12', '13'])).
% 0.20/0.49  thf('27', plain,
% 0.20/0.49      (((r2_hidden @ (sk_D_1 @ sk_D_2 @ sk_B @ sk_E_2) @ (k2_relat_1 @ sk_D_2)))
% 0.20/0.49         <= (((r2_hidden @ sk_E_2 @ (k8_relset_1 @ sk_A @ sk_C @ sk_D_2 @ sk_B))))),
% 0.20/0.49      inference('demod', [status(thm)], ['25', '26'])).
% 0.20/0.49  thf('28', plain,
% 0.20/0.49      ((m1_subset_1 @ sk_D_2 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_A @ sk_C)))),
% 0.20/0.49      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.49  thf(cc2_relset_1, axiom,
% 0.20/0.49    (![A:$i,B:$i,C:$i]:
% 0.20/0.49     ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) =>
% 0.20/0.49       ( ( v4_relat_1 @ C @ A ) & ( v5_relat_1 @ C @ B ) ) ))).
% 0.20/0.49  thf('29', plain,
% 0.20/0.49      (![X23 : $i, X24 : $i, X25 : $i]:
% 0.20/0.49         ((v5_relat_1 @ X23 @ X25)
% 0.20/0.49          | ~ (m1_subset_1 @ X23 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X24 @ X25))))),
% 0.20/0.49      inference('cnf', [status(esa)], [cc2_relset_1])).
% 0.20/0.49  thf('30', plain, ((v5_relat_1 @ sk_D_2 @ sk_C)),
% 0.20/0.49      inference('sup-', [status(thm)], ['28', '29'])).
% 0.20/0.49  thf(d19_relat_1, axiom,
% 0.20/0.49    (![A:$i,B:$i]:
% 0.20/0.49     ( ( v1_relat_1 @ B ) =>
% 0.20/0.49       ( ( v5_relat_1 @ B @ A ) <=> ( r1_tarski @ ( k2_relat_1 @ B ) @ A ) ) ))).
% 0.20/0.49  thf('31', plain,
% 0.20/0.49      (![X14 : $i, X15 : $i]:
% 0.20/0.49         (~ (v5_relat_1 @ X14 @ X15)
% 0.20/0.49          | (r1_tarski @ (k2_relat_1 @ X14) @ X15)
% 0.20/0.49          | ~ (v1_relat_1 @ X14))),
% 0.20/0.49      inference('cnf', [status(esa)], [d19_relat_1])).
% 0.20/0.49  thf('32', plain,
% 0.20/0.49      ((~ (v1_relat_1 @ sk_D_2) | (r1_tarski @ (k2_relat_1 @ sk_D_2) @ sk_C))),
% 0.20/0.49      inference('sup-', [status(thm)], ['30', '31'])).
% 0.20/0.49  thf('33', plain, ((v1_relat_1 @ sk_D_2)),
% 0.20/0.49      inference('sup-', [status(thm)], ['12', '13'])).
% 0.20/0.49  thf('34', plain, ((r1_tarski @ (k2_relat_1 @ sk_D_2) @ sk_C)),
% 0.20/0.49      inference('demod', [status(thm)], ['32', '33'])).
% 0.20/0.49  thf(t3_subset, axiom,
% 0.20/0.49    (![A:$i,B:$i]:
% 0.20/0.49     ( ( m1_subset_1 @ A @ ( k1_zfmisc_1 @ B ) ) <=> ( r1_tarski @ A @ B ) ))).
% 0.20/0.49  thf('35', plain,
% 0.20/0.49      (![X0 : $i, X2 : $i]:
% 0.20/0.49         ((m1_subset_1 @ X0 @ (k1_zfmisc_1 @ X2)) | ~ (r1_tarski @ X0 @ X2))),
% 0.20/0.49      inference('cnf', [status(esa)], [t3_subset])).
% 0.20/0.49  thf('36', plain,
% 0.20/0.49      ((m1_subset_1 @ (k2_relat_1 @ sk_D_2) @ (k1_zfmisc_1 @ sk_C))),
% 0.20/0.49      inference('sup-', [status(thm)], ['34', '35'])).
% 0.20/0.49  thf(t4_subset, axiom,
% 0.20/0.49    (![A:$i,B:$i,C:$i]:
% 0.20/0.49     ( ( ( r2_hidden @ A @ B ) & ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ C ) ) ) =>
% 0.20/0.49       ( m1_subset_1 @ A @ C ) ))).
% 0.20/0.49  thf('37', plain,
% 0.20/0.49      (![X3 : $i, X4 : $i, X5 : $i]:
% 0.20/0.49         (~ (r2_hidden @ X3 @ X4)
% 0.20/0.49          | ~ (m1_subset_1 @ X4 @ (k1_zfmisc_1 @ X5))
% 0.20/0.49          | (m1_subset_1 @ X3 @ X5))),
% 0.20/0.49      inference('cnf', [status(esa)], [t4_subset])).
% 0.20/0.49  thf('38', plain,
% 0.20/0.49      (![X0 : $i]:
% 0.20/0.49         ((m1_subset_1 @ X0 @ sk_C)
% 0.20/0.49          | ~ (r2_hidden @ X0 @ (k2_relat_1 @ sk_D_2)))),
% 0.20/0.49      inference('sup-', [status(thm)], ['36', '37'])).
% 0.20/0.49  thf('39', plain,
% 0.20/0.49      (((m1_subset_1 @ (sk_D_1 @ sk_D_2 @ sk_B @ sk_E_2) @ sk_C))
% 0.20/0.49         <= (((r2_hidden @ sk_E_2 @ (k8_relset_1 @ sk_A @ sk_C @ sk_D_2 @ sk_B))))),
% 0.20/0.49      inference('sup-', [status(thm)], ['27', '38'])).
% 0.20/0.49  thf('40', plain,
% 0.20/0.49      (~
% 0.20/0.49       (![X30 : $i]:
% 0.20/0.49          (~ (m1_subset_1 @ X30 @ sk_C)
% 0.20/0.49           | ~ (r2_hidden @ (k4_tarski @ sk_E_2 @ X30) @ sk_D_2)
% 0.20/0.49           | ~ (r2_hidden @ X30 @ sk_B))) | 
% 0.20/0.49       ~ ((r2_hidden @ sk_E_2 @ (k8_relset_1 @ sk_A @ sk_C @ sk_D_2 @ sk_B)))),
% 0.20/0.49      inference('demod', [status(thm)], ['17', '22', '39'])).
% 0.20/0.49  thf('41', plain,
% 0.20/0.49      (((r2_hidden @ sk_F @ sk_B)) | 
% 0.20/0.49       ((r2_hidden @ sk_E_2 @ (k8_relset_1 @ sk_A @ sk_C @ sk_D_2 @ sk_B)))),
% 0.20/0.49      inference('split', [status(esa)], ['7'])).
% 0.20/0.49  thf('42', plain,
% 0.20/0.49      (((r2_hidden @ sk_F @ sk_B)) <= (((r2_hidden @ sk_F @ sk_B)))),
% 0.20/0.49      inference('split', [status(esa)], ['7'])).
% 0.20/0.49  thf('43', plain,
% 0.20/0.49      (((r2_hidden @ (k4_tarski @ sk_E_2 @ sk_F) @ sk_D_2))
% 0.20/0.49         <= (((r2_hidden @ (k4_tarski @ sk_E_2 @ sk_F) @ sk_D_2)))),
% 0.20/0.49      inference('split', [status(esa)], ['0'])).
% 0.20/0.49  thf(d14_relat_1, axiom,
% 0.20/0.49    (![A:$i]:
% 0.20/0.49     ( ( v1_relat_1 @ A ) =>
% 0.20/0.49       ( ![B:$i,C:$i]:
% 0.20/0.49         ( ( ( C ) = ( k10_relat_1 @ A @ B ) ) <=>
% 0.20/0.49           ( ![D:$i]:
% 0.20/0.49             ( ( r2_hidden @ D @ C ) <=>
% 0.20/0.49               ( ?[E:$i]:
% 0.20/0.49                 ( ( r2_hidden @ E @ B ) & 
% 0.20/0.49                   ( r2_hidden @ ( k4_tarski @ D @ E ) @ A ) ) ) ) ) ) ) ))).
% 0.20/0.49  thf('44', plain,
% 0.20/0.49      (![X7 : $i, X8 : $i, X10 : $i, X12 : $i, X13 : $i]:
% 0.20/0.49         (((X10) != (k10_relat_1 @ X8 @ X7))
% 0.20/0.49          | (r2_hidden @ X12 @ X10)
% 0.20/0.49          | ~ (r2_hidden @ (k4_tarski @ X12 @ X13) @ X8)
% 0.20/0.49          | ~ (r2_hidden @ X13 @ X7)
% 0.20/0.49          | ~ (v1_relat_1 @ X8))),
% 0.20/0.49      inference('cnf', [status(esa)], [d14_relat_1])).
% 0.20/0.49  thf('45', plain,
% 0.20/0.49      (![X7 : $i, X8 : $i, X12 : $i, X13 : $i]:
% 0.20/0.49         (~ (v1_relat_1 @ X8)
% 0.20/0.49          | ~ (r2_hidden @ X13 @ X7)
% 0.20/0.49          | ~ (r2_hidden @ (k4_tarski @ X12 @ X13) @ X8)
% 0.20/0.49          | (r2_hidden @ X12 @ (k10_relat_1 @ X8 @ X7)))),
% 0.20/0.49      inference('simplify', [status(thm)], ['44'])).
% 0.20/0.49  thf('46', plain,
% 0.20/0.49      ((![X0 : $i]:
% 0.20/0.49          ((r2_hidden @ sk_E_2 @ (k10_relat_1 @ sk_D_2 @ X0))
% 0.20/0.49           | ~ (r2_hidden @ sk_F @ X0)
% 0.20/0.49           | ~ (v1_relat_1 @ sk_D_2)))
% 0.20/0.49         <= (((r2_hidden @ (k4_tarski @ sk_E_2 @ sk_F) @ sk_D_2)))),
% 0.20/0.49      inference('sup-', [status(thm)], ['43', '45'])).
% 0.20/0.49  thf('47', plain, ((v1_relat_1 @ sk_D_2)),
% 0.20/0.49      inference('sup-', [status(thm)], ['12', '13'])).
% 0.20/0.49  thf('48', plain,
% 0.20/0.49      ((![X0 : $i]:
% 0.20/0.49          ((r2_hidden @ sk_E_2 @ (k10_relat_1 @ sk_D_2 @ X0))
% 0.20/0.49           | ~ (r2_hidden @ sk_F @ X0)))
% 0.20/0.49         <= (((r2_hidden @ (k4_tarski @ sk_E_2 @ sk_F) @ sk_D_2)))),
% 0.20/0.49      inference('demod', [status(thm)], ['46', '47'])).
% 0.20/0.49  thf('49', plain,
% 0.20/0.49      (((r2_hidden @ sk_E_2 @ (k10_relat_1 @ sk_D_2 @ sk_B)))
% 0.20/0.49         <= (((r2_hidden @ sk_F @ sk_B)) & 
% 0.20/0.49             ((r2_hidden @ (k4_tarski @ sk_E_2 @ sk_F) @ sk_D_2)))),
% 0.20/0.49      inference('sup-', [status(thm)], ['42', '48'])).
% 0.20/0.49  thf('50', plain,
% 0.20/0.49      (![X0 : $i]:
% 0.20/0.49         ((k8_relset_1 @ sk_A @ sk_C @ sk_D_2 @ X0)
% 0.20/0.49           = (k10_relat_1 @ sk_D_2 @ X0))),
% 0.20/0.49      inference('sup-', [status(thm)], ['4', '5'])).
% 0.20/0.49  thf('51', plain,
% 0.20/0.49      ((~ (r2_hidden @ sk_E_2 @ (k8_relset_1 @ sk_A @ sk_C @ sk_D_2 @ sk_B)))
% 0.20/0.49         <= (~
% 0.20/0.49             ((r2_hidden @ sk_E_2 @ (k8_relset_1 @ sk_A @ sk_C @ sk_D_2 @ sk_B))))),
% 0.20/0.49      inference('split', [status(esa)], ['2'])).
% 0.20/0.49  thf('52', plain,
% 0.20/0.49      ((~ (r2_hidden @ sk_E_2 @ (k10_relat_1 @ sk_D_2 @ sk_B)))
% 0.20/0.49         <= (~
% 0.20/0.49             ((r2_hidden @ sk_E_2 @ (k8_relset_1 @ sk_A @ sk_C @ sk_D_2 @ sk_B))))),
% 0.20/0.49      inference('sup-', [status(thm)], ['50', '51'])).
% 0.20/0.49  thf('53', plain,
% 0.20/0.49      (~ ((r2_hidden @ sk_F @ sk_B)) | 
% 0.20/0.49       ~ ((r2_hidden @ (k4_tarski @ sk_E_2 @ sk_F) @ sk_D_2)) | 
% 0.20/0.49       ((r2_hidden @ sk_E_2 @ (k8_relset_1 @ sk_A @ sk_C @ sk_D_2 @ sk_B)))),
% 0.20/0.49      inference('sup-', [status(thm)], ['49', '52'])).
% 0.20/0.49  thf('54', plain, ($false),
% 0.20/0.49      inference('sat_resolution*', [status(thm)], ['1', '3', '40', '41', '53'])).
% 0.20/0.49  
% 0.20/0.49  % SZS output end Refutation
% 0.20/0.49  
% 0.20/0.50  % Zipperpin 1.5 exiting
%------------------------------------------------------------------------------
