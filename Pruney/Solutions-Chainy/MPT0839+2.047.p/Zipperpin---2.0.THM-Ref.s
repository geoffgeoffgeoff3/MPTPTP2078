%------------------------------------------------------------------------------
% File       : Zipperpin---2.0
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_portfolio.sh /export/starexec/sandbox2/benchmark/theBenchmark.p /export/starexec/sandbox2/tmp/tmp.g9tALSsHXB

% Computer   : n010.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 13:50:17 EST 2020

% Result     : Theorem 0.22s
% Output     : Refutation 0.22s
% Verified   : 
% Statistics : Number of formulae       :   91 ( 135 expanded)
%              Number of leaves         :   35 (  56 expanded)
%              Depth                    :   14
%              Number of atoms          :  604 (1277 expanded)
%              Number of equality atoms :   34 (  62 expanded)
%              Maximal formula depth    :   17 (   6 average)

% Comments   : 
%------------------------------------------------------------------------------
thf(m1_subset_1_type,type,(
    m1_subset_1: $i > $i > $o )).

thf(sk_C_2_type,type,(
    sk_C_2: $i )).

thf(r2_hidden_type,type,(
    r2_hidden: $i > $i > $o )).

thf(v4_relat_1_type,type,(
    v4_relat_1: $i > $i > $o )).

thf(k4_tarski_type,type,(
    k4_tarski: $i > $i > $i )).

thf(k1_xboole_0_type,type,(
    k1_xboole_0: $i )).

thf(sk_C_1_type,type,(
    sk_C_1: $i > $i > $i )).

thf(k1_zfmisc_1_type,type,(
    k1_zfmisc_1: $i > $i )).

thf(sk_A_type,type,(
    sk_A: $i )).

thf(k2_relset_1_type,type,(
    k2_relset_1: $i > $i > $i > $i )).

thf(sk_D_type,type,(
    sk_D: $i > $i > $i )).

thf(k2_zfmisc_1_type,type,(
    k2_zfmisc_1: $i > $i > $i )).

thf(v1_xboole_0_type,type,(
    v1_xboole_0: $i > $o )).

thf(v5_relat_1_type,type,(
    v5_relat_1: $i > $i > $o )).

thf(k1_relset_1_type,type,(
    k1_relset_1: $i > $i > $i > $i )).

thf(v1_relat_1_type,type,(
    v1_relat_1: $i > $o )).

thf(r1_tarski_type,type,(
    r1_tarski: $i > $i > $o )).

thf(k2_relat_1_type,type,(
    k2_relat_1: $i > $i )).

thf(k1_relat_1_type,type,(
    k1_relat_1: $i > $i )).

thf(sk_C_type,type,(
    sk_C: $i > $i > $i )).

thf(sk_B_type,type,(
    sk_B: $i )).

thf(d3_tarski,axiom,(
    ! [A: $i,B: $i] :
      ( ( r1_tarski @ A @ B )
    <=> ! [C: $i] :
          ( ( r2_hidden @ C @ A )
         => ( r2_hidden @ C @ B ) ) ) )).

thf('0',plain,(
    ! [X1: $i,X3: $i] :
      ( ( r1_tarski @ X1 @ X3 )
      | ( r2_hidden @ ( sk_C @ X3 @ X1 ) @ X1 ) ) ),
    inference(cnf,[status(esa)],[d3_tarski])).

thf(t50_relset_1,conjecture,(
    ! [A: $i] :
      ( ~ ( v1_xboole_0 @ A )
     => ! [B: $i] :
          ( ~ ( v1_xboole_0 @ B )
         => ! [C: $i] :
              ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ B @ A ) ) )
             => ~ ( ( ( k2_relset_1 @ B @ A @ C )
                   != k1_xboole_0 )
                  & ! [D: $i] :
                      ( ( m1_subset_1 @ D @ B )
                     => ~ ( r2_hidden @ D @ ( k1_relset_1 @ B @ A @ C ) ) ) ) ) ) ) )).

thf(zf_stmt_0,negated_conjecture,(
    ~ ! [A: $i] :
        ( ~ ( v1_xboole_0 @ A )
       => ! [B: $i] :
            ( ~ ( v1_xboole_0 @ B )
           => ! [C: $i] :
                ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ B @ A ) ) )
               => ~ ( ( ( k2_relset_1 @ B @ A @ C )
                     != k1_xboole_0 )
                    & ! [D: $i] :
                        ( ( m1_subset_1 @ D @ B )
                       => ~ ( r2_hidden @ D @ ( k1_relset_1 @ B @ A @ C ) ) ) ) ) ) ) ),
    inference('cnf.neg',[status(esa)],[t50_relset_1])).

thf('1',plain,(
    m1_subset_1 @ sk_C_2 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_B @ sk_A ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(cc2_relset_1,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) )
     => ( ( v4_relat_1 @ C @ A )
        & ( v5_relat_1 @ C @ B ) ) ) )).

thf('2',plain,(
    ! [X23: $i,X24: $i,X25: $i] :
      ( ( v4_relat_1 @ X23 @ X24 )
      | ~ ( m1_subset_1 @ X23 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X24 @ X25 ) ) ) ) ),
    inference(cnf,[status(esa)],[cc2_relset_1])).

thf('3',plain,(
    v4_relat_1 @ sk_C_2 @ sk_B ),
    inference('sup-',[status(thm)],['1','2'])).

thf(d18_relat_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( v1_relat_1 @ B )
     => ( ( v4_relat_1 @ B @ A )
      <=> ( r1_tarski @ ( k1_relat_1 @ B ) @ A ) ) ) )).

thf('4',plain,(
    ! [X9: $i,X10: $i] :
      ( ~ ( v4_relat_1 @ X9 @ X10 )
      | ( r1_tarski @ ( k1_relat_1 @ X9 ) @ X10 )
      | ~ ( v1_relat_1 @ X9 ) ) ),
    inference(cnf,[status(esa)],[d18_relat_1])).

thf('5',plain,
    ( ~ ( v1_relat_1 @ sk_C_2 )
    | ( r1_tarski @ ( k1_relat_1 @ sk_C_2 ) @ sk_B ) ),
    inference('sup-',[status(thm)],['3','4'])).

thf('6',plain,(
    m1_subset_1 @ sk_C_2 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_B @ sk_A ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(cc2_relat_1,axiom,(
    ! [A: $i] :
      ( ( v1_relat_1 @ A )
     => ! [B: $i] :
          ( ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ A ) )
         => ( v1_relat_1 @ B ) ) ) )).

