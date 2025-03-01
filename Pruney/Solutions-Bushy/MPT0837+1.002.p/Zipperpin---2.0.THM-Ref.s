%------------------------------------------------------------------------------
% File       : Zipperpin---2.0
% Problem    : MPT0837+1.002 : TPTP v7.4.0. Released v7.4.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_portfolio.sh /export/starexec/sandbox/benchmark/theBenchmark.p /export/starexec/sandbox/tmp/tmp.HyacerUpFP

% Computer   : n028.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 08:52:34 EST 2020

% Result     : Theorem 13.02s
% Output     : Refutation 13.02s
% Verified   : 
% Statistics : Number of formulae       :   95 ( 194 expanded)
%              Number of leaves         :   24 (  64 expanded)
%              Depth                    :   14
%              Number of atoms          :  885 (2363 expanded)
%              Number of equality atoms :    7 (  23 expanded)
%              Maximal formula depth    :   16 (   7 average)

% Comments   : 
%------------------------------------------------------------------------------
thf(k2_relat_1_type,type,(
    k2_relat_1: $i > $i )).

thf(v1_xboole_0_type,type,(
    v1_xboole_0: $i > $o )).

thf(sk_E_type,type,(
    sk_E: $i )).

thf(k4_tarski_type,type,(
    k4_tarski: $i > $i > $i )).

thf(m1_subset_1_type,type,(
    m1_subset_1: $i > $i > $o )).

thf(k1_zfmisc_1_type,type,(
    k1_zfmisc_1: $i > $i )).

thf(sk_B_type,type,(
    sk_B: $i > $i )).

thf(sk_A_type,type,(
    sk_A: $i )).

thf(sk_D_1_type,type,(
    sk_D_1: $i > $i > $i )).

thf(r2_hidden_type,type,(
    r2_hidden: $i > $i > $o )).

thf(sk_D_2_type,type,(
    sk_D_2: $i )).

thf(sk_B_1_type,type,(
    sk_B_1: $i )).

thf(k2_zfmisc_1_type,type,(
    k2_zfmisc_1: $i > $i > $i )).

thf(sk_C_1_type,type,(
    sk_C_1: $i )).

thf(k2_relset_1_type,type,(
    k2_relset_1: $i > $i > $i > $i )).

thf(t48_relset_1,conjecture,(
    ! [A: $i] :
      ( ~ ( v1_xboole_0 @ A )
     => ! [B: $i] :
          ( ~ ( v1_xboole_0 @ B )
         => ! [C: $i] :
              ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ B @ A ) ) )
             => ! [D: $i] :
                  ( ( r2_hidden @ D @ ( k2_relset_1 @ B @ A @ C ) )
                <=> ? [E: $i] :
                      ( ( r2_hidden @ ( k4_tarski @ E @ D ) @ C )
                      & ( m1_subset_1 @ E @ B ) ) ) ) ) ) )).

thf(zf_stmt_0,negated_conjecture,(
    ~ ! [A: $i] :
        ( ~ ( v1_xboole_0 @ A )
       => ! [B: $i] :
            ( ~ ( v1_xboole_0 @ B )
           => ! [C: $i] :
                ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ B @ A ) ) )
               => ! [D: $i] :
                    ( ( r2_hidden @ D @ ( k2_relset_1 @ B @ A @ C ) )
                  <=> ? [E: $i] :
                        ( ( r2_hidden @ ( k4_tarski @ E @ D ) @ C )
                        & ( m1_subset_1 @ E @ B ) ) ) ) ) ) ),
    inference('cnf.neg',[status(esa)],[t48_relset_1])).

