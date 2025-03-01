%------------------------------------------------------------------------------
% File       : Zipperpin---2.0
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_portfolio.sh /export/starexec/sandbox2/benchmark/theBenchmark.p /export/starexec/sandbox2/tmp/tmp.WYUXedgGEf

% Computer   : n013.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 13:49:47 EST 2020

% Result     : Theorem 0.24s
% Output     : Refutation 0.24s
% Verified   : 
% Statistics : Number of formulae       :   88 ( 162 expanded)
%              Number of leaves         :   26 (  58 expanded)
%              Depth                    :   14
%              Number of atoms          :  908 (2608 expanded)
%              Number of equality atoms :   67 ( 165 expanded)
%              Maximal formula depth    :   13 (   7 average)

% Comments   : 
%------------------------------------------------------------------------------
thf(k1_relset_1_type,type,(
    k1_relset_1: $i > $i > $i > $i )).

thf(sk_C_type,type,(
    sk_C: $i )).

thf(k1_zfmisc_1_type,type,(
    k1_zfmisc_1: $i > $i )).

thf(m1_subset_1_type,type,(
    m1_subset_1: $i > $i > $o )).

thf(sk_B_type,type,(
    sk_B: $i )).

thf(sk_A_type,type,(
    sk_A: $i )).

thf(k9_relat_1_type,type,(
    k9_relat_1: $i > $i > $i )).

thf(r1_tarski_type,type,(
    r1_tarski: $i > $i > $o )).

thf(k8_relset_1_type,type,(
    k8_relset_1: $i > $i > $i > $i > $i )).

thf(v1_relat_1_type,type,(
    v1_relat_1: $i > $o )).

thf(k7_relset_1_type,type,(
    k7_relset_1: $i > $i > $i > $i > $i )).

thf(k2_relset_1_type,type,(
    k2_relset_1: $i > $i > $i > $i )).

thf(k2_zfmisc_1_type,type,(
    k2_zfmisc_1: $i > $i > $i )).

thf(k1_relat_1_type,type,(
    k1_relat_1: $i > $i )).

thf(k2_relat_1_type,type,(
    k2_relat_1: $i > $i )).

thf(k10_relat_1_type,type,(
    k10_relat_1: $i > $i > $i )).

thf(t39_relset_1,conjecture,(
    ! [A: $i,B: $i,C: $i] :
      ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ B @ A ) ) )
     => ( ( ( k7_relset_1 @ B @ A @ C @ ( k8_relset_1 @ B @ A @ C @ A ) )
          = ( k2_relset_1 @ B @ A @ C ) )
        & ( ( k8_relset_1 @ B @ A @ C @ ( k7_relset_1 @ B @ A @ C @ B ) )
          = ( k1_relset_1 @ B @ A @ C ) ) ) ) )).

thf(zf_stmt_0,negated_conjecture,(
    ~ ! [A: $i,B: $i,C: $i] :
        ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ B @ A ) ) )
       => ( ( ( k7_relset_1 @ B @ A @ C @ ( k8_relset_1 @ B @ A @ C @ A ) )
            = ( k2_relset_1 @ B @ A @ C ) )
          & ( ( k8_relset_1 @ B @ A @ C @ ( k7_relset_1 @ B @ A @ C @ B ) )
            = ( k1_relset_1 @ B @ A @ C ) ) ) ) ),
    inference('cnf.neg',[status(esa)],[t39_relset_1])).

thf('0',plain,
    ( ( ( k7_relset_1 @ sk_B @ sk_A @ sk_C @ ( k8_relset_1 @ sk_B @ sk_A @ sk_C @ sk_A ) )
     != ( k2_relset_1 @ sk_B @ sk_A @ sk_C ) )
    | ( ( k8_relset_1 @ sk_B @ sk_A @ sk_C @ ( k7_relset_1 @ sk_B @ sk_A @ sk_C @ sk_B ) )
     != ( k1_relset_1 @ sk_B @ sk_A @ sk_C ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('1',plain,
    ( ( ( k7_relset_1 @ sk_B @ sk_A @ sk_C @ ( k8_relset_1 @ sk_B @ sk_A @ sk_C @ sk_A ) )
     != ( k2_relset_1 @ sk_B @ sk_A @ sk_C ) )
   <= ( ( k7_relset_1 @ sk_B @ sk_A @ sk_C @ ( k8_relset_1 @ sk_B @ sk_A @ sk_C @ sk_A ) )
     != ( k2_relset_1 @ sk_B @ sk_A @ sk_C ) ) ),
    inference(split,[status(esa)],['0'])).

thf('2',plain,(
    m1_subset_1 @ sk_C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_B @ sk_A ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(redefinition_k8_relset_1,axiom,(
    ! [A: $i,B: $i,C: $i,D: $i] :
      ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) )
     => ( ( k8_relset_1 @ A @ B @ C @ D )
        = ( k10_relat_1 @ C @ D ) ) ) )).

thf('3',plain,(
    ! [X17: $i,X18: $i,X19: $i,X20: $i] :
      ( ~ ( m1_subset_1 @ X17 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X18 @ X19 ) ) )
      | ( ( k8_relset_1 @ X18 @ X19 @ X17 @ X20 )
        = ( k10_relat_1 @ X17 @ X20 ) ) ) ),
    inference(cnf,[status(esa)],[redefinition_k8_relset_1])).

thf('4',plain,(
    ! [X0: $i] :
      ( ( k8_relset_1 @ sk_B @ sk_A @ sk_C @ X0 )
      = ( k10_relat_1 @ sk_C @ X0 ) ) ),
    inference('sup-',[status(thm)],['2','3'])).

thf('5',plain,(
    m1_subset_1 @ sk_C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_B @ sk_A ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(redefinition_k7_relset_1,axiom,(
    ! [A: $i,B: $i,C: $i,D: $i] :
      ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) )
     => ( ( k7_relset_1 @ A @ B @ C @ D )
        = ( k9_relat_1 @ C @ D ) ) ) )).

thf('6',plain,(
    ! [X13: $i,X14: $i,X15: $i,X16: $i] :
      ( ~ ( m1_subset_1 @ X13 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X14 @ X15 ) ) )
      | ( ( k7_relset_1 @ X14 @ X15 @ X13 @ X16 )
        = ( k9_relat_1 @ X13 @ X16 ) ) ) ),
    inference(cnf,[status(esa)],[redefinition_k7_relset_1])).

thf('7',plain,(
    ! [X0: $i] :
      ( ( k7_relset_1 @ sk_B @ sk_A @ sk_C @ X0 )
      = ( k9_relat_1 @ sk_C @ X0 ) ) ),
    inference('sup-',[status(thm)],['5','6'])).

thf('8',plain,(
    m1_subset_1 @ sk_C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_B @ sk_A ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(redefinition_k2_relset_1,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) )
     => ( ( k2_relset_1 @ A @ B @ C )
        = ( k2_relat_1 @ C ) ) ) )).

thf('9',plain,(
    ! [X10: $i,X11: $i,X12: $i] :
      ( ( ( k2_relset_1 @ X11 @ X12 @ X10 )
        = ( k2_relat_1 @ X10 ) )
      | ~ ( m1_subset_1 @ X10 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X11 @ X12 ) ) ) ) ),
    inference(cnf,[status(esa)],[redefinition_k2_relset_1])).

