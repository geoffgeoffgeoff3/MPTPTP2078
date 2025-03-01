%------------------------------------------------------------------------------
% File       : Zipperpin---2.0
% Problem    : MPT1290+2 : TPTP v7.4.0. Released v7.4.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_portfolio.sh /export/starexec/sandbox2/benchmark/theBenchmark.p /export/starexec/sandbox2/tmp/tmp.8nHIlz8VoT

% Computer   : n019.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Wed Dec 16 12:11:06 EST 2020

% Result     : Theorem 1.18s
% Output     : Refutation 1.18s
% Verified   : 
% Statistics : Number of formulae       :   28 (  34 expanded)
%              Number of leaves         :   13 (  17 expanded)
%              Depth                    :    7
%              Number of atoms          :  120 ( 182 expanded)
%              Number of equality atoms :    6 (   8 expanded)
%              Maximal formula depth    :   11 (   5 average)

% Comments   : 
%------------------------------------------------------------------------------
thf(sk_B_144_type,type,(
    sk_B_144: $i )).

thf(m1_subset_1_type,type,(
    m1_subset_1: $i > $i > $o )).

thf(r1_tarski_type,type,(
    r1_tarski: $i > $i > $o )).

thf(u1_struct_0_type,type,(
    u1_struct_0: $i > $i )).

thf(l1_struct_0_type,type,(
    l1_struct_0: $i > $o )).

thf(sk_A_37_type,type,(
    sk_A_37: $i )).

thf(k2_struct_0_type,type,(
    k2_struct_0: $i > $i )).

thf(k1_zfmisc_1_type,type,(
    k1_zfmisc_1: $i > $i )).

thf(k9_setfam_1_type,type,(
    k9_setfam_1: $i > $i )).

thf(t1_tops_2,conjecture,(
    ! [A: $i] :
      ( ( l1_struct_0 @ A )
     => ! [B: $i] :
          ( ( m1_subset_1 @ ( B @ ( k1_zfmisc_1 @ ( k1_zfmisc_1 @ ( u1_struct_0 @ A ) ) ) ) )
         => ( r1_tarski @ ( B @ ( k9_setfam_1 @ ( k2_struct_0 @ A ) ) ) ) ) ) )).

thf(zf_stmt_0,negated_conjecture,(
    ~ ! [A: $i] :
        ( ( l1_struct_0 @ A )
       => ! [B: $i] :
            ( ( m1_subset_1 @ ( B @ ( k1_zfmisc_1 @ ( k1_zfmisc_1 @ ( u1_struct_0 @ A ) ) ) ) )
           => ( r1_tarski @ ( B @ ( k9_setfam_1 @ ( k2_struct_0 @ A ) ) ) ) ) ) ),
    inference('cnf.neg',[status(esa)],[t1_tops_2])).

thf('0',plain,(
    ~ ( r1_tarski @ ( sk_B_144 @ ( k9_setfam_1 @ ( k2_struct_0 @ sk_A_37 ) ) ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(d3_struct_0,axiom,(
    ! [A: $i] :
      ( ( l1_struct_0 @ A )
     => ( ( k2_struct_0 @ A )
        = ( u1_struct_0 @ A ) ) ) )).

thf('1',plain,(
    ! [X5907: $i] :
      ( ( ( k2_struct_0 @ X5907 )
        = ( u1_struct_0 @ X5907 ) )
      | ~ ( l1_struct_0 @ X5907 ) ) ),
    inference(cnf,[status(esa)],[d3_struct_0])).

thf('2',plain,(
    m1_subset_1 @ ( sk_B_144 @ ( k1_zfmisc_1 @ ( k1_zfmisc_1 @ ( u1_struct_0 @ sk_A_37 ) ) ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(redefinition_k9_setfam_1,axiom,(
    ! [A: $i] :
      ( ( k9_setfam_1 @ A )
      = ( k1_zfmisc_1 @ A ) ) )).

thf('3',plain,(
    ! [X4951: $i] :
      ( ( k9_setfam_1 @ X4951 )
      = ( k1_zfmisc_1 @ X4951 ) ) ),
    inference(cnf,[status(esa)],[redefinition_k9_setfam_1])).

thf('4',plain,(
    ! [X4951: $i] :
      ( ( k9_setfam_1 @ X4951 )
      = ( k1_zfmisc_1 @ X4951 ) ) ),
    inference(cnf,[status(esa)],[redefinition_k9_setfam_1])).

thf('5',plain,(
    m1_subset_1 @ ( sk_B_144 @ ( k9_setfam_1 @ ( k9_setfam_1 @ ( u1_struct_0 @ sk_A_37 ) ) ) ) ),
    inference(demod,[status(thm)],['2','3','4'])).

thf('6',plain,
    ( ( m1_subset_1 @ ( sk_B_144 @ ( k9_setfam_1 @ ( k9_setfam_1 @ ( k2_struct_0 @ sk_A_37 ) ) ) ) )
    | ~ ( l1_struct_0 @ sk_A_37 ) ),
    inference('sup+',[status(thm)],['1','5'])).

thf('7',plain,(
    l1_struct_0 @ sk_A_37 ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('8',plain,(
    m1_subset_1 @ ( sk_B_144 @ ( k9_setfam_1 @ ( k9_setfam_1 @ ( k2_struct_0 @ sk_A_37 ) ) ) ) ),
    inference(demod,[status(thm)],['6','7'])).

thf(t3_subset,axiom,(
    ! [A: $i,B: $i] :
      ( ( m1_subset_1 @ ( A @ ( k1_zfmisc_1 @ B ) ) )
    <=> ( r1_tarski @ ( A @ B ) ) ) )).

thf('9',plain,(
    ! [X1964: $i,X1965: $i] :
      ( ( r1_tarski @ ( X1964 @ X1965 ) )
      | ~ ( m1_subset_1 @ ( X1964 @ ( k1_zfmisc_1 @ X1965 ) ) ) ) ),
    inference(cnf,[status(esa)],[t3_subset])).

thf('10',plain,(
    ! [X4951: $i] :
      ( ( k9_setfam_1 @ X4951 )
      = ( k1_zfmisc_1 @ X4951 ) ) ),
    inference(cnf,[status(esa)],[redefinition_k9_setfam_1])).

thf('11',plain,(
    ! [X1964: $i,X1965: $i] :
      ( ( r1_tarski @ ( X1964 @ X1965 ) )
      | ~ ( m1_subset_1 @ ( X1964 @ ( k9_setfam_1 @ X1965 ) ) ) ) ),
    inference(demod,[status(thm)],['9','10'])).

thf('12',plain,(
    r1_tarski @ ( sk_B_144 @ ( k9_setfam_1 @ ( k2_struct_0 @ sk_A_37 ) ) ) ),
    inference('sup-',[status(thm)],['8','11'])).

thf('13',plain,(
    $false ),
    inference(demod,[status(thm)],['0','12'])).

%------------------------------------------------------------------------------