thf('0',plain,
    ( ( r2_hidden @ ( k4_tarski @ sk_E @ sk_D_2 ) @ sk_C_1 )
    | ( r2_hidden @ sk_D_2 @ ( k2_relset_1 @ sk_B_1 @ sk_A @ sk_C_1 ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('1',plain,
    ( ( r2_hidden @ ( k4_tarski @ sk_E @ sk_D_2 ) @ sk_C_1 )
   <= ( r2_hidden @ ( k4_tarski @ sk_E @ sk_D_2 ) @ sk_C_1 ) ),
    inference(split,[status(esa)],['0'])).

thf(d5_relat_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( B
        = ( k2_relat_1 @ A ) )
    <=> ! [C: $i] :
          ( ( r2_hidden @ C @ B )
        <=> ? [D: $i] :
              ( r2_hidden @ ( k4_tarski @ D @ C ) @ A ) ) ) )).

thf('2',plain,(
    ! [X0: $i,X1: $i,X2: $i,X3: $i] :
      ( ~ ( r2_hidden @ ( k4_tarski @ X0 @ X1 ) @ X2 )
      | ( r2_hidden @ X1 @ X3 )
      | ( X3
       != ( k2_relat_1 @ X2 ) ) ) ),
    inference(cnf,[status(esa)],[d5_relat_1])).

thf('3',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( ( r2_hidden @ X1 @ ( k2_relat_1 @ X2 ) )
      | ~ ( r2_hidden @ ( k4_tarski @ X0 @ X1 ) @ X2 ) ) ),
    inference(simplify,[status(thm)],['2'])).

thf('4',plain,
    ( ( r2_hidden @ sk_D_2 @ ( k2_relat_1 @ sk_C_1 ) )
   <= ( r2_hidden @ ( k4_tarski @ sk_E @ sk_D_2 ) @ sk_C_1 ) ),
    inference('sup-',[status(thm)],['1','3'])).

thf('5',plain,(
    m1_subset_1 @ sk_C_1 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_B_1 @ sk_A ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(redefinition_k2_relset_1,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) )
     => ( ( k2_relset_1 @ A @ B @ C )
        = ( k2_relat_1 @ C ) ) ) )).

thf('6',plain,(
    ! [X8: $i,X9: $i,X10: $i] :
      ( ( ( k2_relset_1 @ X9 @ X10 @ X8 )
        = ( k2_relat_1 @ X8 ) )
      | ~ ( m1_subset_1 @ X8 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X9 @ X10 ) ) ) ) ),
    inference(cnf,[status(esa)],[redefinition_k2_relset_1])).

thf('7',plain,
    ( ( k2_relset_1 @ sk_B_1 @ sk_A @ sk_C_1 )
    = ( k2_relat_1 @ sk_C_1 ) ),
    inference('sup-',[status(thm)],['5','6'])).

