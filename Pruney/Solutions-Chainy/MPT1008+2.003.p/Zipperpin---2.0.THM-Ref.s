%------------------------------------------------------------------------------
% File       : Zipperpin---2.0
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_portfolio.sh /export/starexec/sandbox/benchmark/theBenchmark.p /export/starexec/sandbox/tmp/tmp.U8L3klZrtl

% Computer   : n002.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 13:56:31 EST 2020

% Result     : Theorem 0.22s
% Output     : Refutation 0.22s
% Verified   : 
% Statistics : Number of formulae       :  119 ( 373 expanded)
%              Number of leaves         :   42 ( 126 expanded)
%              Depth                    :   20
%              Number of atoms          :  989 (4940 expanded)
%              Number of equality atoms :  126 ( 539 expanded)
%              Maximal formula depth    :   19 (   6 average)

% Comments   : 
%------------------------------------------------------------------------------
thf(k1_zfmisc_1_type,type,(
    k1_zfmisc_1: $i > $i )).

thf(v1_relat_1_type,type,(
    v1_relat_1: $i > $o )).

thf(sk_B_type,type,(
    sk_B: $i > $i )).

thf(v1_xboole_0_type,type,(
    v1_xboole_0: $i > $o )).

thf(r1_tarski_type,type,(
    r1_tarski: $i > $i > $o )).

thf(sk_B_1_type,type,(
    sk_B_1: $i )).

thf(k1_relat_1_type,type,(
    k1_relat_1: $i > $i )).

thf(sk_A_type,type,(
    sk_A: $i )).

thf(k1_xboole_0_type,type,(
    k1_xboole_0: $i )).

thf(k2_zfmisc_1_type,type,(
    k2_zfmisc_1: $i > $i > $i )).

thf(sk_C_type,type,(
    sk_C: $i )).

thf(r2_hidden_type,type,(
    r2_hidden: $i > $i > $o )).

thf(v1_funct_1_type,type,(
    v1_funct_1: $i > $o )).

thf(k2_relset_1_type,type,(
    k2_relset_1: $i > $i > $i > $i )).

thf(v5_relat_1_type,type,(
    v5_relat_1: $i > $i > $o )).

thf(v1_funct_2_type,type,(
    v1_funct_2: $i > $i > $i > $o )).

thf(k1_funct_1_type,type,(
    k1_funct_1: $i > $i > $i )).

thf(k1_enumset1_type,type,(
    k1_enumset1: $i > $i > $i > $i )).

thf(k3_mcart_1_type,type,(
    k3_mcart_1: $i > $i > $i > $i )).

thf(v4_relat_1_type,type,(
    v4_relat_1: $i > $i > $o )).

thf(k2_relat_1_type,type,(
    k2_relat_1: $i > $i )).

thf(k1_tarski_type,type,(
    k1_tarski: $i > $i )).

thf(m1_subset_1_type,type,(
    m1_subset_1: $i > $i > $o )).

thf(k2_tarski_type,type,(
    k2_tarski: $i > $i > $i )).

thf(t29_mcart_1,axiom,(
    ! [A: $i] :
      ~ ( ( A != k1_xboole_0 )
        & ! [B: $i] :
            ~ ( ( r2_hidden @ B @ A )
              & ! [C: $i,D: $i,E: $i] :
                  ~ ( ( ( r2_hidden @ C @ A )
                      | ( r2_hidden @ D @ A ) )
                    & ( B
                      = ( k3_mcart_1 @ C @ D @ E ) ) ) ) ) )).

thf('0',plain,(
    ! [X33: $i] :
      ( ( X33 = k1_xboole_0 )
      | ( r2_hidden @ ( sk_B @ X33 ) @ X33 ) ) ),
    inference(cnf,[status(esa)],[t29_mcart_1])).

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
    m1_subset_1 @ sk_C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ ( k1_tarski @ sk_A ) @ sk_B_1 ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(t6_funct_2,axiom,(
    ! [A: $i,B: $i,C: $i,D: $i] :
      ( ( ( v1_funct_1 @ D )
        & ( v1_funct_2 @ D @ A @ B )
        & ( m1_subset_1 @ D @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) )
     => ( ( r2_hidden @ C @ A )
       => ( ( B = k1_xboole_0 )
          | ( r2_hidden @ ( k1_funct_1 @ D @ C ) @ ( k2_relset_1 @ A @ B @ D ) ) ) ) ) )).

thf('2',plain,(
    ! [X37: $i,X38: $i,X39: $i,X40: $i] :
      ( ~ ( r2_hidden @ X37 @ X38 )
      | ( X39 = k1_xboole_0 )
      | ~ ( v1_funct_1 @ X40 )
      | ~ ( v1_funct_2 @ X40 @ X38 @ X39 )
      | ~ ( m1_subset_1 @ X40 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X38 @ X39 ) ) )
      | ( r2_hidden @ ( k1_funct_1 @ X40 @ X37 ) @ ( k2_relset_1 @ X38 @ X39 @ X40 ) ) ) ),
    inference(cnf,[status(esa)],[t6_funct_2])).

thf('3',plain,(
    ! [X0: $i] :
      ( ( r2_hidden @ ( k1_funct_1 @ sk_C @ X0 ) @ ( k2_relset_1 @ ( k1_tarski @ sk_A ) @ sk_B_1 @ sk_C ) )
      | ~ ( v1_funct_2 @ sk_C @ ( k1_tarski @ sk_A ) @ sk_B_1 )
      | ~ ( v1_funct_1 @ sk_C )
      | ( sk_B_1 = k1_xboole_0 )
      | ~ ( r2_hidden @ X0 @ ( k1_tarski @ sk_A ) ) ) ),
    inference('sup-',[status(thm)],['1','2'])).

thf('4',plain,(
    m1_subset_1 @ sk_C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ ( k1_tarski @ sk_A ) @ sk_B_1 ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(redefinition_k2_relset_1,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) )
     => ( ( k2_relset_1 @ A @ B @ C )
        = ( k2_relat_1 @ C ) ) ) )).

thf('5',plain,(
    ! [X30: $i,X31: $i,X32: $i] :
      ( ( ( k2_relset_1 @ X31 @ X32 @ X30 )
        = ( k2_relat_1 @ X30 ) )
      | ~ ( m1_subset_1 @ X30 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X31 @ X32 ) ) ) ) ),
    inference(cnf,[status(esa)],[redefinition_k2_relset_1])).

thf('6',plain,
    ( ( k2_relset_1 @ ( k1_tarski @ sk_A ) @ sk_B_1 @ sk_C )
    = ( k2_relat_1 @ sk_C ) ),
    inference('sup-',[status(thm)],['4','5'])).

thf('7',plain,(
    v1_funct_2 @ sk_C @ ( k1_tarski @ sk_A ) @ sk_B_1 ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('8',plain,(
    v1_funct_1 @ sk_C ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('9',plain,(
    ! [X0: $i] :
      ( ( r2_hidden @ ( k1_funct_1 @ sk_C @ X0 ) @ ( k2_relat_1 @ sk_C ) )
      | ( sk_B_1 = k1_xboole_0 )
      | ~ ( r2_hidden @ X0 @ ( k1_tarski @ sk_A ) ) ) ),
    inference(demod,[status(thm)],['3','6','7','8'])).

thf('10',plain,(
    sk_B_1 != k1_xboole_0 ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('11',plain,(
    ! [X0: $i] :
      ( ( r2_hidden @ ( k1_funct_1 @ sk_C @ X0 ) @ ( k2_relat_1 @ sk_C ) )
      | ~ ( r2_hidden @ X0 @ ( k1_tarski @ sk_A ) ) ) ),
    inference('simplify_reflect-',[status(thm)],['9','10'])).

thf('12',plain,
    ( ( ( k1_tarski @ sk_A )
      = k1_xboole_0 )
    | ( r2_hidden @ ( k1_funct_1 @ sk_C @ ( sk_B @ ( k1_tarski @ sk_A ) ) ) @ ( k2_relat_1 @ sk_C ) ) ),
    inference('sup-',[status(thm)],['0','11'])).

thf(t7_ordinal1,axiom,(
    ! [A: $i,B: $i] :
      ~ ( ( r2_hidden @ A @ B )
        & ( r1_tarski @ B @ A ) ) )).

thf('13',plain,(
    ! [X22: $i,X23: $i] :
      ( ~ ( r2_hidden @ X22 @ X23 )
      | ~ ( r1_tarski @ X23 @ X22 ) ) ),
    inference(cnf,[status(esa)],[t7_ordinal1])).

thf('14',plain,
    ( ( ( k1_tarski @ sk_A )
      = k1_xboole_0 )
    | ~ ( r1_tarski @ ( k2_relat_1 @ sk_C ) @ ( k1_funct_1 @ sk_C @ ( sk_B @ ( k1_tarski @ sk_A ) ) ) ) ),
    inference('sup-',[status(thm)],['12','13'])).

thf('15',plain,(
    m1_subset_1 @ sk_C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ ( k1_tarski @ sk_A ) @ sk_B_1 ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(cc2_relset_1,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) )
     => ( ( v4_relat_1 @ C @ A )
        & ( v5_relat_1 @ C @ B ) ) ) )).

thf('16',plain,(
    ! [X27: $i,X28: $i,X29: $i] :
      ( ( v4_relat_1 @ X27 @ X28 )
      | ~ ( m1_subset_1 @ X27 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X28 @ X29 ) ) ) ) ),
    inference(cnf,[status(esa)],[cc2_relset_1])).

thf('17',plain,(
    v4_relat_1 @ sk_C @ ( k1_tarski @ sk_A ) ),
    inference('sup-',[status(thm)],['15','16'])).

thf(d18_relat_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( v1_relat_1 @ B )
     => ( ( v4_relat_1 @ B @ A )
      <=> ( r1_tarski @ ( k1_relat_1 @ B ) @ A ) ) ) )).