thf('7',plain,(
    ! [X7: $i,X8: $i] :
      ( ~ ( m1_subset_1 @ X7 @ ( k1_zfmisc_1 @ X8 ) )
      | ( v1_relat_1 @ X7 )
      | ~ ( v1_relat_1 @ X8 ) ) ),
    inference(cnf,[status(esa)],[cc2_relat_1])).

thf('8',plain,
    ( ~ ( v1_relat_1 @ ( k2_zfmisc_1 @ sk_B @ sk_A ) )
    | ( v1_relat_1 @ sk_C_2 ) ),
    inference('sup-',[status(thm)],['6','7'])).

thf(fc6_relat_1,axiom,(
    ! [A: $i,B: $i] :
      ( v1_relat_1 @ ( k2_zfmisc_1 @ A @ B ) ) )).

thf('9',plain,(
    ! [X18: $i,X19: $i] :
      ( v1_relat_1 @ ( k2_zfmisc_1 @ X18 @ X19 ) ) ),
    inference(cnf,[status(esa)],[fc6_relat_1])).

thf('10',plain,(
    v1_relat_1 @ sk_C_2 ),
    inference(demod,[status(thm)],['8','9'])).

thf('11',plain,(
    r1_tarski @ ( k1_relat_1 @ sk_C_2 ) @ sk_B ),
    inference(demod,[status(thm)],['5','10'])).

thf('12',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( ~ ( r2_hidden @ X0 @ X1 )
      | ( r2_hidden @ X0 @ X2 )
      | ~ ( r1_tarski @ X1 @ X2 ) ) ),
    inference(cnf,[status(esa)],[d3_tarski])).

thf('13',plain,(
    ! [X0: $i] :
      ( ( r2_hidden @ X0 @ sk_B )
      | ~ ( r2_hidden @ X0 @ ( k1_relat_1 @ sk_C_2 ) ) ) ),
    inference('sup-',[status(thm)],['11','12'])).

thf('14',plain,(
    ! [X0: $i] :
      ( ( r1_tarski @ ( k1_relat_1 @ sk_C_2 ) @ X0 )
      | ( r2_hidden @ ( sk_C @ X0 @ ( k1_relat_1 @ sk_C_2 ) ) @ sk_B ) ) ),
    inference('sup-',[status(thm)],['0','13'])).

thf(t1_subset,axiom,(
    ! [A: $i,B: $i] :
      ( ( r2_hidden @ A @ B )
     => ( m1_subset_1 @ A @ B ) ) )).

thf('15',plain,(
    ! [X5: $i,X6: $i] :
      ( ( m1_subset_1 @ X5 @ X6 )
      | ~ ( r2_hidden @ X5 @ X6 ) ) ),
    inference(cnf,[status(esa)],[t1_subset])).

thf('16',plain,(
    ! [X0: $i] :
      ( ( r1_tarski @ ( k1_relat_1 @ sk_C_2 ) @ X0 )
      | ( m1_subset_1 @ ( sk_C @ X0 @ ( k1_relat_1 @ sk_C_2 ) ) @ sk_B ) ) ),
    inference('sup-',[status(thm)],['14','15'])).

thf('17',plain,(
    ! [X1: $i,X3: $i] :
      ( ( r1_tarski @ X1 @ X3 )
      | ( r2_hidden @ ( sk_C @ X3 @ X1 ) @ X1 ) ) ),
    inference(cnf,[status(esa)],[d3_tarski])).

thf('18',plain,(
    ! [X32: $i] :
      ( ~ ( r2_hidden @ X32 @ ( k1_relset_1 @ sk_B @ sk_A @ sk_C_2 ) )
      | ~ ( m1_subset_1 @ X32 @ sk_B ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('19',plain,(
    ! [X0: $i] :
      ( ( r1_tarski @ ( k1_relset_1 @ sk_B @ sk_A @ sk_C_2 ) @ X0 )
      | ~ ( m1_subset_1 @ ( sk_C @ X0 @ ( k1_relset_1 @ sk_B @ sk_A @ sk_C_2 ) ) @ sk_B ) ) ),
    inference('sup-',[status(thm)],['17','18'])).

thf('20',plain,(
    m1_subset_1 @ sk_C_2 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_B @ sk_A ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(redefinition_k1_relset_1,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) )
     => ( ( k1_relset_1 @ A @ B @ C )
        = ( k1_relat_1 @ C ) ) ) )).

thf('21',plain,(
    ! [X26: $i,X27: $i,X28: $i] :
      ( ( ( k1_relset_1 @ X27 @ X28 @ X26 )
        = ( k1_relat_1 @ X26 ) )
      | ~ ( m1_subset_1 @ X26 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X27 @ X28 ) ) ) ) ),
    inference(cnf,[status(esa)],[redefinition_k1_relset_1])).

thf('22',plain,
    ( ( k1_relset_1 @ sk_B @ sk_A @ sk_C_2 )
    = ( k1_relat_1 @ sk_C_2 ) ),
    inference('sup-',[status(thm)],['20','21'])).

thf('23',plain,
    ( ( k1_relset_1 @ sk_B @ sk_A @ sk_C_2 )
    = ( k1_relat_1 @ sk_C_2 ) ),
    inference('sup-',[status(thm)],['20','21'])).

thf('24',plain,(
    ! [X0: $i] :
      ( ( r1_tarski @ ( k1_relat_1 @ sk_C_2 ) @ X0 )
      | ~ ( m1_subset_1 @ ( sk_C @ X0 @ ( k1_relat_1 @ sk_C_2 ) ) @ sk_B ) ) ),
    inference(demod,[status(thm)],['19','22','23'])).

thf('25',plain,(
    ! [X0: $i] :
      ( r1_tarski @ ( k1_relat_1 @ sk_C_2 ) @ X0 ) ),
    inference(clc,[status(thm)],['16','24'])).

thf(d4_relat_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( B
        = ( k1_relat_1 @ A ) )
    <=> ! [C: $i] :
          ( ( r2_hidden @ C @ B )
        <=> ? [D: $i] :
              ( r2_hidden @ ( k4_tarski @ C @ D ) @ A ) ) ) )).

thf('26',plain,(
    ! [X13: $i,X16: $i] :
      ( ( X16
        = ( k1_relat_1 @ X13 ) )
      | ( r2_hidden @ ( k4_tarski @ ( sk_C_1 @ X16 @ X13 ) @ ( sk_D @ X16 @ X13 ) ) @ X13 )
      | ( r2_hidden @ ( sk_C_1 @ X16 @ X13 ) @ X16 ) ) ),
    inference(cnf,[status(esa)],[d4_relat_1])).