thf('8',plain,(
    ! [X25: $i] :
      ( ~ ( m1_subset_1 @ X25 @ sk_B_1 )
      | ~ ( r2_hidden @ ( k4_tarski @ X25 @ sk_D_2 ) @ sk_C_1 )
      | ~ ( r2_hidden @ sk_D_2 @ ( k2_relset_1 @ sk_B_1 @ sk_A @ sk_C_1 ) ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('9',plain,
    ( ~ ( r2_hidden @ sk_D_2 @ ( k2_relset_1 @ sk_B_1 @ sk_A @ sk_C_1 ) )
   <= ~ ( r2_hidden @ sk_D_2 @ ( k2_relset_1 @ sk_B_1 @ sk_A @ sk_C_1 ) ) ),
    inference(split,[status(esa)],['8'])).

thf('10',plain,
    ( ~ ( r2_hidden @ sk_D_2 @ ( k2_relat_1 @ sk_C_1 ) )
   <= ~ ( r2_hidden @ sk_D_2 @ ( k2_relset_1 @ sk_B_1 @ sk_A @ sk_C_1 ) ) ),
    inference('sup-',[status(thm)],['7','9'])).

thf('11',plain,
    ( ( r2_hidden @ sk_D_2 @ ( k2_relset_1 @ sk_B_1 @ sk_A @ sk_C_1 ) )
    | ~ ( r2_hidden @ ( k4_tarski @ sk_E @ sk_D_2 ) @ sk_C_1 ) ),
    inference('sup-',[status(thm)],['4','10'])).

thf('12',plain,
    ( ( r2_hidden @ sk_D_2 @ ( k2_relat_1 @ sk_C_1 ) )
   <= ( r2_hidden @ ( k4_tarski @ sk_E @ sk_D_2 ) @ sk_C_1 ) ),
    inference('sup-',[status(thm)],['1','3'])).

thf('13',plain,(
    ! [X2: $i,X3: $i,X4: $i] :
      ( ~ ( r2_hidden @ X4 @ X3 )
      | ( r2_hidden @ ( k4_tarski @ ( sk_D_1 @ X4 @ X2 ) @ X4 ) @ X2 )
      | ( X3
       != ( k2_relat_1 @ X2 ) ) ) ),
    inference(cnf,[status(esa)],[d5_relat_1])).

thf('14',plain,(
    ! [X2: $i,X4: $i] :
      ( ( r2_hidden @ ( k4_tarski @ ( sk_D_1 @ X4 @ X2 ) @ X4 ) @ X2 )
      | ~ ( r2_hidden @ X4 @ ( k2_relat_1 @ X2 ) ) ) ),
    inference(simplify,[status(thm)],['13'])).

thf('15',plain,
    ( ( r2_hidden @ ( k4_tarski @ ( sk_D_1 @ sk_D_2 @ sk_C_1 ) @ sk_D_2 ) @ sk_C_1 )
   <= ( r2_hidden @ ( k4_tarski @ sk_E @ sk_D_2 ) @ sk_C_1 ) ),
    inference('sup-',[status(thm)],['12','14'])).

thf('16',plain,(
    m1_subset_1 @ sk_C_1 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_B_1 @ sk_A ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(t4_subset,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( ( r2_hidden @ A @ B )
        & ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ C ) ) )
     => ( m1_subset_1 @ A @ C ) ) )).

thf('17',plain,(
    ! [X20: $i,X21: $i,X22: $i] :
      ( ~ ( r2_hidden @ X20 @ X21 )
      | ~ ( m1_subset_1 @ X21 @ ( k1_zfmisc_1 @ X22 ) )
      | ( m1_subset_1 @ X20 @ X22 ) ) ),
    inference(cnf,[status(esa)],[t4_subset])).

thf('18',plain,(
    ! [X0: $i] :
      ( ( m1_subset_1 @ X0 @ ( k2_zfmisc_1 @ sk_B_1 @ sk_A ) )
      | ~ ( r2_hidden @ X0 @ sk_C_1 ) ) ),
    inference('sup-',[status(thm)],['16','17'])).

thf('19',plain,
    ( ( m1_subset_1 @ ( k4_tarski @ ( sk_D_1 @ sk_D_2 @ sk_C_1 ) @ sk_D_2 ) @ ( k2_zfmisc_1 @ sk_B_1 @ sk_A ) )
   <= ( r2_hidden @ ( k4_tarski @ sk_E @ sk_D_2 ) @ sk_C_1 ) ),
    inference('sup-',[status(thm)],['15','18'])).

thf(t2_subset,axiom,(
    ! [A: $i,B: $i] :
      ( ( m1_subset_1 @ A @ B )
     => ( ( v1_xboole_0 @ B )
        | ( r2_hidden @ A @ B ) ) ) )).

thf('20',plain,(
    ! [X18: $i,X19: $i] :
      ( ( r2_hidden @ X18 @ X19 )
      | ( v1_xboole_0 @ X19 )
      | ~ ( m1_subset_1 @ X18 @ X19 ) ) ),
    inference(cnf,[status(esa)],[t2_subset])).

thf('21',plain,
    ( ( ( v1_xboole_0 @ ( k2_zfmisc_1 @ sk_B_1 @ sk_A ) )
      | ( r2_hidden @ ( k4_tarski @ ( sk_D_1 @ sk_D_2 @ sk_C_1 ) @ sk_D_2 ) @ ( k2_zfmisc_1 @ sk_B_1 @ sk_A ) ) )
   <= ( r2_hidden @ ( k4_tarski @ sk_E @ sk_D_2 ) @ sk_C_1 ) ),
    inference('sup-',[status(thm)],['19','20'])).

thf(t106_zfmisc_1,axiom,(
    ! [A: $i,B: $i,C: $i,D: $i] :
      ( ( r2_hidden @ ( k4_tarski @ A @ B ) @ ( k2_zfmisc_1 @ C @ D ) )
    <=> ( ( r2_hidden @ A @ C )
        & ( r2_hidden @ B @ D ) ) ) )).

thf('22',plain,(
    ! [X11: $i,X12: $i,X13: $i,X14: $i] :
      ( ( r2_hidden @ X11 @ X12 )
      | ~ ( r2_hidden @ ( k4_tarski @ X11 @ X13 ) @ ( k2_zfmisc_1 @ X12 @ X14 ) ) ) ),
    inference(cnf,[status(esa)],[t106_zfmisc_1])).

thf('23',plain,
    ( ( ( v1_xboole_0 @ ( k2_zfmisc_1 @ sk_B_1 @ sk_A ) )
      | ( r2_hidden @ ( sk_D_1 @ sk_D_2 @ sk_C_1 ) @ sk_B_1 ) )
   <= ( r2_hidden @ ( k4_tarski @ sk_E @ sk_D_2 ) @ sk_C_1 ) ),
    inference('sup-',[status(thm)],['21','22'])).

thf(t1_subset,axiom,(
    ! [A: $i,B: $i] :
      ( ( r2_hidden @ A @ B )
     => ( m1_subset_1 @ A @ B ) ) )).

thf('24',plain,(
    ! [X16: $i,X17: $i] :
      ( ( m1_subset_1 @ X16 @ X17 )
      | ~ ( r2_hidden @ X16 @ X17 ) ) ),
    inference(cnf,[status(esa)],[t1_subset])).

thf('25',plain,
    ( ( ( v1_xboole_0 @ ( k2_zfmisc_1 @ sk_B_1 @ sk_A ) )
      | ( m1_subset_1 @ ( sk_D_1 @ sk_D_2 @ sk_C_1 ) @ sk_B_1 ) )
   <= ( r2_hidden @ ( k4_tarski @ sk_E @ sk_D_2 ) @ sk_C_1 ) ),
    inference('sup-',[status(thm)],['23','24'])).

thf('26',plain,
    ( ( r2_hidden @ ( k4_tarski @ ( sk_D_1 @ sk_D_2 @ sk_C_1 ) @ sk_D_2 ) @ sk_C_1 )
   <= ( r2_hidden @ ( k4_tarski @ sk_E @ sk_D_2 ) @ sk_C_1 ) ),
    inference('sup-',[status(thm)],['12','14'])).

thf('27',plain,
    ( ! [X25: $i] :
        ( ~ ( m1_subset_1 @ X25 @ sk_B_1 )
        | ~ ( r2_hidden @ ( k4_tarski @ X25 @ sk_D_2 ) @ sk_C_1 ) )
   <= ! [X25: $i] :
        ( ~ ( m1_subset_1 @ X25 @ sk_B_1 )
        | ~ ( r2_hidden @ ( k4_tarski @ X25 @ sk_D_2 ) @ sk_C_1 ) ) ),
    inference(split,[status(esa)],['8'])).

thf('28',plain,
    ( ~ ( m1_subset_1 @ ( sk_D_1 @ sk_D_2 @ sk_C_1 ) @ sk_B_1 )
   <= ( ! [X25: $i] :
          ( ~ ( m1_subset_1 @ X25 @ sk_B_1 )
          | ~ ( r2_hidden @ ( k4_tarski @ X25 @ sk_D_2 ) @ sk_C_1 ) )
      & ( r2_hidden @ ( k4_tarski @ sk_E @ sk_D_2 ) @ sk_C_1 ) ) ),
    inference('sup-',[status(thm)],['26','27'])).

thf('29',plain,
    ( ( v1_xboole_0 @ ( k2_zfmisc_1 @ sk_B_1 @ sk_A ) )
   <= ( ! [X25: $i] :
          ( ~ ( m1_subset_1 @ X25 @ sk_B_1 )
          | ~ ( r2_hidden @ ( k4_tarski @ X25 @ sk_D_2 ) @ sk_C_1 ) )
      & ( r2_hidden @ ( k4_tarski @ sk_E @ sk_D_2 ) @ sk_C_1 ) ) ),
    inference('sup-',[status(thm)],['25','28'])).

thf(existence_m1_subset_1,axiom,(
    ! [A: $i] :
    ? [B: $i] :
      ( m1_subset_1 @ B @ A ) )).

thf('30',plain,(
    ! [X7: $i] :
      ( m1_subset_1 @ ( sk_B @ X7 ) @ X7 ) ),
    inference(cnf,[status(esa)],[existence_m1_subset_1])).

thf('31',plain,(
    ! [X18: $i,X19: $i] :
      ( ( r2_hidden @ X18 @ X19 )
      | ( v1_xboole_0 @ X19 )
      | ~ ( m1_subset_1 @ X18 @ X19 ) ) ),
    inference(cnf,[status(esa)],[t2_subset])).

thf('32',plain,(
    ! [X0: $i] :
      ( ( v1_xboole_0 @ X0 )
      | ( r2_hidden @ ( sk_B @ X0 ) @ X0 ) ) ),
    inference('sup-',[status(thm)],['30','31'])).

thf('33',plain,(
    ! [X0: $i] :
      ( ( v1_xboole_0 @ X0 )
      | ( r2_hidden @ ( sk_B @ X0 ) @ X0 ) ) ),
    inference('sup-',[status(thm)],['30','31'])).

thf('34',plain,(
    ! [X11: $i,X12: $i,X13: $i,X15: $i] :
      ( ( r2_hidden @ ( k4_tarski @ X11 @ X13 ) @ ( k2_zfmisc_1 @ X12 @ X15 ) )
      | ~ ( r2_hidden @ X13 @ X15 )
      | ~ ( r2_hidden @ X11 @ X12 ) ) ),
    inference(cnf,[status(esa)],[t106_zfmisc_1])).

thf('35',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( ( v1_xboole_0 @ X0 )
      | ~ ( r2_hidden @ X2 @ X1 )
      | ( r2_hidden @ ( k4_tarski @ X2 @ ( sk_B @ X0 ) ) @ ( k2_zfmisc_1 @ X1 @ X0 ) ) ) ),
    inference('sup-',[status(thm)],['33','34'])).

thf('36',plain,(
    ! [X0: $i,X1: $i] :
      ( ( v1_xboole_0 @ X0 )
      | ( r2_hidden @ ( k4_tarski @ ( sk_B @ X0 ) @ ( sk_B @ X1 ) ) @ ( k2_zfmisc_1 @ X0 @ X1 ) )
      | ( v1_xboole_0 @ X1 ) ) ),
    inference('sup-',[status(thm)],['32','35'])).

thf(t7_boole,axiom,(
    ! [A: $i,B: $i] :
      ~ ( ( r2_hidden @ A @ B )
        & ( v1_xboole_0 @ B ) ) )).

thf('37',plain,(
    ! [X23: $i,X24: $i] :
      ( ~ ( r2_hidden @ X23 @ X24 )
      | ~ ( v1_xboole_0 @ X24 ) ) ),
    inference(cnf,[status(esa)],[t7_boole])).

thf('38',plain,(
    ! [X0: $i,X1: $i] :
      ( ( v1_xboole_0 @ X0 )
      | ( v1_xboole_0 @ X1 )
      | ~ ( v1_xboole_0 @ ( k2_zfmisc_1 @ X1 @ X0 ) ) ) ),
    inference('sup-',[status(thm)],['36','37'])).

thf('39',plain,
    ( ( ( v1_xboole_0 @ sk_B_1 )
      | ( v1_xboole_0 @ sk_A ) )
   <= ( ! [X25: $i] :
          ( ~ ( m1_subset_1 @ X25 @ sk_B_1 )
          | ~ ( r2_hidden @ ( k4_tarski @ X25 @ sk_D_2 ) @ sk_C_1 ) )
      & ( r2_hidden @ ( k4_tarski @ sk_E @ sk_D_2 ) @ sk_C_1 ) ) ),
    inference('sup-',[status(thm)],['29','38'])).

thf('40',plain,(
    ~ ( v1_xboole_0 @ sk_B_1 ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('41',plain,
    ( ( v1_xboole_0 @ sk_A )
   <= ( ! [X25: $i] :
          ( ~ ( m1_subset_1 @ X25 @ sk_B_1 )
          | ~ ( r2_hidden @ ( k4_tarski @ X25 @ sk_D_2 ) @ sk_C_1 ) )
      & ( r2_hidden @ ( k4_tarski @ sk_E @ sk_D_2 ) @ sk_C_1 ) ) ),
    inference(clc,[status(thm)],['39','40'])).

thf('42',plain,(
    ~ ( v1_xboole_0 @ sk_A ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('43',plain,
    ( ~ ! [X25: $i] :
          ( ~ ( m1_subset_1 @ X25 @ sk_B_1 )
          | ~ ( r2_hidden @ ( k4_tarski @ X25 @ sk_D_2 ) @ sk_C_1 ) )
    | ~ ( r2_hidden @ ( k4_tarski @ sk_E @ sk_D_2 ) @ sk_C_1 ) ),
    inference('sup-',[status(thm)],['41','42'])).

thf('44',plain,
    ( ( r2_hidden @ sk_D_2 @ ( k2_relset_1 @ sk_B_1 @ sk_A @ sk_C_1 ) )
    | ( r2_hidden @ ( k4_tarski @ sk_E @ sk_D_2 ) @ sk_C_1 ) ),
    inference(split,[status(esa)],['0'])).

thf('45',plain,
    ( ! [X25: $i] :
        ( ~ ( m1_subset_1 @ X25 @ sk_B_1 )
        | ~ ( r2_hidden @ ( k4_tarski @ X25 @ sk_D_2 ) @ sk_C_1 ) )
    | ~ ( r2_hidden @ sk_D_2 @ ( k2_relset_1 @ sk_B_1 @ sk_A @ sk_C_1 ) ) ),
    inference(split,[status(esa)],['8'])).

thf('46',plain,
    ( ( k2_relset_1 @ sk_B_1 @ sk_A @ sk_C_1 )
    = ( k2_relat_1 @ sk_C_1 ) ),
    inference('sup-',[status(thm)],['5','6'])).

thf('47',plain,
    ( ( r2_hidden @ sk_D_2 @ ( k2_relset_1 @ sk_B_1 @ sk_A @ sk_C_1 ) )
   <= ( r2_hidden @ sk_D_2 @ ( k2_relset_1 @ sk_B_1 @ sk_A @ sk_C_1 ) ) ),
    inference(split,[status(esa)],['0'])).

thf('48',plain,
    ( ( r2_hidden @ sk_D_2 @ ( k2_relat_1 @ sk_C_1 ) )
   <= ( r2_hidden @ sk_D_2 @ ( k2_relset_1 @ sk_B_1 @ sk_A @ sk_C_1 ) ) ),
    inference('sup+',[status(thm)],['46','47'])).

thf('49',plain,(
    ! [X2: $i,X4: $i] :
      ( ( r2_hidden @ ( k4_tarski @ ( sk_D_1 @ X4 @ X2 ) @ X4 ) @ X2 )
      | ~ ( r2_hidden @ X4 @ ( k2_relat_1 @ X2 ) ) ) ),
    inference(simplify,[status(thm)],['13'])).

thf('50',plain,
    ( ( r2_hidden @ ( k4_tarski @ ( sk_D_1 @ sk_D_2 @ sk_C_1 ) @ sk_D_2 ) @ sk_C_1 )
   <= ( r2_hidden @ sk_D_2 @ ( k2_relset_1 @ sk_B_1 @ sk_A @ sk_C_1 ) ) ),
    inference('sup-',[status(thm)],['48','49'])).

thf('51',plain,(
    ! [X0: $i] :
      ( ( m1_subset_1 @ X0 @ ( k2_zfmisc_1 @ sk_B_1 @ sk_A ) )
      | ~ ( r2_hidden @ X0 @ sk_C_1 ) ) ),
    inference('sup-',[status(thm)],['16','17'])).

thf('52',plain,
    ( ( m1_subset_1 @ ( k4_tarski @ ( sk_D_1 @ sk_D_2 @ sk_C_1 ) @ sk_D_2 ) @ ( k2_zfmisc_1 @ sk_B_1 @ sk_A ) )
   <= ( r2_hidden @ sk_D_2 @ ( k2_relset_1 @ sk_B_1 @ sk_A @ sk_C_1 ) ) ),
    inference('sup-',[status(thm)],['50','51'])).

thf('53',plain,(
    ! [X18: $i,X19: $i] :
      ( ( r2_hidden @ X18 @ X19 )
      | ( v1_xboole_0 @ X19 )
      | ~ ( m1_subset_1 @ X18 @ X19 ) ) ),
    inference(cnf,[status(esa)],[t2_subset])).

thf('54',plain,
    ( ( ( v1_xboole_0 @ ( k2_zfmisc_1 @ sk_B_1 @ sk_A ) )
      | ( r2_hidden @ ( k4_tarski @ ( sk_D_1 @ sk_D_2 @ sk_C_1 ) @ sk_D_2 ) @ ( k2_zfmisc_1 @ sk_B_1 @ sk_A ) ) )
   <= ( r2_hidden @ sk_D_2 @ ( k2_relset_1 @ sk_B_1 @ sk_A @ sk_C_1 ) ) ),
    inference('sup-',[status(thm)],['52','53'])).

thf('55',plain,(
    ! [X11: $i,X12: $i,X13: $i,X14: $i] :
      ( ( r2_hidden @ X11 @ X12 )
      | ~ ( r2_hidden @ ( k4_tarski @ X11 @ X13 ) @ ( k2_zfmisc_1 @ X12 @ X14 ) ) ) ),
    inference(cnf,[status(esa)],[t106_zfmisc_1])).

thf('56',plain,
    ( ( ( v1_xboole_0 @ ( k2_zfmisc_1 @ sk_B_1 @ sk_A ) )
      | ( r2_hidden @ ( sk_D_1 @ sk_D_2 @ sk_C_1 ) @ sk_B_1 ) )
   <= ( r2_hidden @ sk_D_2 @ ( k2_relset_1 @ sk_B_1 @ sk_A @ sk_C_1 ) ) ),
    inference('sup-',[status(thm)],['54','55'])).

thf('57',plain,(
    ! [X16: $i,X17: $i] :
      ( ( m1_subset_1 @ X16 @ X17 )
      | ~ ( r2_hidden @ X16 @ X17 ) ) ),
    inference(cnf,[status(esa)],[t1_subset])).

thf('58',plain,
    ( ( ( v1_xboole_0 @ ( k2_zfmisc_1 @ sk_B_1 @ sk_A ) )
      | ( m1_subset_1 @ ( sk_D_1 @ sk_D_2 @ sk_C_1 ) @ sk_B_1 ) )
   <= ( r2_hidden @ sk_D_2 @ ( k2_relset_1 @ sk_B_1 @ sk_A @ sk_C_1 ) ) ),
    inference('sup-',[status(thm)],['56','57'])).

thf('59',plain,
    ( ( r2_hidden @ ( k4_tarski @ ( sk_D_1 @ sk_D_2 @ sk_C_1 ) @ sk_D_2 ) @ sk_C_1 )
   <= ( r2_hidden @ sk_D_2 @ ( k2_relset_1 @ sk_B_1 @ sk_A @ sk_C_1 ) ) ),
    inference('sup-',[status(thm)],['48','49'])).

thf('60',plain,
    ( ! [X25: $i] :
        ( ~ ( m1_subset_1 @ X25 @ sk_B_1 )
        | ~ ( r2_hidden @ ( k4_tarski @ X25 @ sk_D_2 ) @ sk_C_1 ) )
   <= ! [X25: $i] :
        ( ~ ( m1_subset_1 @ X25 @ sk_B_1 )
        | ~ ( r2_hidden @ ( k4_tarski @ X25 @ sk_D_2 ) @ sk_C_1 ) ) ),
    inference(split,[status(esa)],['8'])).

thf('61',plain,
    ( ~ ( m1_subset_1 @ ( sk_D_1 @ sk_D_2 @ sk_C_1 ) @ sk_B_1 )
   <= ( ! [X25: $i] :
          ( ~ ( m1_subset_1 @ X25 @ sk_B_1 )
          | ~ ( r2_hidden @ ( k4_tarski @ X25 @ sk_D_2 ) @ sk_C_1 ) )
      & ( r2_hidden @ sk_D_2 @ ( k2_relset_1 @ sk_B_1 @ sk_A @ sk_C_1 ) ) ) ),
    inference('sup-',[status(thm)],['59','60'])).

thf('62',plain,
    ( ( v1_xboole_0 @ ( k2_zfmisc_1 @ sk_B_1 @ sk_A ) )
   <= ( ! [X25: $i] :
          ( ~ ( m1_subset_1 @ X25 @ sk_B_1 )
          | ~ ( r2_hidden @ ( k4_tarski @ X25 @ sk_D_2 ) @ sk_C_1 ) )
      & ( r2_hidden @ sk_D_2 @ ( k2_relset_1 @ sk_B_1 @ sk_A @ sk_C_1 ) ) ) ),
    inference('sup-',[status(thm)],['58','61'])).

thf('63',plain,(
    ! [X0: $i,X1: $i] :
      ( ( v1_xboole_0 @ X0 )
      | ( v1_xboole_0 @ X1 )
      | ~ ( v1_xboole_0 @ ( k2_zfmisc_1 @ X1 @ X0 ) ) ) ),
    inference('sup-',[status(thm)],['36','37'])).

thf('64',plain,
    ( ( ( v1_xboole_0 @ sk_B_1 )
      | ( v1_xboole_0 @ sk_A ) )
   <= ( ! [X25: $i] :
          ( ~ ( m1_subset_1 @ X25 @ sk_B_1 )
          | ~ ( r2_hidden @ ( k4_tarski @ X25 @ sk_D_2 ) @ sk_C_1 ) )
      & ( r2_hidden @ sk_D_2 @ ( k2_relset_1 @ sk_B_1 @ sk_A @ sk_C_1 ) ) ) ),
    inference('sup-',[status(thm)],['62','63'])).

thf('65',plain,(
    ~ ( v1_xboole_0 @ sk_B_1 ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('66',plain,
    ( ( v1_xboole_0 @ sk_A )
   <= ( ! [X25: $i] :
          ( ~ ( m1_subset_1 @ X25 @ sk_B_1 )
          | ~ ( r2_hidden @ ( k4_tarski @ X25 @ sk_D_2 ) @ sk_C_1 ) )
      & ( r2_hidden @ sk_D_2 @ ( k2_relset_1 @ sk_B_1 @ sk_A @ sk_C_1 ) ) ) ),
    inference(clc,[status(thm)],['64','65'])).

thf('67',plain,(
    ~ ( v1_xboole_0 @ sk_A ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('68',plain,
    ( ~ ! [X25: $i] :
          ( ~ ( m1_subset_1 @ X25 @ sk_B_1 )
          | ~ ( r2_hidden @ ( k4_tarski @ X25 @ sk_D_2 ) @ sk_C_1 ) )
    | ~ ( r2_hidden @ sk_D_2 @ ( k2_relset_1 @ sk_B_1 @ sk_A @ sk_C_1 ) ) ),
    inference('sup-',[status(thm)],['66','67'])).

thf('69',plain,(
    $false ),
    inference('sat_resolution*',[status(thm)],['11','43','44','45','68'])).


%------------------------------------------------------------------------------