thf('10',plain,
    ( ( k2_relset_1 @ sk_B @ sk_A @ sk_C )
    = ( k2_relat_1 @ sk_C ) ),
    inference('sup-',[status(thm)],['8','9'])).

thf('11',plain,
    ( ( ( k9_relat_1 @ sk_C @ ( k10_relat_1 @ sk_C @ sk_A ) )
     != ( k2_relat_1 @ sk_C ) )
   <= ( ( k7_relset_1 @ sk_B @ sk_A @ sk_C @ ( k8_relset_1 @ sk_B @ sk_A @ sk_C @ sk_A ) )
     != ( k2_relset_1 @ sk_B @ sk_A @ sk_C ) ) ),
    inference(demod,[status(thm)],['1','4','7','10'])).

thf(t169_relat_1,axiom,(
    ! [A: $i] :
      ( ( v1_relat_1 @ A )
     => ( ( k10_relat_1 @ A @ ( k2_relat_1 @ A ) )
        = ( k1_relat_1 @ A ) ) ) )).

thf('12',plain,(
    ! [X3: $i] :
      ( ( ( k10_relat_1 @ X3 @ ( k2_relat_1 @ X3 ) )
        = ( k1_relat_1 @ X3 ) )
      | ~ ( v1_relat_1 @ X3 ) ) ),
    inference(cnf,[status(esa)],[t169_relat_1])).

thf('13',plain,(
    m1_subset_1 @ sk_C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_B @ sk_A ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(t38_relset_1,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) )
     => ( ( ( k7_relset_1 @ A @ B @ C @ A )
          = ( k2_relset_1 @ A @ B @ C ) )
        & ( ( k8_relset_1 @ A @ B @ C @ B )
          = ( k1_relset_1 @ A @ B @ C ) ) ) ) )).

thf('14',plain,(
    ! [X25: $i,X26: $i,X27: $i] :
      ( ( ( k7_relset_1 @ X25 @ X26 @ X27 @ X25 )
        = ( k2_relset_1 @ X25 @ X26 @ X27 ) )
      | ~ ( m1_subset_1 @ X27 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X25 @ X26 ) ) ) ) ),
    inference(cnf,[status(esa)],[t38_relset_1])).

thf('15',plain,
    ( ( k7_relset_1 @ sk_B @ sk_A @ sk_C @ sk_B )
    = ( k2_relset_1 @ sk_B @ sk_A @ sk_C ) ),
    inference('sup-',[status(thm)],['13','14'])).

thf('16',plain,(
    ! [X0: $i] :
      ( ( k7_relset_1 @ sk_B @ sk_A @ sk_C @ X0 )
      = ( k9_relat_1 @ sk_C @ X0 ) ) ),
    inference('sup-',[status(thm)],['5','6'])).

thf('17',plain,
    ( ( k2_relset_1 @ sk_B @ sk_A @ sk_C )
    = ( k2_relat_1 @ sk_C ) ),
    inference('sup-',[status(thm)],['8','9'])).

thf('18',plain,
    ( ( k9_relat_1 @ sk_C @ sk_B )
    = ( k2_relat_1 @ sk_C ) ),
    inference(demod,[status(thm)],['15','16','17'])).

thf('19',plain,(
    ! [X0: $i] :
      ( ( k8_relset_1 @ sk_B @ sk_A @ sk_C @ X0 )
      = ( k10_relat_1 @ sk_C @ X0 ) ) ),
    inference('sup-',[status(thm)],['2','3'])).

thf('20',plain,(
    ! [X0: $i] :
      ( ( k7_relset_1 @ sk_B @ sk_A @ sk_C @ X0 )
      = ( k9_relat_1 @ sk_C @ X0 ) ) ),
    inference('sup-',[status(thm)],['5','6'])).

thf('21',plain,
    ( ( ( k8_relset_1 @ sk_B @ sk_A @ sk_C @ ( k7_relset_1 @ sk_B @ sk_A @ sk_C @ sk_B ) )
     != ( k1_relset_1 @ sk_B @ sk_A @ sk_C ) )
   <= ( ( k8_relset_1 @ sk_B @ sk_A @ sk_C @ ( k7_relset_1 @ sk_B @ sk_A @ sk_C @ sk_B ) )
     != ( k1_relset_1 @ sk_B @ sk_A @ sk_C ) ) ),
    inference(split,[status(esa)],['0'])).

thf('22',plain,
    ( ( ( k8_relset_1 @ sk_B @ sk_A @ sk_C @ ( k9_relat_1 @ sk_C @ sk_B ) )
     != ( k1_relset_1 @ sk_B @ sk_A @ sk_C ) )
   <= ( ( k8_relset_1 @ sk_B @ sk_A @ sk_C @ ( k7_relset_1 @ sk_B @ sk_A @ sk_C @ sk_B ) )
     != ( k1_relset_1 @ sk_B @ sk_A @ sk_C ) ) ),
    inference('sup-',[status(thm)],['20','21'])).

thf('23',plain,(
    m1_subset_1 @ sk_C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_B @ sk_A ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(redefinition_k1_relset_1,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) )
     => ( ( k1_relset_1 @ A @ B @ C )
        = ( k1_relat_1 @ C ) ) ) )).

thf('24',plain,(
    ! [X7: $i,X8: $i,X9: $i] :
      ( ( ( k1_relset_1 @ X8 @ X9 @ X7 )
        = ( k1_relat_1 @ X7 ) )
      | ~ ( m1_subset_1 @ X7 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X8 @ X9 ) ) ) ) ),
    inference(cnf,[status(esa)],[redefinition_k1_relset_1])).

thf('25',plain,
    ( ( k1_relset_1 @ sk_B @ sk_A @ sk_C )
    = ( k1_relat_1 @ sk_C ) ),
    inference('sup-',[status(thm)],['23','24'])).

thf('26',plain,
    ( ( ( k8_relset_1 @ sk_B @ sk_A @ sk_C @ ( k9_relat_1 @ sk_C @ sk_B ) )
     != ( k1_relat_1 @ sk_C ) )
   <= ( ( k8_relset_1 @ sk_B @ sk_A @ sk_C @ ( k7_relset_1 @ sk_B @ sk_A @ sk_C @ sk_B ) )
     != ( k1_relset_1 @ sk_B @ sk_A @ sk_C ) ) ),
    inference(demod,[status(thm)],['22','25'])).

thf('27',plain,
    ( ( ( k10_relat_1 @ sk_C @ ( k9_relat_1 @ sk_C @ sk_B ) )
     != ( k1_relat_1 @ sk_C ) )
   <= ( ( k8_relset_1 @ sk_B @ sk_A @ sk_C @ ( k7_relset_1 @ sk_B @ sk_A @ sk_C @ sk_B ) )
     != ( k1_relset_1 @ sk_B @ sk_A @ sk_C ) ) ),
    inference('sup-',[status(thm)],['19','26'])).