thf('18',plain,(
    ! [X16: $i,X17: $i] :
      ( ~ ( v4_relat_1 @ X16 @ X17 )
      | ( r1_tarski @ ( k1_relat_1 @ X16 ) @ X17 )
      | ~ ( v1_relat_1 @ X16 ) ) ),
    inference(cnf,[status(esa)],[d18_relat_1])).

thf('19',plain,
    ( ~ ( v1_relat_1 @ sk_C )
    | ( r1_tarski @ ( k1_relat_1 @ sk_C ) @ ( k1_tarski @ sk_A ) ) ),
    inference('sup-',[status(thm)],['17','18'])).

thf('20',plain,(
    m1_subset_1 @ sk_C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ ( k1_tarski @ sk_A ) @ sk_B_1 ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(cc1_relset_1,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) )
     => ( v1_relat_1 @ C ) ) )).

thf('21',plain,(
    ! [X24: $i,X25: $i,X26: $i] :
      ( ( v1_relat_1 @ X24 )
      | ~ ( m1_subset_1 @ X24 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X25 @ X26 ) ) ) ) ),
    inference(cnf,[status(esa)],[cc1_relset_1])).

thf('22',plain,(
    v1_relat_1 @ sk_C ),
    inference('sup-',[status(thm)],['20','21'])).

thf('23',plain,(
    r1_tarski @ ( k1_relat_1 @ sk_C ) @ ( k1_tarski @ sk_A ) ),
    inference(demod,[status(thm)],['19','22'])).

thf(t69_enumset1,axiom,(
    ! [A: $i] :
      ( ( k2_tarski @ A @ A )
      = ( k1_tarski @ A ) ) )).

thf('24',plain,(
    ! [X1: $i] :
      ( ( k2_tarski @ X1 @ X1 )
      = ( k1_tarski @ X1 ) ) ),
    inference(cnf,[status(esa)],[t69_enumset1])).

thf(t70_enumset1,axiom,(
    ! [A: $i,B: $i] :
      ( ( k1_enumset1 @ A @ A @ B )
      = ( k2_tarski @ A @ B ) ) )).

thf('25',plain,(
    ! [X2: $i,X3: $i] :
      ( ( k1_enumset1 @ X2 @ X2 @ X3 )
      = ( k2_tarski @ X2 @ X3 ) ) ),
    inference(cnf,[status(esa)],[t70_enumset1])).

thf(t142_zfmisc_1,axiom,(
    ! [A: $i,B: $i,C: $i,D: $i] :
      ( ( r1_tarski @ D @ ( k1_enumset1 @ A @ B @ C ) )
    <=> ~ ( ( D != k1_xboole_0 )
          & ( D
           != ( k1_tarski @ A ) )
          & ( D
           != ( k1_tarski @ B ) )
          & ( D
           != ( k1_tarski @ C ) )
          & ( D
           != ( k2_tarski @ A @ B ) )
          & ( D
           != ( k2_tarski @ B @ C ) )
          & ( D
           != ( k2_tarski @ A @ C ) )
          & ( D
           != ( k1_enumset1 @ A @ B @ C ) ) ) ) )).

thf('26',plain,(
    ! [X7: $i,X8: $i,X9: $i,X10: $i] :
      ( ( X10
        = ( k1_enumset1 @ X7 @ X8 @ X9 ) )
      | ( X10
        = ( k2_tarski @ X7 @ X9 ) )
      | ( X10
        = ( k2_tarski @ X8 @ X9 ) )
      | ( X10
        = ( k2_tarski @ X7 @ X8 ) )
      | ( X10
        = ( k1_tarski @ X9 ) )
      | ( X10
        = ( k1_tarski @ X8 ) )
      | ( X10
        = ( k1_tarski @ X7 ) )
      | ( X10 = k1_xboole_0 )
      | ~ ( r1_tarski @ X10 @ ( k1_enumset1 @ X7 @ X8 @ X9 ) ) ) ),
    inference(cnf,[status(esa)],[t142_zfmisc_1])).

thf('27',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( ~ ( r1_tarski @ X2 @ ( k2_tarski @ X1 @ X0 ) )
      | ( X2 = k1_xboole_0 )
      | ( X2
        = ( k1_tarski @ X1 ) )
      | ( X2
        = ( k1_tarski @ X1 ) )
      | ( X2
        = ( k1_tarski @ X0 ) )
      | ( X2
        = ( k2_tarski @ X1 @ X1 ) )
      | ( X2
        = ( k2_tarski @ X1 @ X0 ) )
      | ( X2
        = ( k2_tarski @ X1 @ X0 ) )
      | ( X2
        = ( k1_enumset1 @ X1 @ X1 @ X0 ) ) ) ),
    inference('sup-',[status(thm)],['25','26'])).

thf('28',plain,(
    ! [X2: $i,X3: $i] :
      ( ( k1_enumset1 @ X2 @ X2 @ X3 )
      = ( k2_tarski @ X2 @ X3 ) ) ),
    inference(cnf,[status(esa)],[t70_enumset1])).

thf('29',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( ~ ( r1_tarski @ X2 @ ( k2_tarski @ X1 @ X0 ) )
      | ( X2 = k1_xboole_0 )
      | ( X2
        = ( k1_tarski @ X1 ) )
      | ( X2
        = ( k1_tarski @ X1 ) )
      | ( X2
        = ( k1_tarski @ X0 ) )
      | ( X2
        = ( k2_tarski @ X1 @ X1 ) )
      | ( X2
        = ( k2_tarski @ X1 @ X0 ) )
      | ( X2
        = ( k2_tarski @ X1 @ X0 ) )
      | ( X2
        = ( k2_tarski @ X1 @ X0 ) ) ) ),
    inference(demod,[status(thm)],['27','28'])).

thf('30',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( ( X2
        = ( k2_tarski @ X1 @ X0 ) )
      | ( X2
        = ( k2_tarski @ X1 @ X1 ) )
      | ( X2
        = ( k1_tarski @ X0 ) )
      | ( X2
        = ( k1_tarski @ X1 ) )
      | ( X2 = k1_xboole_0 )
      | ~ ( r1_tarski @ X2 @ ( k2_tarski @ X1 @ X0 ) ) ) ),
    inference(simplify,[status(thm)],['29'])).

thf('31',plain,(
    ! [X0: $i,X1: $i] :
      ( ~ ( r1_tarski @ X1 @ ( k1_tarski @ X0 ) )
      | ( X1 = k1_xboole_0 )
      | ( X1
        = ( k1_tarski @ X0 ) )
      | ( X1
        = ( k1_tarski @ X0 ) )
      | ( X1
        = ( k2_tarski @ X0 @ X0 ) )
      | ( X1
        = ( k2_tarski @ X0 @ X0 ) ) ) ),
    inference('sup-',[status(thm)],['24','30'])).

thf('32',plain,(
    ! [X0: $i,X1: $i] :
      ( ( X1
        = ( k2_tarski @ X0 @ X0 ) )
      | ( X1
        = ( k1_tarski @ X0 ) )
      | ( X1 = k1_xboole_0 )
      | ~ ( r1_tarski @ X1 @ ( k1_tarski @ X0 ) ) ) ),
    inference(simplify,[status(thm)],['31'])).

thf('33',plain,
    ( ( ( k1_relat_1 @ sk_C )
      = k1_xboole_0 )
    | ( ( k1_relat_1 @ sk_C )
      = ( k1_tarski @ sk_A ) )
    | ( ( k1_relat_1 @ sk_C )
      = ( k2_tarski @ sk_A @ sk_A ) ) ),
    inference('sup-',[status(thm)],['23','32'])).