thf(t2_xboole_1,axiom,(
    ! [A: $i] :
      ( r1_tarski @ k1_xboole_0 @ A ) )).

thf('27',plain,(
    ! [X4: $i] :
      ( r1_tarski @ k1_xboole_0 @ X4 ) ),
    inference(cnf,[status(esa)],[t2_xboole_1])).

thf('28',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( ~ ( r2_hidden @ X0 @ X1 )
      | ( r2_hidden @ X0 @ X2 )
      | ~ ( r1_tarski @ X1 @ X2 ) ) ),
    inference(cnf,[status(esa)],[d3_tarski])).

thf('29',plain,(
    ! [X0: $i,X1: $i] :
      ( ( r2_hidden @ X1 @ X0 )
      | ~ ( r2_hidden @ X1 @ k1_xboole_0 ) ) ),
    inference('sup-',[status(thm)],['27','28'])).

thf('30',plain,(
    ! [X0: $i,X1: $i] :
      ( ( r2_hidden @ ( sk_C_1 @ X0 @ k1_xboole_0 ) @ X0 )
      | ( X0
        = ( k1_relat_1 @ k1_xboole_0 ) )
      | ( r2_hidden @ ( k4_tarski @ ( sk_C_1 @ X0 @ k1_xboole_0 ) @ ( sk_D @ X0 @ k1_xboole_0 ) ) @ X1 ) ) ),
    inference('sup-',[status(thm)],['26','29'])).

thf(t60_relat_1,axiom,
    ( ( ( k2_relat_1 @ k1_xboole_0 )
      = k1_xboole_0 )
    & ( ( k1_relat_1 @ k1_xboole_0 )
      = k1_xboole_0 ) )).

thf('31',plain,
    ( ( k1_relat_1 @ k1_xboole_0 )
    = k1_xboole_0 ),
    inference(cnf,[status(esa)],[t60_relat_1])).

thf('32',plain,(
    ! [X0: $i,X1: $i] :
      ( ( r2_hidden @ ( sk_C_1 @ X0 @ k1_xboole_0 ) @ X0 )
      | ( X0 = k1_xboole_0 )
      | ( r2_hidden @ ( k4_tarski @ ( sk_C_1 @ X0 @ k1_xboole_0 ) @ ( sk_D @ X0 @ k1_xboole_0 ) ) @ X1 ) ) ),
    inference(demod,[status(thm)],['30','31'])).