thf('28',plain,
    ( ( ( k10_relat_1 @ sk_C @ ( k2_relat_1 @ sk_C ) )
     != ( k1_relat_1 @ sk_C ) )
   <= ( ( k8_relset_1 @ sk_B @ sk_A @ sk_C @ ( k7_relset_1 @ sk_B @ sk_A @ sk_C @ sk_B ) )
     != ( k1_relset_1 @ sk_B @ sk_A @ sk_C ) ) ),
    inference('sup-',[status(thm)],['18','27'])).

thf('29',plain,
    ( ( ( ( k1_relat_1 @ sk_C )
       != ( k1_relat_1 @ sk_C ) )
      | ~ ( v1_relat_1 @ sk_C ) )
   <= ( ( k8_relset_1 @ sk_B @ sk_A @ sk_C @ ( k7_relset_1 @ sk_B @ sk_A @ sk_C @ sk_B ) )
     != ( k1_relset_1 @ sk_B @ sk_A @ sk_C ) ) ),
    inference('sup-',[status(thm)],['12','28'])).

thf('30',plain,(
    m1_subset_1 @ sk_C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_B @ sk_A ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(cc1_relset_1,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) )
     => ( v1_relat_1 @ C ) ) )).

thf('31',plain,(
    ! [X4: $i,X5: $i,X6: $i] :
      ( ( v1_relat_1 @ X4 )
      | ~ ( m1_subset_1 @ X4 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X5 @ X6 ) ) ) ) ),
    inference(cnf,[status(esa)],[cc1_relset_1])).

thf('32',plain,(
    v1_relat_1 @ sk_C ),
    inference('sup-',[status(thm)],['30','31'])).

thf('33',plain,
    ( ( ( k1_relat_1 @ sk_C )
     != ( k1_relat_1 @ sk_C ) )
   <= ( ( k8_relset_1 @ sk_B @ sk_A @ sk_C @ ( k7_relset_1 @ sk_B @ sk_A @ sk_C @ sk_B ) )
     != ( k1_relset_1 @ sk_B @ sk_A @ sk_C ) ) ),
    inference(demod,[status(thm)],['29','32'])).

thf('34',plain,
    ( ( k8_relset_1 @ sk_B @ sk_A @ sk_C @ ( k7_relset_1 @ sk_B @ sk_A @ sk_C @ sk_B ) )
    = ( k1_relset_1 @ sk_B @ sk_A @ sk_C ) ),
    inference(simplify,[status(thm)],['33'])).

thf('35',plain,
    ( ( ( k7_relset_1 @ sk_B @ sk_A @ sk_C @ ( k8_relset_1 @ sk_B @ sk_A @ sk_C @ sk_A ) )
     != ( k2_relset_1 @ sk_B @ sk_A @ sk_C ) )
    | ( ( k8_relset_1 @ sk_B @ sk_A @ sk_C @ ( k7_relset_1 @ sk_B @ sk_A @ sk_C @ sk_B ) )
     != ( k1_relset_1 @ sk_B @ sk_A @ sk_C ) ) ),
    inference(split,[status(esa)],['0'])).

thf('36',plain,(
    ( k7_relset_1 @ sk_B @ sk_A @ sk_C @ ( k8_relset_1 @ sk_B @ sk_A @ sk_C @ sk_A ) )
 != ( k2_relset_1 @ sk_B @ sk_A @ sk_C ) ),
    inference('sat_resolution*',[status(thm)],['34','35'])).

thf('37',plain,(
    ( k9_relat_1 @ sk_C @ ( k10_relat_1 @ sk_C @ sk_A ) )
 != ( k2_relat_1 @ sk_C ) ),
    inference(simpl_trail,[status(thm)],['11','36'])).

thf('38',plain,(
    m1_subset_1 @ sk_C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_B @ sk_A ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('39',plain,(
    ! [X25: $i,X26: $i,X27: $i] :
      ( ( ( k8_relset_1 @ X25 @ X26 @ X27 @ X26 )
        = ( k1_relset_1 @ X25 @ X26 @ X27 ) )
      | ~ ( m1_subset_1 @ X27 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X25 @ X26 ) ) ) ) ),
    inference(cnf,[status(esa)],[t38_relset_1])).

thf('40',plain,
    ( ( k8_relset_1 @ sk_B @ sk_A @ sk_C @ sk_A )
    = ( k1_relset_1 @ sk_B @ sk_A @ sk_C ) ),
    inference('sup-',[status(thm)],['38','39'])).

thf('41',plain,(
    ! [X0: $i] :
      ( ( k8_relset_1 @ sk_B @ sk_A @ sk_C @ X0 )
      = ( k10_relat_1 @ sk_C @ X0 ) ) ),
    inference('sup-',[status(thm)],['2','3'])).

thf('42',plain,
    ( ( k1_relset_1 @ sk_B @ sk_A @ sk_C )
    = ( k1_relat_1 @ sk_C ) ),
    inference('sup-',[status(thm)],['23','24'])).

thf('43',plain,
    ( ( k10_relat_1 @ sk_C @ sk_A )
    = ( k1_relat_1 @ sk_C ) ),
    inference(demod,[status(thm)],['40','41','42'])).

thf(d10_xboole_0,axiom,(
    ! [A: $i,B: $i] :
      ( ( A = B )
    <=> ( ( r1_tarski @ A @ B )
        & ( r1_tarski @ B @ A ) ) ) )).

thf('44',plain,(
    ! [X0: $i,X1: $i] :
      ( ( r1_tarski @ X0 @ X1 )
      | ( X0 != X1 ) ) ),
    inference(cnf,[status(esa)],[d10_xboole_0])).

thf('45',plain,(
    ! [X1: $i] :
      ( r1_tarski @ X1 @ X1 ) ),
    inference(simplify,[status(thm)],['44'])).

thf('46',plain,(
    m1_subset_1 @ sk_C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_B @ sk_A ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(t13_relset_1,axiom,(
    ! [A: $i,B: $i,C: $i,D: $i] :
      ( ( m1_subset_1 @ D @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ C ) ) )
     => ( ( r1_tarski @ ( k1_relat_1 @ D ) @ B )
       => ( m1_subset_1 @ D @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ B @ C ) ) ) ) ) )).

thf('47',plain,(
    ! [X21: $i,X22: $i,X23: $i,X24: $i] :
      ( ~ ( r1_tarski @ ( k1_relat_1 @ X21 ) @ X22 )
      | ( m1_subset_1 @ X21 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X22 @ X23 ) ) )
      | ~ ( m1_subset_1 @ X21 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X24 @ X23 ) ) ) ) ),
    inference(cnf,[status(esa)],[t13_relset_1])).

thf('48',plain,(
    ! [X0: $i] :
      ( ( m1_subset_1 @ sk_C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X0 @ sk_A ) ) )
      | ~ ( r1_tarski @ ( k1_relat_1 @ sk_C ) @ X0 ) ) ),
    inference('sup-',[status(thm)],['46','47'])).

thf('49',plain,(
    m1_subset_1 @ sk_C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ ( k1_relat_1 @ sk_C ) @ sk_A ) ) ),
    inference('sup-',[status(thm)],['45','48'])).