thf('34',plain,(
    ! [X1: $i] :
      ( ( k2_tarski @ X1 @ X1 )
      = ( k1_tarski @ X1 ) ) ),
    inference(cnf,[status(esa)],[t69_enumset1])).

thf('35',plain,
    ( ( ( k1_relat_1 @ sk_C )
      = k1_xboole_0 )
    | ( ( k1_relat_1 @ sk_C )
      = ( k1_tarski @ sk_A ) )
    | ( ( k1_relat_1 @ sk_C )
      = ( k1_tarski @ sk_A ) ) ),
    inference(demod,[status(thm)],['33','34'])).

thf('36',plain,
    ( ( ( k1_relat_1 @ sk_C )
      = ( k1_tarski @ sk_A ) )
    | ( ( k1_relat_1 @ sk_C )
      = k1_xboole_0 ) ),
    inference(simplify,[status(thm)],['35'])).

thf(t14_funct_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( ( v1_relat_1 @ B )
        & ( v1_funct_1 @ B ) )
     => ( ( ( k1_relat_1 @ B )
          = ( k1_tarski @ A ) )
       => ( ( k2_relat_1 @ B )
          = ( k1_tarski @ ( k1_funct_1 @ B @ A ) ) ) ) ) )).

thf('37',plain,(
    ! [X20: $i,X21: $i] :
      ( ( ( k1_relat_1 @ X21 )
       != ( k1_tarski @ X20 ) )
      | ( ( k2_relat_1 @ X21 )
        = ( k1_tarski @ ( k1_funct_1 @ X21 @ X20 ) ) )
      | ~ ( v1_funct_1 @ X21 )
      | ~ ( v1_relat_1 @ X21 ) ) ),
    inference(cnf,[status(esa)],[t14_funct_1])).

thf('38',plain,(
    ! [X0: $i] :
      ( ( ( k1_relat_1 @ X0 )
       != ( k1_relat_1 @ sk_C ) )
      | ( ( k1_relat_1 @ sk_C )
        = k1_xboole_0 )
      | ~ ( v1_relat_1 @ X0 )
      | ~ ( v1_funct_1 @ X0 )
      | ( ( k2_relat_1 @ X0 )
        = ( k1_tarski @ ( k1_funct_1 @ X0 @ sk_A ) ) ) ) ),
    inference('sup-',[status(thm)],['36','37'])).

thf('39',plain,
    ( ( ( k2_relat_1 @ sk_C )
      = ( k1_tarski @ ( k1_funct_1 @ sk_C @ sk_A ) ) )
    | ~ ( v1_funct_1 @ sk_C )
    | ~ ( v1_relat_1 @ sk_C )
    | ( ( k1_relat_1 @ sk_C )
      = k1_xboole_0 ) ),
    inference(eq_res,[status(thm)],['38'])).