thf('33',plain,(
    ! [X32: $i] :
      ( ~ ( r2_hidden @ X32 @ ( k1_relset_1 @ sk_B @ sk_A @ sk_C_2 ) )
      | ~ ( m1_subset_1 @ X32 @ sk_B ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('34',plain,
    ( ( k1_relset_1 @ sk_B @ sk_A @ sk_C_2 )
    = ( k1_relat_1 @ sk_C_2 ) ),
    inference('sup-',[status(thm)],['20','21'])).

thf('35',plain,(
    ! [X32: $i] :
      ( ~ ( r2_hidden @ X32 @ ( k1_relat_1 @ sk_C_2 ) )
      | ~ ( m1_subset_1 @ X32 @ sk_B ) ) ),
    inference(demod,[status(thm)],['33','34'])).

thf('36',plain,(
    ! [X0: $i] :
      ( ( X0 = k1_xboole_0 )
      | ( r2_hidden @ ( sk_C_1 @ X0 @ k1_xboole_0 ) @ X0 )
      | ~ ( m1_subset_1 @ ( k4_tarski @ ( sk_C_1 @ X0 @ k1_xboole_0 ) @ ( sk_D @ X0 @ k1_xboole_0 ) ) @ sk_B ) ) ),
    inference('sup-',[status(thm)],['32','35'])).

thf('37',plain,(
    ! [X0: $i,X1: $i] :
      ( ( r2_hidden @ ( sk_C_1 @ X0 @ k1_xboole_0 ) @ X0 )
      | ( X0 = k1_xboole_0 )
      | ( r2_hidden @ ( k4_tarski @ ( sk_C_1 @ X0 @ k1_xboole_0 ) @ ( sk_D @ X0 @ k1_xboole_0 ) ) @ X1 ) ) ),
    inference(demod,[status(thm)],['30','31'])).

thf('38',plain,(
    ! [X5: $i,X6: $i] :
      ( ( m1_subset_1 @ X5 @ X6 )
      | ~ ( r2_hidden @ X5 @ X6 ) ) ),
    inference(cnf,[status(esa)],[t1_subset])).

thf('39',plain,(
    ! [X0: $i,X1: $i] :
      ( ( X1 = k1_xboole_0 )
      | ( r2_hidden @ ( sk_C_1 @ X1 @ k1_xboole_0 ) @ X1 )
      | ( m1_subset_1 @ ( k4_tarski @ ( sk_C_1 @ X1 @ k1_xboole_0 ) @ ( sk_D @ X1 @ k1_xboole_0 ) ) @ X0 ) ) ),
    inference('sup-',[status(thm)],['37','38'])).

thf('40',plain,(
    ! [X0: $i] :
      ( ( r2_hidden @ ( sk_C_1 @ X0 @ k1_xboole_0 ) @ X0 )
      | ( X0 = k1_xboole_0 ) ) ),
    inference(clc,[status(thm)],['36','39'])).

thf(t7_ordinal1,axiom,(
    ! [A: $i,B: $i] :
      ~ ( ( r2_hidden @ A @ B )
        & ( r1_tarski @ B @ A ) ) )).

thf('41',plain,(
    ! [X21: $i,X22: $i] :
      ( ~ ( r2_hidden @ X21 @ X22 )
      | ~ ( r1_tarski @ X22 @ X21 ) ) ),
    inference(cnf,[status(esa)],[t7_ordinal1])).

thf('42',plain,(
    ! [X0: $i] :
      ( ( X0 = k1_xboole_0 )
      | ~ ( r1_tarski @ X0 @ ( sk_C_1 @ X0 @ k1_xboole_0 ) ) ) ),
    inference('sup-',[status(thm)],['40','41'])).

thf('43',plain,
    ( ( k1_relat_1 @ sk_C_2 )
    = k1_xboole_0 ),
    inference('sup-',[status(thm)],['25','42'])).

thf(t65_relat_1,axiom,(
    ! [A: $i] :
      ( ( v1_relat_1 @ A )
     => ( ( ( k1_relat_1 @ A )
          = k1_xboole_0 )
      <=> ( ( k2_relat_1 @ A )
          = k1_xboole_0 ) ) ) )).

thf('44',plain,(
    ! [X20: $i] :
      ( ( ( k1_relat_1 @ X20 )
       != k1_xboole_0 )
      | ( ( k2_relat_1 @ X20 )
        = k1_xboole_0 )
      | ~ ( v1_relat_1 @ X20 ) ) ),
    inference(cnf,[status(esa)],[t65_relat_1])).

thf('45',plain,
    ( ( k1_xboole_0 != k1_xboole_0 )
    | ~ ( v1_relat_1 @ sk_C_2 )
    | ( ( k2_relat_1 @ sk_C_2 )
      = k1_xboole_0 ) ),
    inference('sup-',[status(thm)],['43','44'])).

thf('46',plain,(
    v1_relat_1 @ sk_C_2 ),
    inference(demod,[status(thm)],['8','9'])).

thf('47',plain,
    ( ( k1_xboole_0 != k1_xboole_0 )
    | ( ( k2_relat_1 @ sk_C_2 )
      = k1_xboole_0 ) ),
    inference(demod,[status(thm)],['45','46'])).

thf('48',plain,
    ( ( k2_relat_1 @ sk_C_2 )
    = k1_xboole_0 ),
    inference(simplify,[status(thm)],['47'])).

thf('49',plain,(
    ( k2_relset_1 @ sk_B @ sk_A @ sk_C_2 )
 != k1_xboole_0 ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('50',plain,(
    m1_subset_1 @ sk_C_2 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_B @ sk_A ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(redefinition_k2_relset_1,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) )
     => ( ( k2_relset_1 @ A @ B @ C )
        = ( k2_relat_1 @ C ) ) ) )).

thf('51',plain,(
    ! [X29: $i,X30: $i,X31: $i] :
      ( ( ( k2_relset_1 @ X30 @ X31 @ X29 )
        = ( k2_relat_1 @ X29 ) )
      | ~ ( m1_subset_1 @ X29 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X30 @ X31 ) ) ) ) ),
    inference(cnf,[status(esa)],[redefinition_k2_relset_1])).

thf('52',plain,
    ( ( k2_relset_1 @ sk_B @ sk_A @ sk_C_2 )
    = ( k2_relat_1 @ sk_C_2 ) ),
    inference('sup-',[status(thm)],['50','51'])).

thf('53',plain,(
    ( k2_relat_1 @ sk_C_2 )
 != k1_xboole_0 ),
    inference(demod,[status(thm)],['49','52'])).

thf('54',plain,(
    $false ),
    inference('simplify_reflect-',[status(thm)],['48','53'])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.03/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.13/0.13  % Command    : run_portfolio.sh /export/starexec/sandbox2/benchmark/theBenchmark.p /export/starexec/sandbox2/tmp/tmp.g9tALSsHXB
% 0.14/0.34  % Computer   : n010.cluster.edu
% 0.14/0.34  % Model      : x86_64 x86_64
% 0.14/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.14/0.34  % Memory     : 8042.1875MB
% 0.14/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.14/0.34  % CPULimit   : 60
% 0.14/0.34  % DateTime   : Tue Dec  1 18:34:44 EST 2020
% 0.14/0.34  % CPUTime    : 
% 0.14/0.34  % Running portfolio for 600 s
% 0.14/0.34  % File         : /export/starexec/sandbox2/benchmark/theBenchmark.p
% 0.20/0.35  % Number of cores: 8
% 0.20/0.35  % Python version: Python 3.6.8
% 0.20/0.35  % Running in FO mode
% 0.22/0.51  % Running /export/starexec/sandbox2/solver/bin/fo/fo7.sh for 78
% 0.22/0.51  % Solved by: fo/fo7.sh
% 0.22/0.51  To remain in the chosen logic fragment, unification with booleans has been disabled.
% 0.22/0.51  % done 78 iterations in 0.056s
% 0.22/0.51  % SZS status Theorem for '/export/starexec/sandbox2/benchmark/theBenchmark.p'
% 0.22/0.51  % SZS output start Refutation
% 0.22/0.51  thf(m1_subset_1_type, type, m1_subset_1: $i > $i > $o).
% 0.22/0.51  thf(sk_C_2_type, type, sk_C_2: $i).
% 0.22/0.51  thf(r2_hidden_type, type, r2_hidden: $i > $i > $o).
% 0.22/0.51  thf(v4_relat_1_type, type, v4_relat_1: $i > $i > $o).
% 0.22/0.51  thf(k4_tarski_type, type, k4_tarski: $i > $i > $i).
% 0.22/0.51  thf(k1_xboole_0_type, type, k1_xboole_0: $i).
% 0.22/0.51  thf(sk_C_1_type, type, sk_C_1: $i > $i > $i).
% 0.22/0.51  thf(k1_zfmisc_1_type, type, k1_zfmisc_1: $i > $i).
% 0.22/0.51  thf(sk_A_type, type, sk_A: $i).
% 0.22/0.51  thf(k2_relset_1_type, type, k2_relset_1: $i > $i > $i > $i).
% 0.22/0.51  thf(sk_D_type, type, sk_D: $i > $i > $i).
% 0.22/0.51  thf(k2_zfmisc_1_type, type, k2_zfmisc_1: $i > $i > $i).
% 0.22/0.51  thf(v1_xboole_0_type, type, v1_xboole_0: $i > $o).
% 0.22/0.51  thf(v5_relat_1_type, type, v5_relat_1: $i > $i > $o).
% 0.22/0.51  thf(k1_relset_1_type, type, k1_relset_1: $i > $i > $i > $i).
% 0.22/0.51  thf(v1_relat_1_type, type, v1_relat_1: $i > $o).
% 0.22/0.51  thf(r1_tarski_type, type, r1_tarski: $i > $i > $o).
% 0.22/0.51  thf(k2_relat_1_type, type, k2_relat_1: $i > $i).
% 0.22/0.51  thf(k1_relat_1_type, type, k1_relat_1: $i > $i).
% 0.22/0.51  thf(sk_C_type, type, sk_C: $i > $i > $i).
% 0.22/0.51  thf(sk_B_type, type, sk_B: $i).
% 0.22/0.51  thf(d3_tarski, axiom,
% 0.22/0.51    (![A:$i,B:$i]:
% 0.22/0.51     ( ( r1_tarski @ A @ B ) <=>
% 0.22/0.51       ( ![C:$i]: ( ( r2_hidden @ C @ A ) => ( r2_hidden @ C @ B ) ) ) ))).
% 0.22/0.51  thf('0', plain,
% 0.22/0.51      (![X1 : $i, X3 : $i]:
% 0.22/0.51         ((r1_tarski @ X1 @ X3) | (r2_hidden @ (sk_C @ X3 @ X1) @ X1))),
% 0.22/0.51      inference('cnf', [status(esa)], [d3_tarski])).
% 0.22/0.51  thf(t50_relset_1, conjecture,
% 0.22/0.51    (![A:$i]:
% 0.22/0.51     ( ( ~( v1_xboole_0 @ A ) ) =>
% 0.22/0.51       ( ![B:$i]:
% 0.22/0.51         ( ( ~( v1_xboole_0 @ B ) ) =>
% 0.22/0.51           ( ![C:$i]:
% 0.22/0.51             ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ B @ A ) ) ) =>
% 0.22/0.51               ( ~( ( ( k2_relset_1 @ B @ A @ C ) != ( k1_xboole_0 ) ) & 
% 0.22/0.51                    ( ![D:$i]:
% 0.22/0.51                      ( ( m1_subset_1 @ D @ B ) =>
% 0.22/0.51                        ( ~( r2_hidden @ D @ ( k1_relset_1 @ B @ A @ C ) ) ) ) ) ) ) ) ) ) ) ))).
% 0.22/0.51  thf(zf_stmt_0, negated_conjecture,
% 0.22/0.51    (~( ![A:$i]:
% 0.22/0.51        ( ( ~( v1_xboole_0 @ A ) ) =>
% 0.22/0.51          ( ![B:$i]:
% 0.22/0.51            ( ( ~( v1_xboole_0 @ B ) ) =>
% 0.22/0.51              ( ![C:$i]:
% 0.22/0.51                ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ B @ A ) ) ) =>
% 0.22/0.51                  ( ~( ( ( k2_relset_1 @ B @ A @ C ) != ( k1_xboole_0 ) ) & 
% 0.22/0.51                       ( ![D:$i]:
% 0.22/0.51                         ( ( m1_subset_1 @ D @ B ) =>
% 0.22/0.51                           ( ~( r2_hidden @ D @ ( k1_relset_1 @ B @ A @ C ) ) ) ) ) ) ) ) ) ) ) ) )),
% 0.22/0.51    inference('cnf.neg', [status(esa)], [t50_relset_1])).
% 0.22/0.51  thf('1', plain,
% 0.22/0.51      ((m1_subset_1 @ sk_C_2 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_B @ sk_A)))),
% 0.22/0.51      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.22/0.51  thf(cc2_relset_1, axiom,
% 0.22/0.51    (![A:$i,B:$i,C:$i]:
% 0.22/0.51     ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) =>
% 0.22/0.51       ( ( v4_relat_1 @ C @ A ) & ( v5_relat_1 @ C @ B ) ) ))).
% 0.22/0.51  thf('2', plain,
% 0.22/0.51      (![X23 : $i, X24 : $i, X25 : $i]:
% 0.22/0.51         ((v4_relat_1 @ X23 @ X24)
% 0.22/0.51          | ~ (m1_subset_1 @ X23 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X24 @ X25))))),
% 0.22/0.51      inference('cnf', [status(esa)], [cc2_relset_1])).
% 0.22/0.51  thf('3', plain, ((v4_relat_1 @ sk_C_2 @ sk_B)),
% 0.22/0.51      inference('sup-', [status(thm)], ['1', '2'])).
% 0.22/0.51  thf(d18_relat_1, axiom,
% 0.22/0.51    (![A:$i,B:$i]:
% 0.22/0.51     ( ( v1_relat_1 @ B ) =>
% 0.22/0.51       ( ( v4_relat_1 @ B @ A ) <=> ( r1_tarski @ ( k1_relat_1 @ B ) @ A ) ) ))).
% 0.22/0.51  thf('4', plain,
% 0.22/0.51      (![X9 : $i, X10 : $i]:
% 0.22/0.51         (~ (v4_relat_1 @ X9 @ X10)
% 0.22/0.51          | (r1_tarski @ (k1_relat_1 @ X9) @ X10)
% 0.22/0.51          | ~ (v1_relat_1 @ X9))),
% 0.22/0.51      inference('cnf', [status(esa)], [d18_relat_1])).
% 0.22/0.51  thf('5', plain,
% 0.22/0.51      ((~ (v1_relat_1 @ sk_C_2) | (r1_tarski @ (k1_relat_1 @ sk_C_2) @ sk_B))),
% 0.22/0.51      inference('sup-', [status(thm)], ['3', '4'])).
% 0.22/0.51  thf('6', plain,
% 0.22/0.51      ((m1_subset_1 @ sk_C_2 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_B @ sk_A)))),
% 0.22/0.51      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.22/0.51  thf(cc2_relat_1, axiom,
% 0.22/0.51    (![A:$i]:
% 0.22/0.51     ( ( v1_relat_1 @ A ) =>
% 0.22/0.51       ( ![B:$i]:
% 0.22/0.51         ( ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ A ) ) => ( v1_relat_1 @ B ) ) ) ))).
% 0.22/0.51  thf('7', plain,
% 0.22/0.51      (![X7 : $i, X8 : $i]:
% 0.22/0.51         (~ (m1_subset_1 @ X7 @ (k1_zfmisc_1 @ X8))
% 0.22/0.51          | (v1_relat_1 @ X7)
% 0.22/0.51          | ~ (v1_relat_1 @ X8))),
% 0.22/0.51      inference('cnf', [status(esa)], [cc2_relat_1])).
% 0.22/0.51  thf('8', plain,
% 0.22/0.51      ((~ (v1_relat_1 @ (k2_zfmisc_1 @ sk_B @ sk_A)) | (v1_relat_1 @ sk_C_2))),
% 0.22/0.51      inference('sup-', [status(thm)], ['6', '7'])).
% 0.22/0.51  thf(fc6_relat_1, axiom,
% 0.22/0.51    (![A:$i,B:$i]: ( v1_relat_1 @ ( k2_zfmisc_1 @ A @ B ) ))).
% 0.22/0.51  thf('9', plain,
% 0.22/0.51      (![X18 : $i, X19 : $i]: (v1_relat_1 @ (k2_zfmisc_1 @ X18 @ X19))),
% 0.22/0.51      inference('cnf', [status(esa)], [fc6_relat_1])).
% 0.22/0.51  thf('10', plain, ((v1_relat_1 @ sk_C_2)),
% 0.22/0.51      inference('demod', [status(thm)], ['8', '9'])).
% 0.22/0.51  thf('11', plain, ((r1_tarski @ (k1_relat_1 @ sk_C_2) @ sk_B)),
% 0.22/0.51      inference('demod', [status(thm)], ['5', '10'])).
% 0.22/0.51  thf('12', plain,
% 0.22/0.51      (![X0 : $i, X1 : $i, X2 : $i]:
% 0.22/0.51         (~ (r2_hidden @ X0 @ X1)
% 0.22/0.51          | (r2_hidden @ X0 @ X2)
% 0.22/0.51          | ~ (r1_tarski @ X1 @ X2))),
% 0.22/0.51      inference('cnf', [status(esa)], [d3_tarski])).
% 0.22/0.51  thf('13', plain,
% 0.22/0.51      (![X0 : $i]:
% 0.22/0.51         ((r2_hidden @ X0 @ sk_B) | ~ (r2_hidden @ X0 @ (k1_relat_1 @ sk_C_2)))),
% 0.22/0.51      inference('sup-', [status(thm)], ['11', '12'])).
% 0.22/0.51  thf('14', plain,
% 0.22/0.51      (![X0 : $i]:
% 0.22/0.51         ((r1_tarski @ (k1_relat_1 @ sk_C_2) @ X0)
% 0.22/0.51          | (r2_hidden @ (sk_C @ X0 @ (k1_relat_1 @ sk_C_2)) @ sk_B))),
% 0.22/0.51      inference('sup-', [status(thm)], ['0', '13'])).
% 0.22/0.51  thf(t1_subset, axiom,
% 0.22/0.51    (![A:$i,B:$i]: ( ( r2_hidden @ A @ B ) => ( m1_subset_1 @ A @ B ) ))).
% 0.22/0.51  thf('15', plain,
% 0.22/0.51      (![X5 : $i, X6 : $i]: ((m1_subset_1 @ X5 @ X6) | ~ (r2_hidden @ X5 @ X6))),
% 0.22/0.51      inference('cnf', [status(esa)], [t1_subset])).
% 0.22/0.51  thf('16', plain,
% 0.22/0.51      (![X0 : $i]:
% 0.22/0.51         ((r1_tarski @ (k1_relat_1 @ sk_C_2) @ X0)
% 0.22/0.51          | (m1_subset_1 @ (sk_C @ X0 @ (k1_relat_1 @ sk_C_2)) @ sk_B))),
% 0.22/0.51      inference('sup-', [status(thm)], ['14', '15'])).
% 0.22/0.51  thf('17', plain,
% 0.22/0.51      (![X1 : $i, X3 : $i]:
% 0.22/0.51         ((r1_tarski @ X1 @ X3) | (r2_hidden @ (sk_C @ X3 @ X1) @ X1))),
% 0.22/0.51      inference('cnf', [status(esa)], [d3_tarski])).
% 0.22/0.51  thf('18', plain,
% 0.22/0.51      (![X32 : $i]:
% 0.22/0.51         (~ (r2_hidden @ X32 @ (k1_relset_1 @ sk_B @ sk_A @ sk_C_2))
% 0.22/0.51          | ~ (m1_subset_1 @ X32 @ sk_B))),
% 0.22/0.51      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.22/0.51  thf('19', plain,
% 0.22/0.51      (![X0 : $i]:
% 0.22/0.51         ((r1_tarski @ (k1_relset_1 @ sk_B @ sk_A @ sk_C_2) @ X0)
% 0.22/0.51          | ~ (m1_subset_1 @ 
% 0.22/0.51               (sk_C @ X0 @ (k1_relset_1 @ sk_B @ sk_A @ sk_C_2)) @ sk_B))),
% 0.22/0.51      inference('sup-', [status(thm)], ['17', '18'])).
% 0.22/0.51  thf('20', plain,
% 0.22/0.51      ((m1_subset_1 @ sk_C_2 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_B @ sk_A)))),
% 0.22/0.51      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.22/0.51  thf(redefinition_k1_relset_1, axiom,
% 0.22/0.51    (![A:$i,B:$i,C:$i]:
% 0.22/0.51     ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) =>
% 0.22/0.51       ( ( k1_relset_1 @ A @ B @ C ) = ( k1_relat_1 @ C ) ) ))).
% 0.22/0.51  thf('21', plain,
% 0.22/0.51      (![X26 : $i, X27 : $i, X28 : $i]:
% 0.22/0.51         (((k1_relset_1 @ X27 @ X28 @ X26) = (k1_relat_1 @ X26))
% 0.22/0.51          | ~ (m1_subset_1 @ X26 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X27 @ X28))))),
% 0.22/0.51      inference('cnf', [status(esa)], [redefinition_k1_relset_1])).
% 0.22/0.51  thf('22', plain,
% 0.22/0.51      (((k1_relset_1 @ sk_B @ sk_A @ sk_C_2) = (k1_relat_1 @ sk_C_2))),
% 0.22/0.51      inference('sup-', [status(thm)], ['20', '21'])).
% 0.22/0.51  thf('23', plain,
% 0.22/0.51      (((k1_relset_1 @ sk_B @ sk_A @ sk_C_2) = (k1_relat_1 @ sk_C_2))),
% 0.22/0.51      inference('sup-', [status(thm)], ['20', '21'])).
% 0.22/0.51  thf('24', plain,
% 0.22/0.51      (![X0 : $i]:
% 0.22/0.51         ((r1_tarski @ (k1_relat_1 @ sk_C_2) @ X0)
% 0.22/0.51          | ~ (m1_subset_1 @ (sk_C @ X0 @ (k1_relat_1 @ sk_C_2)) @ sk_B))),
% 0.22/0.51      inference('demod', [status(thm)], ['19', '22', '23'])).
% 0.22/0.51  thf('25', plain, (![X0 : $i]: (r1_tarski @ (k1_relat_1 @ sk_C_2) @ X0)),
% 0.22/0.51      inference('clc', [status(thm)], ['16', '24'])).
% 0.22/0.51  thf(d4_relat_1, axiom,
% 0.22/0.51    (![A:$i,B:$i]:
% 0.22/0.51     ( ( ( B ) = ( k1_relat_1 @ A ) ) <=>
% 0.22/0.51       ( ![C:$i]:
% 0.22/0.51         ( ( r2_hidden @ C @ B ) <=>
% 0.22/0.51           ( ?[D:$i]: ( r2_hidden @ ( k4_tarski @ C @ D ) @ A ) ) ) ) ))).
% 0.22/0.51  thf('26', plain,
% 0.22/0.51      (![X13 : $i, X16 : $i]:
% 0.22/0.51         (((X16) = (k1_relat_1 @ X13))
% 0.22/0.51          | (r2_hidden @ 
% 0.22/0.51             (k4_tarski @ (sk_C_1 @ X16 @ X13) @ (sk_D @ X16 @ X13)) @ X13)
% 0.22/0.51          | (r2_hidden @ (sk_C_1 @ X16 @ X13) @ X16))),
% 0.22/0.51      inference('cnf', [status(esa)], [d4_relat_1])).
% 0.22/0.51  thf(t2_xboole_1, axiom, (![A:$i]: ( r1_tarski @ k1_xboole_0 @ A ))).
% 0.22/0.51  thf('27', plain, (![X4 : $i]: (r1_tarski @ k1_xboole_0 @ X4)),
% 0.22/0.51      inference('cnf', [status(esa)], [t2_xboole_1])).
% 0.22/0.51  thf('28', plain,
% 0.22/0.51      (![X0 : $i, X1 : $i, X2 : $i]:
% 0.22/0.51         (~ (r2_hidden @ X0 @ X1)
% 0.22/0.51          | (r2_hidden @ X0 @ X2)
% 0.22/0.51          | ~ (r1_tarski @ X1 @ X2))),
% 0.22/0.51      inference('cnf', [status(esa)], [d3_tarski])).
% 0.22/0.51  thf('29', plain,
% 0.22/0.51      (![X0 : $i, X1 : $i]:
% 0.22/0.51         ((r2_hidden @ X1 @ X0) | ~ (r2_hidden @ X1 @ k1_xboole_0))),
% 0.22/0.51      inference('sup-', [status(thm)], ['27', '28'])).
% 0.22/0.51  thf('30', plain,
% 0.22/0.51      (![X0 : $i, X1 : $i]:
% 0.22/0.51         ((r2_hidden @ (sk_C_1 @ X0 @ k1_xboole_0) @ X0)
% 0.22/0.51          | ((X0) = (k1_relat_1 @ k1_xboole_0))
% 0.22/0.51          | (r2_hidden @ 
% 0.22/0.51             (k4_tarski @ (sk_C_1 @ X0 @ k1_xboole_0) @ 
% 0.22/0.51              (sk_D @ X0 @ k1_xboole_0)) @ 
% 0.22/0.51             X1))),
% 0.22/0.51      inference('sup-', [status(thm)], ['26', '29'])).
% 0.22/0.51  thf(t60_relat_1, axiom,
% 0.22/0.51    (( ( k2_relat_1 @ k1_xboole_0 ) = ( k1_xboole_0 ) ) & 
% 0.22/0.51     ( ( k1_relat_1 @ k1_xboole_0 ) = ( k1_xboole_0 ) ))).
% 0.22/0.51  thf('31', plain, (((k1_relat_1 @ k1_xboole_0) = (k1_xboole_0))),
% 0.22/0.51      inference('cnf', [status(esa)], [t60_relat_1])).
% 0.22/0.51  thf('32', plain,
% 0.22/0.51      (![X0 : $i, X1 : $i]:
% 0.22/0.51         ((r2_hidden @ (sk_C_1 @ X0 @ k1_xboole_0) @ X0)
% 0.22/0.51          | ((X0) = (k1_xboole_0))
% 0.22/0.51          | (r2_hidden @ 
% 0.22/0.51             (k4_tarski @ (sk_C_1 @ X0 @ k1_xboole_0) @ 
% 0.22/0.51              (sk_D @ X0 @ k1_xboole_0)) @ 
% 0.22/0.51             X1))),
% 0.22/0.51      inference('demod', [status(thm)], ['30', '31'])).
% 0.22/0.51  thf('33', plain,
% 0.22/0.51      (![X32 : $i]:
% 0.22/0.51         (~ (r2_hidden @ X32 @ (k1_relset_1 @ sk_B @ sk_A @ sk_C_2))
% 0.22/0.51          | ~ (m1_subset_1 @ X32 @ sk_B))),
% 0.22/0.51      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.22/0.51  thf('34', plain,
% 0.22/0.51      (((k1_relset_1 @ sk_B @ sk_A @ sk_C_2) = (k1_relat_1 @ sk_C_2))),
% 0.22/0.51      inference('sup-', [status(thm)], ['20', '21'])).
% 0.22/0.51  thf('35', plain,
% 0.22/0.51      (![X32 : $i]:
% 0.22/0.51         (~ (r2_hidden @ X32 @ (k1_relat_1 @ sk_C_2))
% 0.22/0.51          | ~ (m1_subset_1 @ X32 @ sk_B))),
% 0.22/0.51      inference('demod', [status(thm)], ['33', '34'])).
% 0.22/0.51  thf('36', plain,
% 0.22/0.51      (![X0 : $i]:
% 0.22/0.51         (((X0) = (k1_xboole_0))
% 0.22/0.51          | (r2_hidden @ (sk_C_1 @ X0 @ k1_xboole_0) @ X0)
% 0.22/0.51          | ~ (m1_subset_1 @ 
% 0.22/0.51               (k4_tarski @ (sk_C_1 @ X0 @ k1_xboole_0) @ 
% 0.22/0.51                (sk_D @ X0 @ k1_xboole_0)) @ 
% 0.22/0.51               sk_B))),
% 0.22/0.51      inference('sup-', [status(thm)], ['32', '35'])).
% 0.22/0.51  thf('37', plain,
% 0.22/0.51      (![X0 : $i, X1 : $i]:
% 0.22/0.51         ((r2_hidden @ (sk_C_1 @ X0 @ k1_xboole_0) @ X0)
% 0.22/0.51          | ((X0) = (k1_xboole_0))
% 0.22/0.51          | (r2_hidden @ 
% 0.22/0.51             (k4_tarski @ (sk_C_1 @ X0 @ k1_xboole_0) @ 
% 0.22/0.51              (sk_D @ X0 @ k1_xboole_0)) @ 
% 0.22/0.51             X1))),
% 0.22/0.51      inference('demod', [status(thm)], ['30', '31'])).
% 0.22/0.51  thf('38', plain,
% 0.22/0.51      (![X5 : $i, X6 : $i]: ((m1_subset_1 @ X5 @ X6) | ~ (r2_hidden @ X5 @ X6))),
% 0.22/0.51      inference('cnf', [status(esa)], [t1_subset])).
% 0.22/0.51  thf('39', plain,
% 0.22/0.51      (![X0 : $i, X1 : $i]:
% 0.22/0.51         (((X1) = (k1_xboole_0))
% 0.22/0.51          | (r2_hidden @ (sk_C_1 @ X1 @ k1_xboole_0) @ X1)
% 0.22/0.51          | (m1_subset_1 @ 
% 0.22/0.51             (k4_tarski @ (sk_C_1 @ X1 @ k1_xboole_0) @ 
% 0.22/0.51              (sk_D @ X1 @ k1_xboole_0)) @ 
% 0.22/0.51             X0))),
% 0.22/0.51      inference('sup-', [status(thm)], ['37', '38'])).
% 0.22/0.51  thf('40', plain,
% 0.22/0.51      (![X0 : $i]:
% 0.22/0.51         ((r2_hidden @ (sk_C_1 @ X0 @ k1_xboole_0) @ X0)
% 0.22/0.51          | ((X0) = (k1_xboole_0)))),
% 0.22/0.51      inference('clc', [status(thm)], ['36', '39'])).
% 0.22/0.51  thf(t7_ordinal1, axiom,
% 0.22/0.51    (![A:$i,B:$i]: ( ~( ( r2_hidden @ A @ B ) & ( r1_tarski @ B @ A ) ) ))).
% 0.22/0.51  thf('41', plain,
% 0.22/0.51      (![X21 : $i, X22 : $i]:
% 0.22/0.51         (~ (r2_hidden @ X21 @ X22) | ~ (r1_tarski @ X22 @ X21))),
% 0.22/0.51      inference('cnf', [status(esa)], [t7_ordinal1])).
% 0.22/0.51  thf('42', plain,
% 0.22/0.51      (![X0 : $i]:
% 0.22/0.51         (((X0) = (k1_xboole_0))
% 0.22/0.51          | ~ (r1_tarski @ X0 @ (sk_C_1 @ X0 @ k1_xboole_0)))),
% 0.22/0.51      inference('sup-', [status(thm)], ['40', '41'])).
% 0.22/0.51  thf('43', plain, (((k1_relat_1 @ sk_C_2) = (k1_xboole_0))),
% 0.22/0.51      inference('sup-', [status(thm)], ['25', '42'])).
% 0.22/0.51  thf(t65_relat_1, axiom,
% 0.22/0.51    (![A:$i]:
% 0.22/0.51     ( ( v1_relat_1 @ A ) =>
% 0.22/0.51       ( ( ( k1_relat_1 @ A ) = ( k1_xboole_0 ) ) <=>
% 0.22/0.51         ( ( k2_relat_1 @ A ) = ( k1_xboole_0 ) ) ) ))).
% 0.22/0.51  thf('44', plain,
% 0.22/0.51      (![X20 : $i]:
% 0.22/0.51         (((k1_relat_1 @ X20) != (k1_xboole_0))
% 0.22/0.51          | ((k2_relat_1 @ X20) = (k1_xboole_0))
% 0.22/0.51          | ~ (v1_relat_1 @ X20))),
% 0.22/0.51      inference('cnf', [status(esa)], [t65_relat_1])).
% 0.22/0.51  thf('45', plain,
% 0.22/0.51      ((((k1_xboole_0) != (k1_xboole_0))
% 0.22/0.51        | ~ (v1_relat_1 @ sk_C_2)
% 0.22/0.51        | ((k2_relat_1 @ sk_C_2) = (k1_xboole_0)))),
% 0.22/0.51      inference('sup-', [status(thm)], ['43', '44'])).
% 0.22/0.51  thf('46', plain, ((v1_relat_1 @ sk_C_2)),
% 0.22/0.51      inference('demod', [status(thm)], ['8', '9'])).
% 0.22/0.51  thf('47', plain,
% 0.22/0.51      ((((k1_xboole_0) != (k1_xboole_0))
% 0.22/0.51        | ((k2_relat_1 @ sk_C_2) = (k1_xboole_0)))),
% 0.22/0.51      inference('demod', [status(thm)], ['45', '46'])).
% 0.22/0.51  thf('48', plain, (((k2_relat_1 @ sk_C_2) = (k1_xboole_0))),
% 0.22/0.51      inference('simplify', [status(thm)], ['47'])).
% 0.22/0.51  thf('49', plain, (((k2_relset_1 @ sk_B @ sk_A @ sk_C_2) != (k1_xboole_0))),
% 0.22/0.51      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.22/0.51  thf('50', plain,
% 0.22/0.51      ((m1_subset_1 @ sk_C_2 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_B @ sk_A)))),
% 0.22/0.51      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.22/0.51  thf(redefinition_k2_relset_1, axiom,
% 0.22/0.51    (![A:$i,B:$i,C:$i]:
% 0.22/0.51     ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) =>
% 0.22/0.51       ( ( k2_relset_1 @ A @ B @ C ) = ( k2_relat_1 @ C ) ) ))).
% 0.22/0.51  thf('51', plain,
% 0.22/0.51      (![X29 : $i, X30 : $i, X31 : $i]:
% 0.22/0.51         (((k2_relset_1 @ X30 @ X31 @ X29) = (k2_relat_1 @ X29))
% 0.22/0.51          | ~ (m1_subset_1 @ X29 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X30 @ X31))))),
% 0.22/0.51      inference('cnf', [status(esa)], [redefinition_k2_relset_1])).
% 0.22/0.51  thf('52', plain,
% 0.22/0.51      (((k2_relset_1 @ sk_B @ sk_A @ sk_C_2) = (k2_relat_1 @ sk_C_2))),
% 0.22/0.51      inference('sup-', [status(thm)], ['50', '51'])).
% 0.22/0.51  thf('53', plain, (((k2_relat_1 @ sk_C_2) != (k1_xboole_0))),
% 0.22/0.51      inference('demod', [status(thm)], ['49', '52'])).
% 0.22/0.51  thf('54', plain, ($false),
% 0.22/0.51      inference('simplify_reflect-', [status(thm)], ['48', '53'])).
% 0.22/0.51  
% 0.22/0.51  % SZS output end Refutation
% 0.22/0.51  
% 0.22/0.52  % Zipperpin 1.5 exiting
%------------------------------------------------------------------------------