thf('50',plain,(
    ! [X25: $i,X26: $i,X27: $i] :
      ( ( ( k7_relset_1 @ X25 @ X26 @ X27 @ X25 )
        = ( k2_relset_1 @ X25 @ X26 @ X27 ) )
      | ~ ( m1_subset_1 @ X27 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X25 @ X26 ) ) ) ) ),
    inference(cnf,[status(esa)],[t38_relset_1])).

thf('51',plain,
    ( ( k7_relset_1 @ ( k1_relat_1 @ sk_C ) @ sk_A @ sk_C @ ( k1_relat_1 @ sk_C ) )
    = ( k2_relset_1 @ ( k1_relat_1 @ sk_C ) @ sk_A @ sk_C ) ),
    inference('sup-',[status(thm)],['49','50'])).

thf('52',plain,(
    m1_subset_1 @ sk_C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ ( k1_relat_1 @ sk_C ) @ sk_A ) ) ),
    inference('sup-',[status(thm)],['45','48'])).

thf('53',plain,(
    ! [X13: $i,X14: $i,X15: $i,X16: $i] :
      ( ~ ( m1_subset_1 @ X13 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X14 @ X15 ) ) )
      | ( ( k7_relset_1 @ X14 @ X15 @ X13 @ X16 )
        = ( k9_relat_1 @ X13 @ X16 ) ) ) ),
    inference(cnf,[status(esa)],[redefinition_k7_relset_1])).

thf('54',plain,(
    ! [X0: $i] :
      ( ( k7_relset_1 @ ( k1_relat_1 @ sk_C ) @ sk_A @ sk_C @ X0 )
      = ( k9_relat_1 @ sk_C @ X0 ) ) ),
    inference('sup-',[status(thm)],['52','53'])).

thf('55',plain,(
    m1_subset_1 @ sk_C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ ( k1_relat_1 @ sk_C ) @ sk_A ) ) ),
    inference('sup-',[status(thm)],['45','48'])).

thf('56',plain,(
    ! [X10: $i,X11: $i,X12: $i] :
      ( ( ( k2_relset_1 @ X11 @ X12 @ X10 )
        = ( k2_relat_1 @ X10 ) )
      | ~ ( m1_subset_1 @ X10 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X11 @ X12 ) ) ) ) ),
    inference(cnf,[status(esa)],[redefinition_k2_relset_1])).

thf('57',plain,
    ( ( k2_relset_1 @ ( k1_relat_1 @ sk_C ) @ sk_A @ sk_C )
    = ( k2_relat_1 @ sk_C ) ),
    inference('sup-',[status(thm)],['55','56'])).

thf('58',plain,
    ( ( k9_relat_1 @ sk_C @ ( k1_relat_1 @ sk_C ) )
    = ( k2_relat_1 @ sk_C ) ),
    inference(demod,[status(thm)],['51','54','57'])).

thf('59',plain,(
    ( k2_relat_1 @ sk_C )
 != ( k2_relat_1 @ sk_C ) ),
    inference(demod,[status(thm)],['37','43','58'])).