thf('40',plain,(
    v1_funct_1 @ sk_C ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('41',plain,(
    v1_relat_1 @ sk_C ),
    inference('sup-',[status(thm)],['20','21'])).

thf('42',plain,
    ( ( ( k2_relat_1 @ sk_C )
      = ( k1_tarski @ ( k1_funct_1 @ sk_C @ sk_A ) ) )
    | ( ( k1_relat_1 @ sk_C )
      = k1_xboole_0 ) ),
    inference(demod,[status(thm)],['39','40','41'])).

thf('43',plain,(
    ( k2_relset_1 @ ( k1_tarski @ sk_A ) @ sk_B_1 @ sk_C )
 != ( k1_tarski @ ( k1_funct_1 @ sk_C @ sk_A ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('44',plain,
    ( ( k2_relset_1 @ ( k1_tarski @ sk_A ) @ sk_B_1 @ sk_C )
    = ( k2_relat_1 @ sk_C ) ),
    inference('sup-',[status(thm)],['4','5'])).

thf('45',plain,(
    ( k2_relat_1 @ sk_C )
 != ( k1_tarski @ ( k1_funct_1 @ sk_C @ sk_A ) ) ),
    inference(demod,[status(thm)],['43','44'])).

thf('46',plain,
    ( ( k1_relat_1 @ sk_C )
    = k1_xboole_0 ),
    inference('simplify_reflect-',[status(thm)],['42','45'])).

thf(t64_relat_1,axiom,(
    ! [A: $i] :
      ( ( v1_relat_1 @ A )
     => ( ( ( ( k1_relat_1 @ A )
            = k1_xboole_0 )
          | ( ( k2_relat_1 @ A )
            = k1_xboole_0 ) )
       => ( A = k1_xboole_0 ) ) ) )).

thf('47',plain,(
    ! [X18: $i] :
      ( ( ( k1_relat_1 @ X18 )
       != k1_xboole_0 )
      | ( X18 = k1_xboole_0 )
      | ~ ( v1_relat_1 @ X18 ) ) ),
    inference(cnf,[status(esa)],[t64_relat_1])).

thf('48',plain,
    ( ( k1_xboole_0 != k1_xboole_0 )
    | ~ ( v1_relat_1 @ sk_C )
    | ( sk_C = k1_xboole_0 ) ),
    inference('sup-',[status(thm)],['46','47'])).

thf('49',plain,(
    v1_relat_1 @ sk_C ),
    inference('sup-',[status(thm)],['20','21'])).

thf('50',plain,
    ( ( k1_xboole_0 != k1_xboole_0 )
    | ( sk_C = k1_xboole_0 ) ),
    inference(demod,[status(thm)],['48','49'])).

thf('51',plain,(
    sk_C = k1_xboole_0 ),
    inference(simplify,[status(thm)],['50'])).

thf(t60_relat_1,axiom,
    ( ( ( k2_relat_1 @ k1_xboole_0 )
      = k1_xboole_0 )
    & ( ( k1_relat_1 @ k1_xboole_0 )
      = k1_xboole_0 ) )).

thf('52',plain,
    ( ( k2_relat_1 @ k1_xboole_0 )
    = k1_xboole_0 ),
    inference(cnf,[status(esa)],[t60_relat_1])).

thf('53',plain,(
    sk_C = k1_xboole_0 ),
    inference(simplify,[status(thm)],['50'])).

thf(t2_xboole_1,axiom,(
    ! [A: $i] :
      ( r1_tarski @ k1_xboole_0 @ A ) )).

thf('54',plain,(
    ! [X0: $i] :
      ( r1_tarski @ k1_xboole_0 @ X0 ) ),
    inference(cnf,[status(esa)],[t2_xboole_1])).

thf('55',plain,
    ( ( k1_tarski @ sk_A )
    = k1_xboole_0 ),
    inference(demod,[status(thm)],['14','51','52','53','54'])).

thf(cc1_funct_1,axiom,(
    ! [A: $i] :
      ( ( v1_xboole_0 @ A )
     => ( v1_funct_1 @ A ) ) )).

thf('56',plain,(
    ! [X19: $i] :
      ( ( v1_funct_1 @ X19 )
      | ~ ( v1_xboole_0 @ X19 ) ) ),
    inference(cnf,[status(esa)],[cc1_funct_1])).

thf('57',plain,
    ( ( k1_relat_1 @ k1_xboole_0 )
    = k1_xboole_0 ),
    inference(cnf,[status(esa)],[t60_relat_1])).

thf('58',plain,(
    ! [X20: $i,X21: $i] :
      ( ( ( k1_relat_1 @ X21 )
       != ( k1_tarski @ X20 ) )
      | ( ( k2_relat_1 @ X21 )
        = ( k1_tarski @ ( k1_funct_1 @ X21 @ X20 ) ) )
      | ~ ( v1_funct_1 @ X21 )
      | ~ ( v1_relat_1 @ X21 ) ) ),
    inference(cnf,[status(esa)],[t14_funct_1])).

thf('59',plain,(
    ! [X0: $i] :
      ( ( k1_xboole_0
       != ( k1_tarski @ X0 ) )
      | ~ ( v1_relat_1 @ k1_xboole_0 )
      | ~ ( v1_funct_1 @ k1_xboole_0 )
      | ( ( k2_relat_1 @ k1_xboole_0 )
        = ( k1_tarski @ ( k1_funct_1 @ k1_xboole_0 @ X0 ) ) ) ) ),
    inference('sup-',[status(thm)],['57','58'])).

thf(t4_subset_1,axiom,(
    ! [A: $i] :
      ( m1_subset_1 @ k1_xboole_0 @ ( k1_zfmisc_1 @ A ) ) )).

thf('60',plain,(
    ! [X12: $i] :
      ( m1_subset_1 @ k1_xboole_0 @ ( k1_zfmisc_1 @ X12 ) ) ),
    inference(cnf,[status(esa)],[t4_subset_1])).

thf('61',plain,(
    ! [X24: $i,X25: $i,X26: $i] :
      ( ( v1_relat_1 @ X24 )
      | ~ ( m1_subset_1 @ X24 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X25 @ X26 ) ) ) ) ),
    inference(cnf,[status(esa)],[cc1_relset_1])).

thf('62',plain,(
    v1_relat_1 @ k1_xboole_0 ),
    inference('sup-',[status(thm)],['60','61'])).

thf('63',plain,
    ( ( k2_relat_1 @ k1_xboole_0 )
    = k1_xboole_0 ),
    inference(cnf,[status(esa)],[t60_relat_1])).

thf('64',plain,(
    ! [X0: $i] :
      ( ( k1_xboole_0
       != ( k1_tarski @ X0 ) )
      | ~ ( v1_funct_1 @ k1_xboole_0 )
      | ( k1_xboole_0
        = ( k1_tarski @ ( k1_funct_1 @ k1_xboole_0 @ X0 ) ) ) ) ),
    inference(demod,[status(thm)],['59','62','63'])).

thf('65',plain,(
    ! [X0: $i] :
      ( ~ ( v1_xboole_0 @ k1_xboole_0 )
      | ( k1_xboole_0
        = ( k1_tarski @ ( k1_funct_1 @ k1_xboole_0 @ X0 ) ) )
      | ( k1_xboole_0
       != ( k1_tarski @ X0 ) ) ) ),
    inference('sup-',[status(thm)],['56','64'])).

thf(fc1_xboole_0,axiom,(
    v1_xboole_0 @ k1_xboole_0 )).

thf('66',plain,(
    v1_xboole_0 @ k1_xboole_0 ),
    inference(cnf,[status(esa)],[fc1_xboole_0])).

thf('67',plain,(
    ! [X0: $i] :
      ( ( k1_xboole_0
        = ( k1_tarski @ ( k1_funct_1 @ k1_xboole_0 @ X0 ) ) )
      | ( k1_xboole_0
       != ( k1_tarski @ X0 ) ) ) ),
    inference(demod,[status(thm)],['65','66'])).

thf('68',plain,
    ( ( k1_xboole_0 != k1_xboole_0 )
    | ( k1_xboole_0
      = ( k1_tarski @ ( k1_funct_1 @ k1_xboole_0 @ sk_A ) ) ) ),
    inference('sup-',[status(thm)],['55','67'])).

thf('69',plain,
    ( k1_xboole_0
    = ( k1_tarski @ ( k1_funct_1 @ k1_xboole_0 @ sk_A ) ) ),
    inference(simplify,[status(thm)],['68'])).

thf('70',plain,(
    ( k2_relat_1 @ sk_C )
 != ( k1_tarski @ ( k1_funct_1 @ sk_C @ sk_A ) ) ),
    inference(demod,[status(thm)],['43','44'])).

thf('71',plain,(
    sk_C = k1_xboole_0 ),
    inference(simplify,[status(thm)],['50'])).

thf('72',plain,
    ( ( k2_relat_1 @ k1_xboole_0 )
    = k1_xboole_0 ),
    inference(cnf,[status(esa)],[t60_relat_1])).

thf('73',plain,(
    sk_C = k1_xboole_0 ),
    inference(simplify,[status(thm)],['50'])).

thf('74',plain,(
    k1_xboole_0
 != ( k1_tarski @ ( k1_funct_1 @ k1_xboole_0 @ sk_A ) ) ),
    inference(demod,[status(thm)],['70','71','72','73'])).

thf('75',plain,(
    $false ),
    inference('simplify_reflect-',[status(thm)],['69','74'])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.07/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.07/0.13  % Command    : run_portfolio.sh /export/starexec/sandbox/benchmark/theBenchmark.p /export/starexec/sandbox/tmp/tmp.U8L3klZrtl
% 0.13/0.34  % Computer   : n002.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % DateTime   : Tue Dec  1 09:56:07 EST 2020
% 0.13/0.35  % CPUTime    : 
% 0.13/0.35  % Running portfolio for 600 s
% 0.13/0.35  % File         : /export/starexec/sandbox/benchmark/theBenchmark.p
% 0.13/0.35  % Number of cores: 8
% 0.13/0.35  % Python version: Python 3.6.8
% 0.13/0.35  % Running in FO mode
% 0.22/0.56  % Running /export/starexec/sandbox/solver/bin/fo/fo7.sh for 78
% 0.22/0.56  % Solved by: fo/fo7.sh
% 0.22/0.56  To remain in the chosen logic fragment, unification with booleans has been disabled.
% 0.22/0.56  % done 308 iterations in 0.104s
% 0.22/0.56  % SZS status Theorem for '/export/starexec/sandbox/benchmark/theBenchmark.p'
% 0.22/0.56  % SZS output start Refutation
% 0.22/0.56  thf(k1_zfmisc_1_type, type, k1_zfmisc_1: $i > $i).
% 0.22/0.56  thf(v1_relat_1_type, type, v1_relat_1: $i > $o).
% 0.22/0.56  thf(sk_B_type, type, sk_B: $i > $i).
% 0.22/0.56  thf(v1_xboole_0_type, type, v1_xboole_0: $i > $o).
% 0.22/0.56  thf(r1_tarski_type, type, r1_tarski: $i > $i > $o).
% 0.22/0.56  thf(sk_B_1_type, type, sk_B_1: $i).
% 0.22/0.56  thf(k1_relat_1_type, type, k1_relat_1: $i > $i).
% 0.22/0.56  thf(sk_A_type, type, sk_A: $i).
% 0.22/0.56  thf(k1_xboole_0_type, type, k1_xboole_0: $i).
% 0.22/0.56  thf(k2_zfmisc_1_type, type, k2_zfmisc_1: $i > $i > $i).
% 0.22/0.56  thf(sk_C_type, type, sk_C: $i).
% 0.22/0.56  thf(r2_hidden_type, type, r2_hidden: $i > $i > $o).
% 0.22/0.56  thf(v1_funct_1_type, type, v1_funct_1: $i > $o).
% 0.22/0.56  thf(k2_relset_1_type, type, k2_relset_1: $i > $i > $i > $i).
% 0.22/0.56  thf(v5_relat_1_type, type, v5_relat_1: $i > $i > $o).
% 0.22/0.56  thf(v1_funct_2_type, type, v1_funct_2: $i > $i > $i > $o).
% 0.22/0.56  thf(k1_funct_1_type, type, k1_funct_1: $i > $i > $i).
% 0.22/0.56  thf(k1_enumset1_type, type, k1_enumset1: $i > $i > $i > $i).
% 0.22/0.56  thf(k3_mcart_1_type, type, k3_mcart_1: $i > $i > $i > $i).
% 0.22/0.56  thf(v4_relat_1_type, type, v4_relat_1: $i > $i > $o).
% 0.22/0.56  thf(k2_relat_1_type, type, k2_relat_1: $i > $i).
% 0.22/0.56  thf(k1_tarski_type, type, k1_tarski: $i > $i).
% 0.22/0.56  thf(m1_subset_1_type, type, m1_subset_1: $i > $i > $o).
% 0.22/0.56  thf(k2_tarski_type, type, k2_tarski: $i > $i > $i).
% 0.22/0.56  thf(t29_mcart_1, axiom,
% 0.22/0.56    (![A:$i]:
% 0.22/0.56     ( ~( ( ( A ) != ( k1_xboole_0 ) ) & 
% 0.22/0.56          ( ![B:$i]:
% 0.22/0.56            ( ~( ( r2_hidden @ B @ A ) & 
% 0.22/0.56                 ( ![C:$i,D:$i,E:$i]:
% 0.22/0.56                   ( ~( ( ( r2_hidden @ C @ A ) | ( r2_hidden @ D @ A ) ) & 
% 0.22/0.56                        ( ( B ) = ( k3_mcart_1 @ C @ D @ E ) ) ) ) ) ) ) ) ) ))).
% 0.22/0.56  thf('0', plain,
% 0.22/0.56      (![X33 : $i]:
% 0.22/0.56         (((X33) = (k1_xboole_0)) | (r2_hidden @ (sk_B @ X33) @ X33))),
% 0.22/0.56      inference('cnf', [status(esa)], [t29_mcart_1])).
% 0.22/0.56  thf(t62_funct_2, conjecture,
% 0.22/0.56    (![A:$i,B:$i,C:$i]:
% 0.22/0.56     ( ( ( v1_funct_1 @ C ) & ( v1_funct_2 @ C @ ( k1_tarski @ A ) @ B ) & 
% 0.22/0.56         ( m1_subset_1 @
% 0.22/0.56           C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ ( k1_tarski @ A ) @ B ) ) ) ) =>
% 0.22/0.56       ( ( ( B ) != ( k1_xboole_0 ) ) =>
% 0.22/0.56         ( ( k2_relset_1 @ ( k1_tarski @ A ) @ B @ C ) =
% 0.22/0.56           ( k1_tarski @ ( k1_funct_1 @ C @ A ) ) ) ) ))).
% 0.22/0.56  thf(zf_stmt_0, negated_conjecture,
% 0.22/0.56    (~( ![A:$i,B:$i,C:$i]:
% 0.22/0.56        ( ( ( v1_funct_1 @ C ) & ( v1_funct_2 @ C @ ( k1_tarski @ A ) @ B ) & 
% 0.22/0.56            ( m1_subset_1 @
% 0.22/0.56              C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ ( k1_tarski @ A ) @ B ) ) ) ) =>
% 0.22/0.56          ( ( ( B ) != ( k1_xboole_0 ) ) =>
% 0.22/0.56            ( ( k2_relset_1 @ ( k1_tarski @ A ) @ B @ C ) =
% 0.22/0.56              ( k1_tarski @ ( k1_funct_1 @ C @ A ) ) ) ) ) )),
% 0.22/0.56    inference('cnf.neg', [status(esa)], [t62_funct_2])).
% 0.22/0.56  thf('1', plain,
% 0.22/0.56      ((m1_subset_1 @ sk_C @ 
% 0.22/0.56        (k1_zfmisc_1 @ (k2_zfmisc_1 @ (k1_tarski @ sk_A) @ sk_B_1)))),
% 0.22/0.56      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.22/0.56  thf(t6_funct_2, axiom,
% 0.22/0.56    (![A:$i,B:$i,C:$i,D:$i]:
% 0.22/0.56     ( ( ( v1_funct_1 @ D ) & ( v1_funct_2 @ D @ A @ B ) & 
% 0.22/0.56         ( m1_subset_1 @ D @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) ) =>
% 0.22/0.56       ( ( r2_hidden @ C @ A ) =>
% 0.22/0.56         ( ( ( B ) = ( k1_xboole_0 ) ) | 
% 0.22/0.56           ( r2_hidden @ ( k1_funct_1 @ D @ C ) @ ( k2_relset_1 @ A @ B @ D ) ) ) ) ))).
% 0.22/0.56  thf('2', plain,
% 0.22/0.56      (![X37 : $i, X38 : $i, X39 : $i, X40 : $i]:
% 0.22/0.56         (~ (r2_hidden @ X37 @ X38)
% 0.22/0.56          | ((X39) = (k1_xboole_0))
% 0.22/0.56          | ~ (v1_funct_1 @ X40)
% 0.22/0.56          | ~ (v1_funct_2 @ X40 @ X38 @ X39)
% 0.22/0.56          | ~ (m1_subset_1 @ X40 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X38 @ X39)))
% 0.22/0.56          | (r2_hidden @ (k1_funct_1 @ X40 @ X37) @ 
% 0.22/0.56             (k2_relset_1 @ X38 @ X39 @ X40)))),
% 0.22/0.56      inference('cnf', [status(esa)], [t6_funct_2])).
% 0.22/0.56  thf('3', plain,
% 0.22/0.56      (![X0 : $i]:
% 0.22/0.56         ((r2_hidden @ (k1_funct_1 @ sk_C @ X0) @ 
% 0.22/0.56           (k2_relset_1 @ (k1_tarski @ sk_A) @ sk_B_1 @ sk_C))
% 0.22/0.56          | ~ (v1_funct_2 @ sk_C @ (k1_tarski @ sk_A) @ sk_B_1)
% 0.22/0.56          | ~ (v1_funct_1 @ sk_C)
% 0.22/0.56          | ((sk_B_1) = (k1_xboole_0))
% 0.22/0.56          | ~ (r2_hidden @ X0 @ (k1_tarski @ sk_A)))),
% 0.22/0.56      inference('sup-', [status(thm)], ['1', '2'])).
% 0.22/0.56  thf('4', plain,
% 0.22/0.56      ((m1_subset_1 @ sk_C @ 
% 0.22/0.56        (k1_zfmisc_1 @ (k2_zfmisc_1 @ (k1_tarski @ sk_A) @ sk_B_1)))),
% 0.22/0.56      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.22/0.56  thf(redefinition_k2_relset_1, axiom,
% 0.22/0.56    (![A:$i,B:$i,C:$i]:
% 0.22/0.56     ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) =>
% 0.22/0.56       ( ( k2_relset_1 @ A @ B @ C ) = ( k2_relat_1 @ C ) ) ))).
% 0.22/0.56  thf('5', plain,
% 0.22/0.56      (![X30 : $i, X31 : $i, X32 : $i]:
% 0.22/0.56         (((k2_relset_1 @ X31 @ X32 @ X30) = (k2_relat_1 @ X30))
% 0.22/0.56          | ~ (m1_subset_1 @ X30 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X31 @ X32))))),
% 0.22/0.56      inference('cnf', [status(esa)], [redefinition_k2_relset_1])).
% 0.22/0.56  thf('6', plain,
% 0.22/0.56      (((k2_relset_1 @ (k1_tarski @ sk_A) @ sk_B_1 @ sk_C)
% 0.22/0.56         = (k2_relat_1 @ sk_C))),
% 0.22/0.56      inference('sup-', [status(thm)], ['4', '5'])).
% 0.22/0.56  thf('7', plain, ((v1_funct_2 @ sk_C @ (k1_tarski @ sk_A) @ sk_B_1)),
% 0.22/0.56      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.22/0.56  thf('8', plain, ((v1_funct_1 @ sk_C)),
% 0.22/0.56      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.22/0.56  thf('9', plain,
% 0.22/0.56      (![X0 : $i]:
% 0.22/0.56         ((r2_hidden @ (k1_funct_1 @ sk_C @ X0) @ (k2_relat_1 @ sk_C))
% 0.22/0.56          | ((sk_B_1) = (k1_xboole_0))
% 0.22/0.56          | ~ (r2_hidden @ X0 @ (k1_tarski @ sk_A)))),
% 0.22/0.56      inference('demod', [status(thm)], ['3', '6', '7', '8'])).
% 0.22/0.56  thf('10', plain, (((sk_B_1) != (k1_xboole_0))),
% 0.22/0.56      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.22/0.56  thf('11', plain,
% 0.22/0.56      (![X0 : $i]:
% 0.22/0.56         ((r2_hidden @ (k1_funct_1 @ sk_C @ X0) @ (k2_relat_1 @ sk_C))
% 0.22/0.56          | ~ (r2_hidden @ X0 @ (k1_tarski @ sk_A)))),
% 0.22/0.56      inference('simplify_reflect-', [status(thm)], ['9', '10'])).
% 0.22/0.56  thf('12', plain,
% 0.22/0.56      ((((k1_tarski @ sk_A) = (k1_xboole_0))
% 0.22/0.56        | (r2_hidden @ (k1_funct_1 @ sk_C @ (sk_B @ (k1_tarski @ sk_A))) @ 
% 0.22/0.56           (k2_relat_1 @ sk_C)))),
% 0.22/0.56      inference('sup-', [status(thm)], ['0', '11'])).
% 0.22/0.56  thf(t7_ordinal1, axiom,
% 0.22/0.56    (![A:$i,B:$i]: ( ~( ( r2_hidden @ A @ B ) & ( r1_tarski @ B @ A ) ) ))).
% 0.22/0.56  thf('13', plain,
% 0.22/0.56      (![X22 : $i, X23 : $i]:
% 0.22/0.56         (~ (r2_hidden @ X22 @ X23) | ~ (r1_tarski @ X23 @ X22))),
% 0.22/0.56      inference('cnf', [status(esa)], [t7_ordinal1])).
% 0.22/0.56  thf('14', plain,
% 0.22/0.56      ((((k1_tarski @ sk_A) = (k1_xboole_0))
% 0.22/0.56        | ~ (r1_tarski @ (k2_relat_1 @ sk_C) @ 
% 0.22/0.56             (k1_funct_1 @ sk_C @ (sk_B @ (k1_tarski @ sk_A)))))),
% 0.22/0.56      inference('sup-', [status(thm)], ['12', '13'])).
% 0.22/0.56  thf('15', plain,
% 0.22/0.56      ((m1_subset_1 @ sk_C @ 
% 0.22/0.56        (k1_zfmisc_1 @ (k2_zfmisc_1 @ (k1_tarski @ sk_A) @ sk_B_1)))),
% 0.22/0.56      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.22/0.56  thf(cc2_relset_1, axiom,
% 0.22/0.56    (![A:$i,B:$i,C:$i]:
% 0.22/0.56     ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) =>
% 0.22/0.56       ( ( v4_relat_1 @ C @ A ) & ( v5_relat_1 @ C @ B ) ) ))).
% 0.22/0.56  thf('16', plain,
% 0.22/0.56      (![X27 : $i, X28 : $i, X29 : $i]:
% 0.22/0.56         ((v4_relat_1 @ X27 @ X28)
% 0.22/0.56          | ~ (m1_subset_1 @ X27 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X28 @ X29))))),
% 0.22/0.56      inference('cnf', [status(esa)], [cc2_relset_1])).
% 0.22/0.56  thf('17', plain, ((v4_relat_1 @ sk_C @ (k1_tarski @ sk_A))),
% 0.22/0.56      inference('sup-', [status(thm)], ['15', '16'])).
% 0.22/0.56  thf(d18_relat_1, axiom,
% 0.22/0.56    (![A:$i,B:$i]:
% 0.22/0.56     ( ( v1_relat_1 @ B ) =>
% 0.22/0.56       ( ( v4_relat_1 @ B @ A ) <=> ( r1_tarski @ ( k1_relat_1 @ B ) @ A ) ) ))).
% 0.22/0.56  thf('18', plain,
% 0.22/0.56      (![X16 : $i, X17 : $i]:
% 0.22/0.56         (~ (v4_relat_1 @ X16 @ X17)
% 0.22/0.56          | (r1_tarski @ (k1_relat_1 @ X16) @ X17)
% 0.22/0.56          | ~ (v1_relat_1 @ X16))),
% 0.22/0.56      inference('cnf', [status(esa)], [d18_relat_1])).
% 0.22/0.56  thf('19', plain,
% 0.22/0.56      ((~ (v1_relat_1 @ sk_C)
% 0.22/0.56        | (r1_tarski @ (k1_relat_1 @ sk_C) @ (k1_tarski @ sk_A)))),
% 0.22/0.56      inference('sup-', [status(thm)], ['17', '18'])).
% 0.22/0.56  thf('20', plain,
% 0.22/0.56      ((m1_subset_1 @ sk_C @ 
% 0.22/0.56        (k1_zfmisc_1 @ (k2_zfmisc_1 @ (k1_tarski @ sk_A) @ sk_B_1)))),
% 0.22/0.56      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.22/0.56  thf(cc1_relset_1, axiom,
% 0.22/0.56    (![A:$i,B:$i,C:$i]:
% 0.22/0.56     ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) =>
% 0.22/0.56       ( v1_relat_1 @ C ) ))).
% 0.22/0.56  thf('21', plain,
% 0.22/0.56      (![X24 : $i, X25 : $i, X26 : $i]:
% 0.22/0.56         ((v1_relat_1 @ X24)
% 0.22/0.56          | ~ (m1_subset_1 @ X24 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X25 @ X26))))),
% 0.22/0.56      inference('cnf', [status(esa)], [cc1_relset_1])).
% 0.22/0.56  thf('22', plain, ((v1_relat_1 @ sk_C)),
% 0.22/0.56      inference('sup-', [status(thm)], ['20', '21'])).
% 0.22/0.56  thf('23', plain, ((r1_tarski @ (k1_relat_1 @ sk_C) @ (k1_tarski @ sk_A))),
% 0.22/0.56      inference('demod', [status(thm)], ['19', '22'])).
% 0.22/0.56  thf(t69_enumset1, axiom,
% 0.22/0.56    (![A:$i]: ( ( k2_tarski @ A @ A ) = ( k1_tarski @ A ) ))).
% 0.22/0.56  thf('24', plain, (![X1 : $i]: ((k2_tarski @ X1 @ X1) = (k1_tarski @ X1))),
% 0.22/0.56      inference('cnf', [status(esa)], [t69_enumset1])).
% 0.22/0.56  thf(t70_enumset1, axiom,
% 0.22/0.56    (![A:$i,B:$i]: ( ( k1_enumset1 @ A @ A @ B ) = ( k2_tarski @ A @ B ) ))).
% 0.22/0.56  thf('25', plain,
% 0.22/0.56      (![X2 : $i, X3 : $i]:
% 0.22/0.56         ((k1_enumset1 @ X2 @ X2 @ X3) = (k2_tarski @ X2 @ X3))),
% 0.22/0.56      inference('cnf', [status(esa)], [t70_enumset1])).
% 0.22/0.56  thf(t142_zfmisc_1, axiom,
% 0.22/0.56    (![A:$i,B:$i,C:$i,D:$i]:
% 0.22/0.56     ( ( r1_tarski @ D @ ( k1_enumset1 @ A @ B @ C ) ) <=>
% 0.22/0.56       ( ~( ( ( D ) != ( k1_xboole_0 ) ) & ( ( D ) != ( k1_tarski @ A ) ) & 
% 0.22/0.56            ( ( D ) != ( k1_tarski @ B ) ) & ( ( D ) != ( k1_tarski @ C ) ) & 
% 0.22/0.56            ( ( D ) != ( k2_tarski @ A @ B ) ) & 
% 0.22/0.56            ( ( D ) != ( k2_tarski @ B @ C ) ) & 
% 0.22/0.56            ( ( D ) != ( k2_tarski @ A @ C ) ) & 
% 0.22/0.56            ( ( D ) != ( k1_enumset1 @ A @ B @ C ) ) ) ) ))).
% 0.22/0.56  thf('26', plain,
% 0.22/0.56      (![X7 : $i, X8 : $i, X9 : $i, X10 : $i]:
% 0.22/0.56         (((X10) = (k1_enumset1 @ X7 @ X8 @ X9))
% 0.22/0.56          | ((X10) = (k2_tarski @ X7 @ X9))
% 0.22/0.56          | ((X10) = (k2_tarski @ X8 @ X9))
% 0.22/0.56          | ((X10) = (k2_tarski @ X7 @ X8))
% 0.22/0.56          | ((X10) = (k1_tarski @ X9))
% 0.22/0.56          | ((X10) = (k1_tarski @ X8))
% 0.22/0.56          | ((X10) = (k1_tarski @ X7))
% 0.22/0.56          | ((X10) = (k1_xboole_0))
% 0.22/0.56          | ~ (r1_tarski @ X10 @ (k1_enumset1 @ X7 @ X8 @ X9)))),
% 0.22/0.56      inference('cnf', [status(esa)], [t142_zfmisc_1])).
% 0.22/0.56  thf('27', plain,
% 0.22/0.56      (![X0 : $i, X1 : $i, X2 : $i]:
% 0.22/0.56         (~ (r1_tarski @ X2 @ (k2_tarski @ X1 @ X0))
% 0.22/0.56          | ((X2) = (k1_xboole_0))
% 0.22/0.56          | ((X2) = (k1_tarski @ X1))
% 0.22/0.56          | ((X2) = (k1_tarski @ X1))
% 0.22/0.56          | ((X2) = (k1_tarski @ X0))
% 0.22/0.56          | ((X2) = (k2_tarski @ X1 @ X1))
% 0.22/0.56          | ((X2) = (k2_tarski @ X1 @ X0))
% 0.22/0.56          | ((X2) = (k2_tarski @ X1 @ X0))
% 0.22/0.56          | ((X2) = (k1_enumset1 @ X1 @ X1 @ X0)))),
% 0.22/0.56      inference('sup-', [status(thm)], ['25', '26'])).
% 0.22/0.56  thf('28', plain,
% 0.22/0.56      (![X2 : $i, X3 : $i]:
% 0.22/0.56         ((k1_enumset1 @ X2 @ X2 @ X3) = (k2_tarski @ X2 @ X3))),
% 0.22/0.56      inference('cnf', [status(esa)], [t70_enumset1])).
% 0.22/0.56  thf('29', plain,
% 0.22/0.56      (![X0 : $i, X1 : $i, X2 : $i]:
% 0.22/0.56         (~ (r1_tarski @ X2 @ (k2_tarski @ X1 @ X0))
% 0.22/0.56          | ((X2) = (k1_xboole_0))
% 0.22/0.56          | ((X2) = (k1_tarski @ X1))
% 0.22/0.56          | ((X2) = (k1_tarski @ X1))
% 0.22/0.56          | ((X2) = (k1_tarski @ X0))
% 0.22/0.56          | ((X2) = (k2_tarski @ X1 @ X1))
% 0.22/0.56          | ((X2) = (k2_tarski @ X1 @ X0))
% 0.22/0.56          | ((X2) = (k2_tarski @ X1 @ X0))
% 0.22/0.56          | ((X2) = (k2_tarski @ X1 @ X0)))),
% 0.22/0.56      inference('demod', [status(thm)], ['27', '28'])).
% 0.22/0.56  thf('30', plain,
% 0.22/0.56      (![X0 : $i, X1 : $i, X2 : $i]:
% 0.22/0.56         (((X2) = (k2_tarski @ X1 @ X0))
% 0.22/0.56          | ((X2) = (k2_tarski @ X1 @ X1))
% 0.22/0.56          | ((X2) = (k1_tarski @ X0))
% 0.22/0.56          | ((X2) = (k1_tarski @ X1))
% 0.22/0.56          | ((X2) = (k1_xboole_0))
% 0.22/0.56          | ~ (r1_tarski @ X2 @ (k2_tarski @ X1 @ X0)))),
% 0.22/0.56      inference('simplify', [status(thm)], ['29'])).
% 0.22/0.56  thf('31', plain,
% 0.22/0.56      (![X0 : $i, X1 : $i]:
% 0.22/0.56         (~ (r1_tarski @ X1 @ (k1_tarski @ X0))
% 0.22/0.56          | ((X1) = (k1_xboole_0))
% 0.22/0.56          | ((X1) = (k1_tarski @ X0))
% 0.22/0.56          | ((X1) = (k1_tarski @ X0))
% 0.22/0.56          | ((X1) = (k2_tarski @ X0 @ X0))
% 0.22/0.56          | ((X1) = (k2_tarski @ X0 @ X0)))),
% 0.22/0.56      inference('sup-', [status(thm)], ['24', '30'])).
% 0.22/0.56  thf('32', plain,
% 0.22/0.56      (![X0 : $i, X1 : $i]:
% 0.22/0.56         (((X1) = (k2_tarski @ X0 @ X0))
% 0.22/0.56          | ((X1) = (k1_tarski @ X0))
% 0.22/0.56          | ((X1) = (k1_xboole_0))
% 0.22/0.56          | ~ (r1_tarski @ X1 @ (k1_tarski @ X0)))),
% 0.22/0.56      inference('simplify', [status(thm)], ['31'])).
% 0.22/0.56  thf('33', plain,
% 0.22/0.56      ((((k1_relat_1 @ sk_C) = (k1_xboole_0))
% 0.22/0.56        | ((k1_relat_1 @ sk_C) = (k1_tarski @ sk_A))
% 0.22/0.56        | ((k1_relat_1 @ sk_C) = (k2_tarski @ sk_A @ sk_A)))),
% 0.22/0.56      inference('sup-', [status(thm)], ['23', '32'])).
% 0.22/0.56  thf('34', plain, (![X1 : $i]: ((k2_tarski @ X1 @ X1) = (k1_tarski @ X1))),
% 0.22/0.56      inference('cnf', [status(esa)], [t69_enumset1])).
% 0.22/0.56  thf('35', plain,
% 0.22/0.56      ((((k1_relat_1 @ sk_C) = (k1_xboole_0))
% 0.22/0.56        | ((k1_relat_1 @ sk_C) = (k1_tarski @ sk_A))
% 0.22/0.56        | ((k1_relat_1 @ sk_C) = (k1_tarski @ sk_A)))),
% 0.22/0.56      inference('demod', [status(thm)], ['33', '34'])).
% 0.22/0.56  thf('36', plain,
% 0.22/0.56      ((((k1_relat_1 @ sk_C) = (k1_tarski @ sk_A))
% 0.22/0.56        | ((k1_relat_1 @ sk_C) = (k1_xboole_0)))),
% 0.22/0.56      inference('simplify', [status(thm)], ['35'])).
% 0.22/0.56  thf(t14_funct_1, axiom,
% 0.22/0.56    (![A:$i,B:$i]:
% 0.22/0.56     ( ( ( v1_relat_1 @ B ) & ( v1_funct_1 @ B ) ) =>
% 0.22/0.56       ( ( ( k1_relat_1 @ B ) = ( k1_tarski @ A ) ) =>
% 0.22/0.56         ( ( k2_relat_1 @ B ) = ( k1_tarski @ ( k1_funct_1 @ B @ A ) ) ) ) ))).
% 0.22/0.56  thf('37', plain,
% 0.22/0.56      (![X20 : $i, X21 : $i]:
% 0.22/0.56         (((k1_relat_1 @ X21) != (k1_tarski @ X20))
% 0.22/0.56          | ((k2_relat_1 @ X21) = (k1_tarski @ (k1_funct_1 @ X21 @ X20)))
% 0.22/0.56          | ~ (v1_funct_1 @ X21)
% 0.22/0.56          | ~ (v1_relat_1 @ X21))),
% 0.22/0.56      inference('cnf', [status(esa)], [t14_funct_1])).
% 0.22/0.56  thf('38', plain,
% 0.22/0.56      (![X0 : $i]:
% 0.22/0.56         (((k1_relat_1 @ X0) != (k1_relat_1 @ sk_C))
% 0.22/0.56          | ((k1_relat_1 @ sk_C) = (k1_xboole_0))
% 0.22/0.56          | ~ (v1_relat_1 @ X0)
% 0.22/0.56          | ~ (v1_funct_1 @ X0)
% 0.22/0.56          | ((k2_relat_1 @ X0) = (k1_tarski @ (k1_funct_1 @ X0 @ sk_A))))),
% 0.22/0.56      inference('sup-', [status(thm)], ['36', '37'])).
% 0.22/0.56  thf('39', plain,
% 0.22/0.56      ((((k2_relat_1 @ sk_C) = (k1_tarski @ (k1_funct_1 @ sk_C @ sk_A)))
% 0.22/0.56        | ~ (v1_funct_1 @ sk_C)
% 0.22/0.56        | ~ (v1_relat_1 @ sk_C)
% 0.22/0.56        | ((k1_relat_1 @ sk_C) = (k1_xboole_0)))),
% 0.22/0.56      inference('eq_res', [status(thm)], ['38'])).
% 0.22/0.56  thf('40', plain, ((v1_funct_1 @ sk_C)),
% 0.22/0.56      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.22/0.56  thf('41', plain, ((v1_relat_1 @ sk_C)),
% 0.22/0.56      inference('sup-', [status(thm)], ['20', '21'])).
% 0.22/0.56  thf('42', plain,
% 0.22/0.56      ((((k2_relat_1 @ sk_C) = (k1_tarski @ (k1_funct_1 @ sk_C @ sk_A)))
% 0.22/0.56        | ((k1_relat_1 @ sk_C) = (k1_xboole_0)))),
% 0.22/0.56      inference('demod', [status(thm)], ['39', '40', '41'])).
% 0.22/0.56  thf('43', plain,
% 0.22/0.56      (((k2_relset_1 @ (k1_tarski @ sk_A) @ sk_B_1 @ sk_C)
% 0.22/0.56         != (k1_tarski @ (k1_funct_1 @ sk_C @ sk_A)))),
% 0.22/0.56      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.22/0.56  thf('44', plain,
% 0.22/0.56      (((k2_relset_1 @ (k1_tarski @ sk_A) @ sk_B_1 @ sk_C)
% 0.22/0.56         = (k2_relat_1 @ sk_C))),
% 0.22/0.56      inference('sup-', [status(thm)], ['4', '5'])).
% 0.22/0.56  thf('45', plain,
% 0.22/0.56      (((k2_relat_1 @ sk_C) != (k1_tarski @ (k1_funct_1 @ sk_C @ sk_A)))),
% 0.22/0.56      inference('demod', [status(thm)], ['43', '44'])).
% 0.22/0.56  thf('46', plain, (((k1_relat_1 @ sk_C) = (k1_xboole_0))),
% 0.22/0.56      inference('simplify_reflect-', [status(thm)], ['42', '45'])).
% 0.22/0.56  thf(t64_relat_1, axiom,
% 0.22/0.56    (![A:$i]:
% 0.22/0.56     ( ( v1_relat_1 @ A ) =>
% 0.22/0.56       ( ( ( ( k1_relat_1 @ A ) = ( k1_xboole_0 ) ) | 
% 0.22/0.56           ( ( k2_relat_1 @ A ) = ( k1_xboole_0 ) ) ) =>
% 0.22/0.56         ( ( A ) = ( k1_xboole_0 ) ) ) ))).
% 0.22/0.56  thf('47', plain,
% 0.22/0.56      (![X18 : $i]:
% 0.22/0.56         (((k1_relat_1 @ X18) != (k1_xboole_0))
% 0.22/0.56          | ((X18) = (k1_xboole_0))
% 0.22/0.56          | ~ (v1_relat_1 @ X18))),
% 0.22/0.56      inference('cnf', [status(esa)], [t64_relat_1])).
% 0.22/0.56  thf('48', plain,
% 0.22/0.56      ((((k1_xboole_0) != (k1_xboole_0))
% 0.22/0.56        | ~ (v1_relat_1 @ sk_C)
% 0.22/0.56        | ((sk_C) = (k1_xboole_0)))),
% 0.22/0.56      inference('sup-', [status(thm)], ['46', '47'])).
% 0.22/0.56  thf('49', plain, ((v1_relat_1 @ sk_C)),
% 0.22/0.56      inference('sup-', [status(thm)], ['20', '21'])).
% 0.22/0.56  thf('50', plain,
% 0.22/0.56      ((((k1_xboole_0) != (k1_xboole_0)) | ((sk_C) = (k1_xboole_0)))),
% 0.22/0.56      inference('demod', [status(thm)], ['48', '49'])).
% 0.22/0.56  thf('51', plain, (((sk_C) = (k1_xboole_0))),
% 0.22/0.56      inference('simplify', [status(thm)], ['50'])).
% 0.22/0.56  thf(t60_relat_1, axiom,
% 0.22/0.56    (( ( k2_relat_1 @ k1_xboole_0 ) = ( k1_xboole_0 ) ) & 
% 0.22/0.56     ( ( k1_relat_1 @ k1_xboole_0 ) = ( k1_xboole_0 ) ))).
% 0.22/0.56  thf('52', plain, (((k2_relat_1 @ k1_xboole_0) = (k1_xboole_0))),
% 0.22/0.56      inference('cnf', [status(esa)], [t60_relat_1])).
% 0.22/0.56  thf('53', plain, (((sk_C) = (k1_xboole_0))),
% 0.22/0.56      inference('simplify', [status(thm)], ['50'])).
% 0.22/0.56  thf(t2_xboole_1, axiom, (![A:$i]: ( r1_tarski @ k1_xboole_0 @ A ))).
% 0.22/0.56  thf('54', plain, (![X0 : $i]: (r1_tarski @ k1_xboole_0 @ X0)),
% 0.22/0.56      inference('cnf', [status(esa)], [t2_xboole_1])).
% 0.22/0.56  thf('55', plain, (((k1_tarski @ sk_A) = (k1_xboole_0))),
% 0.22/0.56      inference('demod', [status(thm)], ['14', '51', '52', '53', '54'])).
% 0.22/0.56  thf(cc1_funct_1, axiom,
% 0.22/0.56    (![A:$i]: ( ( v1_xboole_0 @ A ) => ( v1_funct_1 @ A ) ))).
% 0.22/0.56  thf('56', plain, (![X19 : $i]: ((v1_funct_1 @ X19) | ~ (v1_xboole_0 @ X19))),
% 0.22/0.56      inference('cnf', [status(esa)], [cc1_funct_1])).
% 0.22/0.56  thf('57', plain, (((k1_relat_1 @ k1_xboole_0) = (k1_xboole_0))),
% 0.22/0.56      inference('cnf', [status(esa)], [t60_relat_1])).
% 0.22/0.56  thf('58', plain,
% 0.22/0.56      (![X20 : $i, X21 : $i]:
% 0.22/0.56         (((k1_relat_1 @ X21) != (k1_tarski @ X20))
% 0.22/0.56          | ((k2_relat_1 @ X21) = (k1_tarski @ (k1_funct_1 @ X21 @ X20)))
% 0.22/0.56          | ~ (v1_funct_1 @ X21)
% 0.22/0.56          | ~ (v1_relat_1 @ X21))),
% 0.22/0.56      inference('cnf', [status(esa)], [t14_funct_1])).
% 0.22/0.56  thf('59', plain,
% 0.22/0.56      (![X0 : $i]:
% 0.22/0.56         (((k1_xboole_0) != (k1_tarski @ X0))
% 0.22/0.56          | ~ (v1_relat_1 @ k1_xboole_0)
% 0.22/0.56          | ~ (v1_funct_1 @ k1_xboole_0)
% 0.22/0.56          | ((k2_relat_1 @ k1_xboole_0)
% 0.22/0.56              = (k1_tarski @ (k1_funct_1 @ k1_xboole_0 @ X0))))),
% 0.22/0.56      inference('sup-', [status(thm)], ['57', '58'])).
% 0.22/0.56  thf(t4_subset_1, axiom,
% 0.22/0.56    (![A:$i]: ( m1_subset_1 @ k1_xboole_0 @ ( k1_zfmisc_1 @ A ) ))).
% 0.22/0.56  thf('60', plain,
% 0.22/0.56      (![X12 : $i]: (m1_subset_1 @ k1_xboole_0 @ (k1_zfmisc_1 @ X12))),
% 0.22/0.56      inference('cnf', [status(esa)], [t4_subset_1])).
% 0.22/0.56  thf('61', plain,
% 0.22/0.56      (![X24 : $i, X25 : $i, X26 : $i]:
% 0.22/0.56         ((v1_relat_1 @ X24)
% 0.22/0.56          | ~ (m1_subset_1 @ X24 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X25 @ X26))))),
% 0.22/0.56      inference('cnf', [status(esa)], [cc1_relset_1])).
% 0.22/0.56  thf('62', plain, ((v1_relat_1 @ k1_xboole_0)),
% 0.22/0.56      inference('sup-', [status(thm)], ['60', '61'])).
% 0.22/0.56  thf('63', plain, (((k2_relat_1 @ k1_xboole_0) = (k1_xboole_0))),
% 0.22/0.56      inference('cnf', [status(esa)], [t60_relat_1])).
% 0.22/0.56  thf('64', plain,
% 0.22/0.56      (![X0 : $i]:
% 0.22/0.56         (((k1_xboole_0) != (k1_tarski @ X0))
% 0.22/0.56          | ~ (v1_funct_1 @ k1_xboole_0)
% 0.22/0.56          | ((k1_xboole_0) = (k1_tarski @ (k1_funct_1 @ k1_xboole_0 @ X0))))),
% 0.22/0.56      inference('demod', [status(thm)], ['59', '62', '63'])).
% 0.22/0.56  thf('65', plain,
% 0.22/0.56      (![X0 : $i]:
% 0.22/0.56         (~ (v1_xboole_0 @ k1_xboole_0)
% 0.22/0.56          | ((k1_xboole_0) = (k1_tarski @ (k1_funct_1 @ k1_xboole_0 @ X0)))
% 0.22/0.56          | ((k1_xboole_0) != (k1_tarski @ X0)))),
% 0.22/0.56      inference('sup-', [status(thm)], ['56', '64'])).
% 0.22/0.56  thf(fc1_xboole_0, axiom, (v1_xboole_0 @ k1_xboole_0)).
% 0.22/0.56  thf('66', plain, ((v1_xboole_0 @ k1_xboole_0)),
% 0.22/0.56      inference('cnf', [status(esa)], [fc1_xboole_0])).
% 0.22/0.56  thf('67', plain,
% 0.22/0.56      (![X0 : $i]:
% 0.22/0.56         (((k1_xboole_0) = (k1_tarski @ (k1_funct_1 @ k1_xboole_0 @ X0)))
% 0.22/0.56          | ((k1_xboole_0) != (k1_tarski @ X0)))),
% 0.22/0.56      inference('demod', [status(thm)], ['65', '66'])).
% 0.22/0.56  thf('68', plain,
% 0.22/0.56      ((((k1_xboole_0) != (k1_xboole_0))
% 0.22/0.56        | ((k1_xboole_0) = (k1_tarski @ (k1_funct_1 @ k1_xboole_0 @ sk_A))))),
% 0.22/0.56      inference('sup-', [status(thm)], ['55', '67'])).
% 0.22/0.56  thf('69', plain,
% 0.22/0.56      (((k1_xboole_0) = (k1_tarski @ (k1_funct_1 @ k1_xboole_0 @ sk_A)))),
% 0.22/0.56      inference('simplify', [status(thm)], ['68'])).
% 0.22/0.56  thf('70', plain,
% 0.22/0.56      (((k2_relat_1 @ sk_C) != (k1_tarski @ (k1_funct_1 @ sk_C @ sk_A)))),
% 0.22/0.56      inference('demod', [status(thm)], ['43', '44'])).
% 0.22/0.56  thf('71', plain, (((sk_C) = (k1_xboole_0))),
% 0.22/0.56      inference('simplify', [status(thm)], ['50'])).
% 0.22/0.56  thf('72', plain, (((k2_relat_1 @ k1_xboole_0) = (k1_xboole_0))),
% 0.22/0.56      inference('cnf', [status(esa)], [t60_relat_1])).
% 0.22/0.56  thf('73', plain, (((sk_C) = (k1_xboole_0))),
% 0.22/0.56      inference('simplify', [status(thm)], ['50'])).
% 0.22/0.56  thf('74', plain,
% 0.22/0.56      (((k1_xboole_0) != (k1_tarski @ (k1_funct_1 @ k1_xboole_0 @ sk_A)))),
% 0.22/0.56      inference('demod', [status(thm)], ['70', '71', '72', '73'])).
% 0.22/0.56  thf('75', plain, ($false),
% 0.22/0.56      inference('simplify_reflect-', [status(thm)], ['69', '74'])).
% 0.22/0.56  
% 0.22/0.56  % SZS output end Refutation
% 0.22/0.56  
% 0.22/0.57  % Zipperpin 1.5 exiting
%------------------------------------------------------------------------------