thf('60',plain,(
    $false ),
    inference(simplify,[status(thm)],['59'])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.00/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.13/0.14  % Command    : run_portfolio.sh /export/starexec/sandbox2/benchmark/theBenchmark.p /export/starexec/sandbox2/tmp/tmp.WYUXedgGEf
% 0.15/0.37  % Computer   : n013.cluster.edu
% 0.15/0.37  % Model      : x86_64 x86_64
% 0.15/0.37  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.15/0.37  % Memory     : 8042.1875MB
% 0.15/0.37  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.15/0.37  % CPULimit   : 60
% 0.15/0.37  % DateTime   : Tue Dec  1 17:09:10 EST 2020
% 0.15/0.37  % CPUTime    : 
% 0.15/0.37  % Running portfolio for 600 s
% 0.15/0.37  % File         : /export/starexec/sandbox2/benchmark/theBenchmark.p
% 0.15/0.38  % Number of cores: 8
% 0.15/0.38  % Python version: Python 3.6.8
% 0.15/0.38  % Running in FO mode
% 0.24/0.51  % Running /export/starexec/sandbox2/solver/bin/fo/fo7.sh for 78
% 0.24/0.51  % Solved by: fo/fo7.sh
% 0.24/0.51  To remain in the chosen logic fragment, unification with booleans has been disabled.
% 0.24/0.51  % done 45 iterations in 0.021s
% 0.24/0.51  % SZS status Theorem for '/export/starexec/sandbox2/benchmark/theBenchmark.p'
% 0.24/0.51  % SZS output start Refutation
% 0.24/0.51  thf(k1_relset_1_type, type, k1_relset_1: $i > $i > $i > $i).
% 0.24/0.51  thf(sk_C_type, type, sk_C: $i).
% 0.24/0.51  thf(k1_zfmisc_1_type, type, k1_zfmisc_1: $i > $i).
% 0.24/0.51  thf(m1_subset_1_type, type, m1_subset_1: $i > $i > $o).
% 0.24/0.51  thf(sk_B_type, type, sk_B: $i).
% 0.24/0.51  thf(sk_A_type, type, sk_A: $i).
% 0.24/0.51  thf(k9_relat_1_type, type, k9_relat_1: $i > $i > $i).
% 0.24/0.51  thf(r1_tarski_type, type, r1_tarski: $i > $i > $o).
% 0.24/0.51  thf(k8_relset_1_type, type, k8_relset_1: $i > $i > $i > $i > $i).
% 0.24/0.51  thf(v1_relat_1_type, type, v1_relat_1: $i > $o).
% 0.24/0.51  thf(k7_relset_1_type, type, k7_relset_1: $i > $i > $i > $i > $i).
% 0.24/0.51  thf(k2_relset_1_type, type, k2_relset_1: $i > $i > $i > $i).
% 0.24/0.51  thf(k2_zfmisc_1_type, type, k2_zfmisc_1: $i > $i > $i).
% 0.24/0.51  thf(k1_relat_1_type, type, k1_relat_1: $i > $i).
% 0.24/0.51  thf(k2_relat_1_type, type, k2_relat_1: $i > $i).
% 0.24/0.51  thf(k10_relat_1_type, type, k10_relat_1: $i > $i > $i).
% 0.24/0.51  thf(t39_relset_1, conjecture,
% 0.24/0.51    (![A:$i,B:$i,C:$i]:
% 0.24/0.51     ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ B @ A ) ) ) =>
% 0.24/0.51       ( ( ( k7_relset_1 @ B @ A @ C @ ( k8_relset_1 @ B @ A @ C @ A ) ) =
% 0.24/0.51           ( k2_relset_1 @ B @ A @ C ) ) & 
% 0.24/0.51         ( ( k8_relset_1 @ B @ A @ C @ ( k7_relset_1 @ B @ A @ C @ B ) ) =
% 0.24/0.51           ( k1_relset_1 @ B @ A @ C ) ) ) ))).
% 0.24/0.51  thf(zf_stmt_0, negated_conjecture,
% 0.24/0.51    (~( ![A:$i,B:$i,C:$i]:
% 0.24/0.51        ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ B @ A ) ) ) =>
% 0.24/0.51          ( ( ( k7_relset_1 @ B @ A @ C @ ( k8_relset_1 @ B @ A @ C @ A ) ) =
% 0.24/0.51              ( k2_relset_1 @ B @ A @ C ) ) & 
% 0.24/0.51            ( ( k8_relset_1 @ B @ A @ C @ ( k7_relset_1 @ B @ A @ C @ B ) ) =
% 0.24/0.51              ( k1_relset_1 @ B @ A @ C ) ) ) ) )),
% 0.24/0.51    inference('cnf.neg', [status(esa)], [t39_relset_1])).
% 0.24/0.51  thf('0', plain,
% 0.24/0.51      ((((k7_relset_1 @ sk_B @ sk_A @ sk_C @ 
% 0.24/0.51          (k8_relset_1 @ sk_B @ sk_A @ sk_C @ sk_A))
% 0.24/0.51          != (k2_relset_1 @ sk_B @ sk_A @ sk_C))
% 0.24/0.51        | ((k8_relset_1 @ sk_B @ sk_A @ sk_C @ 
% 0.24/0.51            (k7_relset_1 @ sk_B @ sk_A @ sk_C @ sk_B))
% 0.24/0.51            != (k1_relset_1 @ sk_B @ sk_A @ sk_C)))),
% 0.24/0.51      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.24/0.51  thf('1', plain,
% 0.24/0.51      ((((k7_relset_1 @ sk_B @ sk_A @ sk_C @ 
% 0.24/0.51          (k8_relset_1 @ sk_B @ sk_A @ sk_C @ sk_A))
% 0.24/0.51          != (k2_relset_1 @ sk_B @ sk_A @ sk_C)))
% 0.24/0.51         <= (~
% 0.24/0.51             (((k7_relset_1 @ sk_B @ sk_A @ sk_C @ 
% 0.24/0.51                (k8_relset_1 @ sk_B @ sk_A @ sk_C @ sk_A))
% 0.24/0.51                = (k2_relset_1 @ sk_B @ sk_A @ sk_C))))),
% 0.24/0.51      inference('split', [status(esa)], ['0'])).
% 0.24/0.51  thf('2', plain,
% 0.24/0.51      ((m1_subset_1 @ sk_C @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_B @ sk_A)))),
% 0.24/0.51      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.24/0.51  thf(redefinition_k8_relset_1, axiom,
% 0.24/0.51    (![A:$i,B:$i,C:$i,D:$i]:
% 0.24/0.51     ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) =>
% 0.24/0.51       ( ( k8_relset_1 @ A @ B @ C @ D ) = ( k10_relat_1 @ C @ D ) ) ))).
% 0.24/0.51  thf('3', plain,
% 0.24/0.51      (![X17 : $i, X18 : $i, X19 : $i, X20 : $i]:
% 0.24/0.51         (~ (m1_subset_1 @ X17 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X18 @ X19)))
% 0.24/0.51          | ((k8_relset_1 @ X18 @ X19 @ X17 @ X20) = (k10_relat_1 @ X17 @ X20)))),
% 0.24/0.51      inference('cnf', [status(esa)], [redefinition_k8_relset_1])).
% 0.24/0.51  thf('4', plain,
% 0.24/0.51      (![X0 : $i]:
% 0.24/0.51         ((k8_relset_1 @ sk_B @ sk_A @ sk_C @ X0) = (k10_relat_1 @ sk_C @ X0))),
% 0.24/0.51      inference('sup-', [status(thm)], ['2', '3'])).
% 0.24/0.51  thf('5', plain,
% 0.24/0.51      ((m1_subset_1 @ sk_C @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_B @ sk_A)))),
% 0.24/0.51      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.24/0.51  thf(redefinition_k7_relset_1, axiom,
% 0.24/0.51    (![A:$i,B:$i,C:$i,D:$i]:
% 0.24/0.51     ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) =>
% 0.24/0.51       ( ( k7_relset_1 @ A @ B @ C @ D ) = ( k9_relat_1 @ C @ D ) ) ))).
% 0.24/0.51  thf('6', plain,
% 0.24/0.51      (![X13 : $i, X14 : $i, X15 : $i, X16 : $i]:
% 0.24/0.51         (~ (m1_subset_1 @ X13 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X14 @ X15)))
% 0.24/0.51          | ((k7_relset_1 @ X14 @ X15 @ X13 @ X16) = (k9_relat_1 @ X13 @ X16)))),
% 0.24/0.51      inference('cnf', [status(esa)], [redefinition_k7_relset_1])).
% 0.24/0.51  thf('7', plain,
% 0.24/0.51      (![X0 : $i]:
% 0.24/0.51         ((k7_relset_1 @ sk_B @ sk_A @ sk_C @ X0) = (k9_relat_1 @ sk_C @ X0))),
% 0.24/0.51      inference('sup-', [status(thm)], ['5', '6'])).
% 0.24/0.51  thf('8', plain,
% 0.24/0.51      ((m1_subset_1 @ sk_C @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_B @ sk_A)))),
% 0.24/0.51      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.24/0.51  thf(redefinition_k2_relset_1, axiom,
% 0.24/0.51    (![A:$i,B:$i,C:$i]:
% 0.24/0.51     ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) =>
% 0.24/0.51       ( ( k2_relset_1 @ A @ B @ C ) = ( k2_relat_1 @ C ) ) ))).
% 0.24/0.51  thf('9', plain,
% 0.24/0.51      (![X10 : $i, X11 : $i, X12 : $i]:
% 0.24/0.51         (((k2_relset_1 @ X11 @ X12 @ X10) = (k2_relat_1 @ X10))
% 0.24/0.51          | ~ (m1_subset_1 @ X10 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X11 @ X12))))),
% 0.24/0.51      inference('cnf', [status(esa)], [redefinition_k2_relset_1])).
% 0.24/0.51  thf('10', plain,
% 0.24/0.51      (((k2_relset_1 @ sk_B @ sk_A @ sk_C) = (k2_relat_1 @ sk_C))),
% 0.24/0.51      inference('sup-', [status(thm)], ['8', '9'])).
% 0.24/0.51  thf('11', plain,
% 0.24/0.51      ((((k9_relat_1 @ sk_C @ (k10_relat_1 @ sk_C @ sk_A))
% 0.24/0.51          != (k2_relat_1 @ sk_C)))
% 0.24/0.51         <= (~
% 0.24/0.51             (((k7_relset_1 @ sk_B @ sk_A @ sk_C @ 
% 0.24/0.51                (k8_relset_1 @ sk_B @ sk_A @ sk_C @ sk_A))
% 0.24/0.51                = (k2_relset_1 @ sk_B @ sk_A @ sk_C))))),
% 0.24/0.51      inference('demod', [status(thm)], ['1', '4', '7', '10'])).
% 0.24/0.51  thf(t169_relat_1, axiom,
% 0.24/0.51    (![A:$i]:
% 0.24/0.51     ( ( v1_relat_1 @ A ) =>
% 0.24/0.51       ( ( k10_relat_1 @ A @ ( k2_relat_1 @ A ) ) = ( k1_relat_1 @ A ) ) ))).
% 0.24/0.51  thf('12', plain,
% 0.24/0.51      (![X3 : $i]:
% 0.24/0.51         (((k10_relat_1 @ X3 @ (k2_relat_1 @ X3)) = (k1_relat_1 @ X3))
% 0.24/0.51          | ~ (v1_relat_1 @ X3))),
% 0.24/0.51      inference('cnf', [status(esa)], [t169_relat_1])).
% 0.24/0.51  thf('13', plain,
% 0.24/0.51      ((m1_subset_1 @ sk_C @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_B @ sk_A)))),
% 0.24/0.51      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.24/0.51  thf(t38_relset_1, axiom,
% 0.24/0.51    (![A:$i,B:$i,C:$i]:
% 0.24/0.51     ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) =>
% 0.24/0.51       ( ( ( k7_relset_1 @ A @ B @ C @ A ) = ( k2_relset_1 @ A @ B @ C ) ) & 
% 0.24/0.51         ( ( k8_relset_1 @ A @ B @ C @ B ) = ( k1_relset_1 @ A @ B @ C ) ) ) ))).
% 0.24/0.51  thf('14', plain,
% 0.24/0.51      (![X25 : $i, X26 : $i, X27 : $i]:
% 0.24/0.51         (((k7_relset_1 @ X25 @ X26 @ X27 @ X25)
% 0.24/0.51            = (k2_relset_1 @ X25 @ X26 @ X27))
% 0.24/0.51          | ~ (m1_subset_1 @ X27 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X25 @ X26))))),
% 0.24/0.51      inference('cnf', [status(esa)], [t38_relset_1])).
% 0.24/0.51  thf('15', plain,
% 0.24/0.51      (((k7_relset_1 @ sk_B @ sk_A @ sk_C @ sk_B)
% 0.24/0.51         = (k2_relset_1 @ sk_B @ sk_A @ sk_C))),
% 0.24/0.51      inference('sup-', [status(thm)], ['13', '14'])).
% 0.24/0.51  thf('16', plain,
% 0.24/0.51      (![X0 : $i]:
% 0.24/0.51         ((k7_relset_1 @ sk_B @ sk_A @ sk_C @ X0) = (k9_relat_1 @ sk_C @ X0))),
% 0.24/0.51      inference('sup-', [status(thm)], ['5', '6'])).
% 0.24/0.51  thf('17', plain,
% 0.24/0.51      (((k2_relset_1 @ sk_B @ sk_A @ sk_C) = (k2_relat_1 @ sk_C))),
% 0.24/0.51      inference('sup-', [status(thm)], ['8', '9'])).
% 0.24/0.51  thf('18', plain, (((k9_relat_1 @ sk_C @ sk_B) = (k2_relat_1 @ sk_C))),
% 0.24/0.51      inference('demod', [status(thm)], ['15', '16', '17'])).
% 0.24/0.51  thf('19', plain,
% 0.24/0.51      (![X0 : $i]:
% 0.24/0.51         ((k8_relset_1 @ sk_B @ sk_A @ sk_C @ X0) = (k10_relat_1 @ sk_C @ X0))),
% 0.24/0.51      inference('sup-', [status(thm)], ['2', '3'])).
% 0.24/0.51  thf('20', plain,
% 0.24/0.51      (![X0 : $i]:
% 0.24/0.51         ((k7_relset_1 @ sk_B @ sk_A @ sk_C @ X0) = (k9_relat_1 @ sk_C @ X0))),
% 0.24/0.51      inference('sup-', [status(thm)], ['5', '6'])).
% 0.24/0.51  thf('21', plain,
% 0.24/0.51      ((((k8_relset_1 @ sk_B @ sk_A @ sk_C @ 
% 0.24/0.51          (k7_relset_1 @ sk_B @ sk_A @ sk_C @ sk_B))
% 0.24/0.51          != (k1_relset_1 @ sk_B @ sk_A @ sk_C)))
% 0.24/0.51         <= (~
% 0.24/0.51             (((k8_relset_1 @ sk_B @ sk_A @ sk_C @ 
% 0.24/0.51                (k7_relset_1 @ sk_B @ sk_A @ sk_C @ sk_B))
% 0.24/0.51                = (k1_relset_1 @ sk_B @ sk_A @ sk_C))))),
% 0.24/0.51      inference('split', [status(esa)], ['0'])).
% 0.24/0.51  thf('22', plain,
% 0.24/0.51      ((((k8_relset_1 @ sk_B @ sk_A @ sk_C @ (k9_relat_1 @ sk_C @ sk_B))
% 0.24/0.51          != (k1_relset_1 @ sk_B @ sk_A @ sk_C)))
% 0.24/0.51         <= (~
% 0.24/0.51             (((k8_relset_1 @ sk_B @ sk_A @ sk_C @ 
% 0.24/0.51                (k7_relset_1 @ sk_B @ sk_A @ sk_C @ sk_B))
% 0.24/0.51                = (k1_relset_1 @ sk_B @ sk_A @ sk_C))))),
% 0.24/0.51      inference('sup-', [status(thm)], ['20', '21'])).
% 0.24/0.51  thf('23', plain,
% 0.24/0.51      ((m1_subset_1 @ sk_C @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_B @ sk_A)))),
% 0.24/0.51      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.24/0.51  thf(redefinition_k1_relset_1, axiom,
% 0.24/0.51    (![A:$i,B:$i,C:$i]:
% 0.24/0.51     ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) =>
% 0.24/0.51       ( ( k1_relset_1 @ A @ B @ C ) = ( k1_relat_1 @ C ) ) ))).
% 0.24/0.51  thf('24', plain,
% 0.24/0.51      (![X7 : $i, X8 : $i, X9 : $i]:
% 0.24/0.51         (((k1_relset_1 @ X8 @ X9 @ X7) = (k1_relat_1 @ X7))
% 0.24/0.51          | ~ (m1_subset_1 @ X7 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X8 @ X9))))),
% 0.24/0.51      inference('cnf', [status(esa)], [redefinition_k1_relset_1])).
% 0.24/0.51  thf('25', plain,
% 0.24/0.51      (((k1_relset_1 @ sk_B @ sk_A @ sk_C) = (k1_relat_1 @ sk_C))),
% 0.24/0.51      inference('sup-', [status(thm)], ['23', '24'])).
% 0.24/0.51  thf('26', plain,
% 0.24/0.51      ((((k8_relset_1 @ sk_B @ sk_A @ sk_C @ (k9_relat_1 @ sk_C @ sk_B))
% 0.24/0.51          != (k1_relat_1 @ sk_C)))
% 0.24/0.51         <= (~
% 0.24/0.51             (((k8_relset_1 @ sk_B @ sk_A @ sk_C @ 
% 0.24/0.51                (k7_relset_1 @ sk_B @ sk_A @ sk_C @ sk_B))
% 0.24/0.51                = (k1_relset_1 @ sk_B @ sk_A @ sk_C))))),
% 0.24/0.51      inference('demod', [status(thm)], ['22', '25'])).
% 0.24/0.51  thf('27', plain,
% 0.24/0.51      ((((k10_relat_1 @ sk_C @ (k9_relat_1 @ sk_C @ sk_B))
% 0.24/0.51          != (k1_relat_1 @ sk_C)))
% 0.24/0.51         <= (~
% 0.24/0.51             (((k8_relset_1 @ sk_B @ sk_A @ sk_C @ 
% 0.24/0.51                (k7_relset_1 @ sk_B @ sk_A @ sk_C @ sk_B))
% 0.24/0.51                = (k1_relset_1 @ sk_B @ sk_A @ sk_C))))),
% 0.24/0.51      inference('sup-', [status(thm)], ['19', '26'])).
% 0.24/0.51  thf('28', plain,
% 0.24/0.51      ((((k10_relat_1 @ sk_C @ (k2_relat_1 @ sk_C)) != (k1_relat_1 @ sk_C)))
% 0.24/0.51         <= (~
% 0.24/0.51             (((k8_relset_1 @ sk_B @ sk_A @ sk_C @ 
% 0.24/0.51                (k7_relset_1 @ sk_B @ sk_A @ sk_C @ sk_B))
% 0.24/0.51                = (k1_relset_1 @ sk_B @ sk_A @ sk_C))))),
% 0.24/0.51      inference('sup-', [status(thm)], ['18', '27'])).
% 0.24/0.51  thf('29', plain,
% 0.24/0.51      (((((k1_relat_1 @ sk_C) != (k1_relat_1 @ sk_C)) | ~ (v1_relat_1 @ sk_C)))
% 0.24/0.51         <= (~
% 0.24/0.51             (((k8_relset_1 @ sk_B @ sk_A @ sk_C @ 
% 0.24/0.51                (k7_relset_1 @ sk_B @ sk_A @ sk_C @ sk_B))
% 0.24/0.51                = (k1_relset_1 @ sk_B @ sk_A @ sk_C))))),
% 0.24/0.51      inference('sup-', [status(thm)], ['12', '28'])).
% 0.24/0.51  thf('30', plain,
% 0.24/0.51      ((m1_subset_1 @ sk_C @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_B @ sk_A)))),
% 0.24/0.51      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.24/0.51  thf(cc1_relset_1, axiom,
% 0.24/0.51    (![A:$i,B:$i,C:$i]:
% 0.24/0.51     ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) =>
% 0.24/0.51       ( v1_relat_1 @ C ) ))).
% 0.24/0.51  thf('31', plain,
% 0.24/0.51      (![X4 : $i, X5 : $i, X6 : $i]:
% 0.24/0.51         ((v1_relat_1 @ X4)
% 0.24/0.51          | ~ (m1_subset_1 @ X4 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X5 @ X6))))),
% 0.24/0.51      inference('cnf', [status(esa)], [cc1_relset_1])).
% 0.24/0.51  thf('32', plain, ((v1_relat_1 @ sk_C)),
% 0.24/0.51      inference('sup-', [status(thm)], ['30', '31'])).
% 0.24/0.51  thf('33', plain,
% 0.24/0.51      ((((k1_relat_1 @ sk_C) != (k1_relat_1 @ sk_C)))
% 0.24/0.51         <= (~
% 0.24/0.51             (((k8_relset_1 @ sk_B @ sk_A @ sk_C @ 
% 0.24/0.51                (k7_relset_1 @ sk_B @ sk_A @ sk_C @ sk_B))
% 0.24/0.51                = (k1_relset_1 @ sk_B @ sk_A @ sk_C))))),
% 0.24/0.51      inference('demod', [status(thm)], ['29', '32'])).
% 0.24/0.51  thf('34', plain,
% 0.24/0.51      ((((k8_relset_1 @ sk_B @ sk_A @ sk_C @ 
% 0.24/0.51          (k7_relset_1 @ sk_B @ sk_A @ sk_C @ sk_B))
% 0.24/0.51          = (k1_relset_1 @ sk_B @ sk_A @ sk_C)))),
% 0.24/0.51      inference('simplify', [status(thm)], ['33'])).
% 0.24/0.51  thf('35', plain,
% 0.24/0.51      (~
% 0.24/0.51       (((k7_relset_1 @ sk_B @ sk_A @ sk_C @ 
% 0.24/0.51          (k8_relset_1 @ sk_B @ sk_A @ sk_C @ sk_A))
% 0.24/0.51          = (k2_relset_1 @ sk_B @ sk_A @ sk_C))) | 
% 0.24/0.51       ~
% 0.24/0.51       (((k8_relset_1 @ sk_B @ sk_A @ sk_C @ 
% 0.24/0.51          (k7_relset_1 @ sk_B @ sk_A @ sk_C @ sk_B))
% 0.24/0.51          = (k1_relset_1 @ sk_B @ sk_A @ sk_C)))),
% 0.24/0.51      inference('split', [status(esa)], ['0'])).
% 0.24/0.51  thf('36', plain,
% 0.24/0.51      (~
% 0.24/0.51       (((k7_relset_1 @ sk_B @ sk_A @ sk_C @ 
% 0.24/0.51          (k8_relset_1 @ sk_B @ sk_A @ sk_C @ sk_A))
% 0.24/0.51          = (k2_relset_1 @ sk_B @ sk_A @ sk_C)))),
% 0.24/0.51      inference('sat_resolution*', [status(thm)], ['34', '35'])).
% 0.24/0.51  thf('37', plain,
% 0.24/0.51      (((k9_relat_1 @ sk_C @ (k10_relat_1 @ sk_C @ sk_A))
% 0.24/0.51         != (k2_relat_1 @ sk_C))),
% 0.24/0.51      inference('simpl_trail', [status(thm)], ['11', '36'])).
% 0.24/0.51  thf('38', plain,
% 0.24/0.51      ((m1_subset_1 @ sk_C @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_B @ sk_A)))),
% 0.24/0.51      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.24/0.51  thf('39', plain,
% 0.24/0.51      (![X25 : $i, X26 : $i, X27 : $i]:
% 0.24/0.51         (((k8_relset_1 @ X25 @ X26 @ X27 @ X26)
% 0.24/0.51            = (k1_relset_1 @ X25 @ X26 @ X27))
% 0.24/0.51          | ~ (m1_subset_1 @ X27 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X25 @ X26))))),
% 0.24/0.51      inference('cnf', [status(esa)], [t38_relset_1])).
% 0.24/0.51  thf('40', plain,
% 0.24/0.51      (((k8_relset_1 @ sk_B @ sk_A @ sk_C @ sk_A)
% 0.24/0.51         = (k1_relset_1 @ sk_B @ sk_A @ sk_C))),
% 0.24/0.51      inference('sup-', [status(thm)], ['38', '39'])).
% 0.24/0.51  thf('41', plain,
% 0.24/0.51      (![X0 : $i]:
% 0.24/0.51         ((k8_relset_1 @ sk_B @ sk_A @ sk_C @ X0) = (k10_relat_1 @ sk_C @ X0))),
% 0.24/0.51      inference('sup-', [status(thm)], ['2', '3'])).
% 0.24/0.51  thf('42', plain,
% 0.24/0.51      (((k1_relset_1 @ sk_B @ sk_A @ sk_C) = (k1_relat_1 @ sk_C))),
% 0.24/0.51      inference('sup-', [status(thm)], ['23', '24'])).
% 0.24/0.51  thf('43', plain, (((k10_relat_1 @ sk_C @ sk_A) = (k1_relat_1 @ sk_C))),
% 0.24/0.51      inference('demod', [status(thm)], ['40', '41', '42'])).
% 0.24/0.51  thf(d10_xboole_0, axiom,
% 0.24/0.51    (![A:$i,B:$i]:
% 0.24/0.51     ( ( ( A ) = ( B ) ) <=> ( ( r1_tarski @ A @ B ) & ( r1_tarski @ B @ A ) ) ))).
% 0.24/0.51  thf('44', plain,
% 0.24/0.51      (![X0 : $i, X1 : $i]: ((r1_tarski @ X0 @ X1) | ((X0) != (X1)))),
% 0.24/0.51      inference('cnf', [status(esa)], [d10_xboole_0])).
% 0.24/0.51  thf('45', plain, (![X1 : $i]: (r1_tarski @ X1 @ X1)),
% 0.24/0.51      inference('simplify', [status(thm)], ['44'])).
% 0.24/0.51  thf('46', plain,
% 0.24/0.51      ((m1_subset_1 @ sk_C @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_B @ sk_A)))),
% 0.24/0.51      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.24/0.51  thf(t13_relset_1, axiom,
% 0.24/0.51    (![A:$i,B:$i,C:$i,D:$i]:
% 0.24/0.51     ( ( m1_subset_1 @ D @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ C ) ) ) =>
% 0.24/0.51       ( ( r1_tarski @ ( k1_relat_1 @ D ) @ B ) =>
% 0.24/0.51         ( m1_subset_1 @ D @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ B @ C ) ) ) ) ))).
% 0.24/0.51  thf('47', plain,
% 0.24/0.51      (![X21 : $i, X22 : $i, X23 : $i, X24 : $i]:
% 0.24/0.51         (~ (r1_tarski @ (k1_relat_1 @ X21) @ X22)
% 0.24/0.51          | (m1_subset_1 @ X21 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X22 @ X23)))
% 0.24/0.51          | ~ (m1_subset_1 @ X21 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X24 @ X23))))),
% 0.24/0.51      inference('cnf', [status(esa)], [t13_relset_1])).
% 0.24/0.51  thf('48', plain,
% 0.24/0.51      (![X0 : $i]:
% 0.24/0.51         ((m1_subset_1 @ sk_C @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X0 @ sk_A)))
% 0.24/0.51          | ~ (r1_tarski @ (k1_relat_1 @ sk_C) @ X0))),
% 0.24/0.51      inference('sup-', [status(thm)], ['46', '47'])).
% 0.24/0.51  thf('49', plain,
% 0.24/0.51      ((m1_subset_1 @ sk_C @ 
% 0.24/0.51        (k1_zfmisc_1 @ (k2_zfmisc_1 @ (k1_relat_1 @ sk_C) @ sk_A)))),
% 0.24/0.51      inference('sup-', [status(thm)], ['45', '48'])).
% 0.24/0.51  thf('50', plain,
% 0.24/0.51      (![X25 : $i, X26 : $i, X27 : $i]:
% 0.24/0.51         (((k7_relset_1 @ X25 @ X26 @ X27 @ X25)
% 0.24/0.51            = (k2_relset_1 @ X25 @ X26 @ X27))
% 0.24/0.51          | ~ (m1_subset_1 @ X27 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X25 @ X26))))),
% 0.24/0.51      inference('cnf', [status(esa)], [t38_relset_1])).
% 0.24/0.51  thf('51', plain,
% 0.24/0.51      (((k7_relset_1 @ (k1_relat_1 @ sk_C) @ sk_A @ sk_C @ (k1_relat_1 @ sk_C))
% 0.24/0.51         = (k2_relset_1 @ (k1_relat_1 @ sk_C) @ sk_A @ sk_C))),
% 0.24/0.51      inference('sup-', [status(thm)], ['49', '50'])).
% 0.24/0.51  thf('52', plain,
% 0.24/0.51      ((m1_subset_1 @ sk_C @ 
% 0.24/0.51        (k1_zfmisc_1 @ (k2_zfmisc_1 @ (k1_relat_1 @ sk_C) @ sk_A)))),
% 0.24/0.51      inference('sup-', [status(thm)], ['45', '48'])).
% 0.24/0.51  thf('53', plain,
% 0.24/0.51      (![X13 : $i, X14 : $i, X15 : $i, X16 : $i]:
% 0.24/0.51         (~ (m1_subset_1 @ X13 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X14 @ X15)))
% 0.24/0.51          | ((k7_relset_1 @ X14 @ X15 @ X13 @ X16) = (k9_relat_1 @ X13 @ X16)))),
% 0.24/0.51      inference('cnf', [status(esa)], [redefinition_k7_relset_1])).
% 0.24/0.51  thf('54', plain,
% 0.24/0.51      (![X0 : $i]:
% 0.24/0.51         ((k7_relset_1 @ (k1_relat_1 @ sk_C) @ sk_A @ sk_C @ X0)
% 0.24/0.51           = (k9_relat_1 @ sk_C @ X0))),
% 0.24/0.51      inference('sup-', [status(thm)], ['52', '53'])).
% 0.24/0.51  thf('55', plain,
% 0.24/0.51      ((m1_subset_1 @ sk_C @ 
% 0.24/0.51        (k1_zfmisc_1 @ (k2_zfmisc_1 @ (k1_relat_1 @ sk_C) @ sk_A)))),
% 0.24/0.51      inference('sup-', [status(thm)], ['45', '48'])).
% 0.24/0.51  thf('56', plain,
% 0.24/0.51      (![X10 : $i, X11 : $i, X12 : $i]:
% 0.24/0.51         (((k2_relset_1 @ X11 @ X12 @ X10) = (k2_relat_1 @ X10))
% 0.24/0.51          | ~ (m1_subset_1 @ X10 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X11 @ X12))))),
% 0.24/0.51      inference('cnf', [status(esa)], [redefinition_k2_relset_1])).
% 0.24/0.51  thf('57', plain,
% 0.24/0.51      (((k2_relset_1 @ (k1_relat_1 @ sk_C) @ sk_A @ sk_C) = (k2_relat_1 @ sk_C))),
% 0.24/0.51      inference('sup-', [status(thm)], ['55', '56'])).
% 0.24/0.51  thf('58', plain,
% 0.24/0.51      (((k9_relat_1 @ sk_C @ (k1_relat_1 @ sk_C)) = (k2_relat_1 @ sk_C))),
% 0.24/0.51      inference('demod', [status(thm)], ['51', '54', '57'])).
% 0.24/0.51  thf('59', plain, (((k2_relat_1 @ sk_C) != (k2_relat_1 @ sk_C))),
% 0.24/0.51      inference('demod', [status(thm)], ['37', '43', '58'])).
% 0.24/0.51  thf('60', plain, ($false), inference('simplify', [status(thm)], ['59'])).
% 0.24/0.51  
% 0.24/0.51  % SZS output end Refutation
% 0.24/0.51  
% 0.24/0.52  % Zipperpin 1.5 exiting
%------------------------------------------------------------------------------
