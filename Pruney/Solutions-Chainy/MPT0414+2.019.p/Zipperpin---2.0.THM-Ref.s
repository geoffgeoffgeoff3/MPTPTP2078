%------------------------------------------------------------------------------
% File       : Zipperpin---2.0
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_portfolio.sh /export/starexec/sandbox2/benchmark/theBenchmark.p /export/starexec/sandbox2/tmp/tmp.JUeEq2OQEJ

% Computer   : n009.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 13:39:09 EST 2020

% Result     : Theorem 0.22s
% Output     : Refutation 0.22s
% Verified   : 
% Statistics : Number of formulae       :   71 ( 427 expanded)
%              Number of leaves         :   10 ( 113 expanded)
%              Depth                    :   19
%              Number of atoms          : 1024 (8874 expanded)
%              Number of equality atoms :   42 ( 346 expanded)
%              Maximal formula depth    :   15 (   8 average)

% Comments   : 
%------------------------------------------------------------------------------
thf(k4_subset_1_type,type,(
    k4_subset_1: $i > $i > $i > $i )).

thf(k1_zfmisc_1_type,type,(
    k1_zfmisc_1: $i > $i )).

thf(r2_hidden_type,type,(
    r2_hidden: $i > $i > $o )).

thf(sk_E_type,type,(
    sk_E: $i > $i > $i > $i > $i )).

thf(m1_subset_1_type,type,(
    m1_subset_1: $i > $i > $o )).

thf(sk_A_type,type,(
    sk_A: $i )).

thf(sk_B_type,type,(
    sk_B: $i )).

thf(sk_C_type,type,(
    sk_C: $i )).

thf(t44_setfam_1,conjecture,(
    ! [A: $i,B: $i] :
      ( ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ ( k1_zfmisc_1 @ A ) ) )
     => ! [C: $i] :
          ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k1_zfmisc_1 @ A ) ) )
         => ( ! [D: $i] :
                ( ( m1_subset_1 @ D @ ( k1_zfmisc_1 @ A ) )
               => ( ( r2_hidden @ D @ B )
                <=> ( r2_hidden @ D @ C ) ) )
           => ( B = C ) ) ) ) )).

thf(zf_stmt_0,negated_conjecture,(
    ~ ! [A: $i,B: $i] :
        ( ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ ( k1_zfmisc_1 @ A ) ) )
       => ! [C: $i] :
            ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k1_zfmisc_1 @ A ) ) )
           => ( ! [D: $i] :
                  ( ( m1_subset_1 @ D @ ( k1_zfmisc_1 @ A ) )
                 => ( ( r2_hidden @ D @ B )
                  <=> ( r2_hidden @ D @ C ) ) )
             => ( B = C ) ) ) ) ),
    inference('cnf.neg',[status(esa)],[t44_setfam_1])).

thf('0',plain,(
    m1_subset_1 @ sk_B @ ( k1_zfmisc_1 @ ( k1_zfmisc_1 @ sk_A ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('1',plain,(
    m1_subset_1 @ sk_C @ ( k1_zfmisc_1 @ ( k1_zfmisc_1 @ sk_A ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('2',plain,(
    m1_subset_1 @ sk_B @ ( k1_zfmisc_1 @ ( k1_zfmisc_1 @ sk_A ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(t15_subset_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ A ) )
     => ! [C: $i] :
          ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ A ) )
         => ! [D: $i] :
              ( ( m1_subset_1 @ D @ ( k1_zfmisc_1 @ A ) )
             => ( ! [E: $i] :
                    ( ( m1_subset_1 @ E @ A )
                   => ( ( r2_hidden @ E @ B )
                    <=> ( ( r2_hidden @ E @ C )
                        | ( r2_hidden @ E @ D ) ) ) )
               => ( B
                  = ( k4_subset_1 @ A @ C @ D ) ) ) ) ) ) )).

thf('3',plain,(
    ! [X0: $i,X1: $i,X2: $i,X3: $i] :
      ( ~ ( m1_subset_1 @ X0 @ ( k1_zfmisc_1 @ X1 ) )
      | ( r2_hidden @ ( sk_E @ X2 @ X0 @ X3 @ X1 ) @ X3 )
      | ( r2_hidden @ ( sk_E @ X2 @ X0 @ X3 @ X1 ) @ X0 )
      | ( r2_hidden @ ( sk_E @ X2 @ X0 @ X3 @ X1 ) @ X2 )
      | ( X3
        = ( k4_subset_1 @ X1 @ X0 @ X2 ) )
      | ~ ( m1_subset_1 @ X2 @ ( k1_zfmisc_1 @ X1 ) )
      | ~ ( m1_subset_1 @ X3 @ ( k1_zfmisc_1 @ X1 ) ) ) ),
    inference(cnf,[status(esa)],[t15_subset_1])).

thf('4',plain,(
    ! [X0: $i,X1: $i] :
      ( ~ ( m1_subset_1 @ X0 @ ( k1_zfmisc_1 @ ( k1_zfmisc_1 @ sk_A ) ) )
      | ~ ( m1_subset_1 @ X1 @ ( k1_zfmisc_1 @ ( k1_zfmisc_1 @ sk_A ) ) )
      | ( X0
        = ( k4_subset_1 @ ( k1_zfmisc_1 @ sk_A ) @ sk_B @ X1 ) )
      | ( r2_hidden @ ( sk_E @ X1 @ sk_B @ X0 @ ( k1_zfmisc_1 @ sk_A ) ) @ X1 )
      | ( r2_hidden @ ( sk_E @ X1 @ sk_B @ X0 @ ( k1_zfmisc_1 @ sk_A ) ) @ sk_B )
      | ( r2_hidden @ ( sk_E @ X1 @ sk_B @ X0 @ ( k1_zfmisc_1 @ sk_A ) ) @ X0 ) ) ),
    inference('sup-',[status(thm)],['2','3'])).

thf('5',plain,(
    ! [X0: $i] :
      ( ( r2_hidden @ ( sk_E @ X0 @ sk_B @ sk_C @ ( k1_zfmisc_1 @ sk_A ) ) @ sk_C )
      | ( r2_hidden @ ( sk_E @ X0 @ sk_B @ sk_C @ ( k1_zfmisc_1 @ sk_A ) ) @ sk_B )
      | ( r2_hidden @ ( sk_E @ X0 @ sk_B @ sk_C @ ( k1_zfmisc_1 @ sk_A ) ) @ X0 )
      | ( sk_C
        = ( k4_subset_1 @ ( k1_zfmisc_1 @ sk_A ) @ sk_B @ X0 ) )
      | ~ ( m1_subset_1 @ X0 @ ( k1_zfmisc_1 @ ( k1_zfmisc_1 @ sk_A ) ) ) ) ),
    inference('sup-',[status(thm)],['1','4'])).

thf('6',plain,
    ( ( sk_C
      = ( k4_subset_1 @ ( k1_zfmisc_1 @ sk_A ) @ sk_B @ sk_B ) )
    | ( r2_hidden @ ( sk_E @ sk_B @ sk_B @ sk_C @ ( k1_zfmisc_1 @ sk_A ) ) @ sk_B )
    | ( r2_hidden @ ( sk_E @ sk_B @ sk_B @ sk_C @ ( k1_zfmisc_1 @ sk_A ) ) @ sk_B )
    | ( r2_hidden @ ( sk_E @ sk_B @ sk_B @ sk_C @ ( k1_zfmisc_1 @ sk_A ) ) @ sk_C ) ),
    inference('sup-',[status(thm)],['0','5'])).

thf('7',plain,(
    m1_subset_1 @ sk_B @ ( k1_zfmisc_1 @ ( k1_zfmisc_1 @ sk_A ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('8',plain,(
    m1_subset_1 @ sk_B @ ( k1_zfmisc_1 @ ( k1_zfmisc_1 @ sk_A ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('9',plain,(
    ! [X0: $i,X1: $i] :
      ( ~ ( m1_subset_1 @ X0 @ ( k1_zfmisc_1 @ ( k1_zfmisc_1 @ sk_A ) ) )
      | ~ ( m1_subset_1 @ X1 @ ( k1_zfmisc_1 @ ( k1_zfmisc_1 @ sk_A ) ) )
      | ( X0
        = ( k4_subset_1 @ ( k1_zfmisc_1 @ sk_A ) @ sk_B @ X1 ) )
      | ( r2_hidden @ ( sk_E @ X1 @ sk_B @ X0 @ ( k1_zfmisc_1 @ sk_A ) ) @ X1 )
      | ( r2_hidden @ ( sk_E @ X1 @ sk_B @ X0 @ ( k1_zfmisc_1 @ sk_A ) ) @ sk_B )
      | ( r2_hidden @ ( sk_E @ X1 @ sk_B @ X0 @ ( k1_zfmisc_1 @ sk_A ) ) @ X0 ) ) ),
    inference('sup-',[status(thm)],['2','3'])).

thf('10',plain,(
    ! [X0: $i] :
      ( ( r2_hidden @ ( sk_E @ X0 @ sk_B @ sk_B @ ( k1_zfmisc_1 @ sk_A ) ) @ sk_B )
      | ( r2_hidden @ ( sk_E @ X0 @ sk_B @ sk_B @ ( k1_zfmisc_1 @ sk_A ) ) @ sk_B )
      | ( r2_hidden @ ( sk_E @ X0 @ sk_B @ sk_B @ ( k1_zfmisc_1 @ sk_A ) ) @ X0 )
      | ( sk_B
        = ( k4_subset_1 @ ( k1_zfmisc_1 @ sk_A ) @ sk_B @ X0 ) )
      | ~ ( m1_subset_1 @ X0 @ ( k1_zfmisc_1 @ ( k1_zfmisc_1 @ sk_A ) ) ) ) ),
    inference('sup-',[status(thm)],['8','9'])).

thf('11',plain,(
    ! [X0: $i] :
      ( ~ ( m1_subset_1 @ X0 @ ( k1_zfmisc_1 @ ( k1_zfmisc_1 @ sk_A ) ) )
      | ( sk_B
        = ( k4_subset_1 @ ( k1_zfmisc_1 @ sk_A ) @ sk_B @ X0 ) )
      | ( r2_hidden @ ( sk_E @ X0 @ sk_B @ sk_B @ ( k1_zfmisc_1 @ sk_A ) ) @ X0 )
      | ( r2_hidden @ ( sk_E @ X0 @ sk_B @ sk_B @ ( k1_zfmisc_1 @ sk_A ) ) @ sk_B ) ) ),
    inference(simplify,[status(thm)],['10'])).

thf('12',plain,
    ( ( r2_hidden @ ( sk_E @ sk_B @ sk_B @ sk_B @ ( k1_zfmisc_1 @ sk_A ) ) @ sk_B )
    | ( r2_hidden @ ( sk_E @ sk_B @ sk_B @ sk_B @ ( k1_zfmisc_1 @ sk_A ) ) @ sk_B )
    | ( sk_B
      = ( k4_subset_1 @ ( k1_zfmisc_1 @ sk_A ) @ sk_B @ sk_B ) ) ),
    inference('sup-',[status(thm)],['7','11'])).

thf('13',plain,
    ( ( sk_B
      = ( k4_subset_1 @ ( k1_zfmisc_1 @ sk_A ) @ sk_B @ sk_B ) )
    | ( r2_hidden @ ( sk_E @ sk_B @ sk_B @ sk_B @ ( k1_zfmisc_1 @ sk_A ) ) @ sk_B ) ),
    inference(simplify,[status(thm)],['12'])).

thf('14',plain,(
    m1_subset_1 @ sk_B @ ( k1_zfmisc_1 @ ( k1_zfmisc_1 @ sk_A ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('15',plain,(
    ! [X0: $i,X1: $i,X2: $i,X3: $i] :
      ( ~ ( m1_subset_1 @ X0 @ ( k1_zfmisc_1 @ X1 ) )
      | ~ ( r2_hidden @ ( sk_E @ X2 @ X0 @ X3 @ X1 ) @ X3 )
      | ~ ( r2_hidden @ ( sk_E @ X2 @ X0 @ X3 @ X1 ) @ X2 )
      | ( X3
        = ( k4_subset_1 @ X1 @ X0 @ X2 ) )
      | ~ ( m1_subset_1 @ X2 @ ( k1_zfmisc_1 @ X1 ) )
      | ~ ( m1_subset_1 @ X3 @ ( k1_zfmisc_1 @ X1 ) ) ) ),
    inference(cnf,[status(esa)],[t15_subset_1])).

thf('16',plain,(
    ! [X0: $i,X1: $i] :
      ( ~ ( m1_subset_1 @ X0 @ ( k1_zfmisc_1 @ ( k1_zfmisc_1 @ sk_A ) ) )
      | ~ ( m1_subset_1 @ X1 @ ( k1_zfmisc_1 @ ( k1_zfmisc_1 @ sk_A ) ) )
      | ( X0
        = ( k4_subset_1 @ ( k1_zfmisc_1 @ sk_A ) @ sk_B @ X1 ) )
      | ~ ( r2_hidden @ ( sk_E @ X1 @ sk_B @ X0 @ ( k1_zfmisc_1 @ sk_A ) ) @ X1 )
      | ~ ( r2_hidden @ ( sk_E @ X1 @ sk_B @ X0 @ ( k1_zfmisc_1 @ sk_A ) ) @ X0 ) ) ),
    inference('sup-',[status(thm)],['14','15'])).

thf('17',plain,
    ( ( sk_B
      = ( k4_subset_1 @ ( k1_zfmisc_1 @ sk_A ) @ sk_B @ sk_B ) )
    | ~ ( r2_hidden @ ( sk_E @ sk_B @ sk_B @ sk_B @ ( k1_zfmisc_1 @ sk_A ) ) @ sk_B )
    | ( sk_B
      = ( k4_subset_1 @ ( k1_zfmisc_1 @ sk_A ) @ sk_B @ sk_B ) )
    | ~ ( m1_subset_1 @ sk_B @ ( k1_zfmisc_1 @ ( k1_zfmisc_1 @ sk_A ) ) )
    | ~ ( m1_subset_1 @ sk_B @ ( k1_zfmisc_1 @ ( k1_zfmisc_1 @ sk_A ) ) ) ),
    inference('sup-',[status(thm)],['13','16'])).

thf('18',plain,(
    m1_subset_1 @ sk_B @ ( k1_zfmisc_1 @ ( k1_zfmisc_1 @ sk_A ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('19',plain,(
    m1_subset_1 @ sk_B @ ( k1_zfmisc_1 @ ( k1_zfmisc_1 @ sk_A ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('20',plain,
    ( ( sk_B
      = ( k4_subset_1 @ ( k1_zfmisc_1 @ sk_A ) @ sk_B @ sk_B ) )
    | ~ ( r2_hidden @ ( sk_E @ sk_B @ sk_B @ sk_B @ ( k1_zfmisc_1 @ sk_A ) ) @ sk_B )
    | ( sk_B
      = ( k4_subset_1 @ ( k1_zfmisc_1 @ sk_A ) @ sk_B @ sk_B ) ) ),
    inference(demod,[status(thm)],['17','18','19'])).

thf('21',plain,
    ( ~ ( r2_hidden @ ( sk_E @ sk_B @ sk_B @ sk_B @ ( k1_zfmisc_1 @ sk_A ) ) @ sk_B )
    | ( sk_B
      = ( k4_subset_1 @ ( k1_zfmisc_1 @ sk_A ) @ sk_B @ sk_B ) ) ),
    inference(simplify,[status(thm)],['20'])).

thf('22',plain,
    ( ( sk_B
      = ( k4_subset_1 @ ( k1_zfmisc_1 @ sk_A ) @ sk_B @ sk_B ) )
    | ( r2_hidden @ ( sk_E @ sk_B @ sk_B @ sk_B @ ( k1_zfmisc_1 @ sk_A ) ) @ sk_B ) ),
    inference(simplify,[status(thm)],['12'])).

thf('23',plain,
    ( sk_B
    = ( k4_subset_1 @ ( k1_zfmisc_1 @ sk_A ) @ sk_B @ sk_B ) ),
    inference(clc,[status(thm)],['21','22'])).

thf('24',plain,
    ( ( sk_C = sk_B )
    | ( r2_hidden @ ( sk_E @ sk_B @ sk_B @ sk_C @ ( k1_zfmisc_1 @ sk_A ) ) @ sk_B )
    | ( r2_hidden @ ( sk_E @ sk_B @ sk_B @ sk_C @ ( k1_zfmisc_1 @ sk_A ) ) @ sk_B )
    | ( r2_hidden @ ( sk_E @ sk_B @ sk_B @ sk_C @ ( k1_zfmisc_1 @ sk_A ) ) @ sk_C ) ),
    inference(demod,[status(thm)],['6','23'])).

thf('25',plain,
    ( ( r2_hidden @ ( sk_E @ sk_B @ sk_B @ sk_C @ ( k1_zfmisc_1 @ sk_A ) ) @ sk_C )
    | ( r2_hidden @ ( sk_E @ sk_B @ sk_B @ sk_C @ ( k1_zfmisc_1 @ sk_A ) ) @ sk_B )
    | ( sk_C = sk_B ) ),
    inference(simplify,[status(thm)],['24'])).

thf('26',plain,(
    sk_B != sk_C ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('27',plain,
    ( ( r2_hidden @ ( sk_E @ sk_B @ sk_B @ sk_C @ ( k1_zfmisc_1 @ sk_A ) ) @ sk_C )
    | ( r2_hidden @ ( sk_E @ sk_B @ sk_B @ sk_C @ ( k1_zfmisc_1 @ sk_A ) ) @ sk_B ) ),
    inference('simplify_reflect-',[status(thm)],['25','26'])).

thf('28',plain,(
    m1_subset_1 @ sk_B @ ( k1_zfmisc_1 @ ( k1_zfmisc_1 @ sk_A ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('29',plain,(
    m1_subset_1 @ sk_C @ ( k1_zfmisc_1 @ ( k1_zfmisc_1 @ sk_A ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('30',plain,(
    m1_subset_1 @ sk_B @ ( k1_zfmisc_1 @ ( k1_zfmisc_1 @ sk_A ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('31',plain,(
    ! [X0: $i,X1: $i,X2: $i,X3: $i] :
      ( ~ ( m1_subset_1 @ X0 @ ( k1_zfmisc_1 @ X1 ) )
      | ( m1_subset_1 @ ( sk_E @ X2 @ X0 @ X3 @ X1 ) @ X1 )
      | ( X3
        = ( k4_subset_1 @ X1 @ X0 @ X2 ) )
      | ~ ( m1_subset_1 @ X2 @ ( k1_zfmisc_1 @ X1 ) )
      | ~ ( m1_subset_1 @ X3 @ ( k1_zfmisc_1 @ X1 ) ) ) ),
    inference(cnf,[status(esa)],[t15_subset_1])).

thf('32',plain,(
    ! [X0: $i,X1: $i] :
      ( ~ ( m1_subset_1 @ X0 @ ( k1_zfmisc_1 @ ( k1_zfmisc_1 @ sk_A ) ) )
      | ~ ( m1_subset_1 @ X1 @ ( k1_zfmisc_1 @ ( k1_zfmisc_1 @ sk_A ) ) )
      | ( X0
        = ( k4_subset_1 @ ( k1_zfmisc_1 @ sk_A ) @ sk_B @ X1 ) )
      | ( m1_subset_1 @ ( sk_E @ X1 @ sk_B @ X0 @ ( k1_zfmisc_1 @ sk_A ) ) @ ( k1_zfmisc_1 @ sk_A ) ) ) ),
    inference('sup-',[status(thm)],['30','31'])).

thf('33',plain,(
    ! [X0: $i] :
      ( ( m1_subset_1 @ ( sk_E @ X0 @ sk_B @ sk_C @ ( k1_zfmisc_1 @ sk_A ) ) @ ( k1_zfmisc_1 @ sk_A ) )
      | ( sk_C
        = ( k4_subset_1 @ ( k1_zfmisc_1 @ sk_A ) @ sk_B @ X0 ) )
      | ~ ( m1_subset_1 @ X0 @ ( k1_zfmisc_1 @ ( k1_zfmisc_1 @ sk_A ) ) ) ) ),
    inference('sup-',[status(thm)],['29','32'])).

thf('34',plain,
    ( ( sk_C
      = ( k4_subset_1 @ ( k1_zfmisc_1 @ sk_A ) @ sk_B @ sk_B ) )
    | ( m1_subset_1 @ ( sk_E @ sk_B @ sk_B @ sk_C @ ( k1_zfmisc_1 @ sk_A ) ) @ ( k1_zfmisc_1 @ sk_A ) ) ),
    inference('sup-',[status(thm)],['28','33'])).

thf('35',plain,(
    ! [X4: $i] :
      ( ~ ( r2_hidden @ X4 @ sk_C )
      | ( r2_hidden @ X4 @ sk_B )
      | ~ ( m1_subset_1 @ X4 @ ( k1_zfmisc_1 @ sk_A ) ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('36',plain,
    ( ( sk_C
      = ( k4_subset_1 @ ( k1_zfmisc_1 @ sk_A ) @ sk_B @ sk_B ) )
    | ( r2_hidden @ ( sk_E @ sk_B @ sk_B @ sk_C @ ( k1_zfmisc_1 @ sk_A ) ) @ sk_B )
    | ~ ( r2_hidden @ ( sk_E @ sk_B @ sk_B @ sk_C @ ( k1_zfmisc_1 @ sk_A ) ) @ sk_C ) ),
    inference('sup-',[status(thm)],['34','35'])).

thf('37',plain,
    ( sk_B
    = ( k4_subset_1 @ ( k1_zfmisc_1 @ sk_A ) @ sk_B @ sk_B ) ),
    inference(clc,[status(thm)],['21','22'])).

thf('38',plain,
    ( ( sk_C = sk_B )
    | ( r2_hidden @ ( sk_E @ sk_B @ sk_B @ sk_C @ ( k1_zfmisc_1 @ sk_A ) ) @ sk_B )
    | ~ ( r2_hidden @ ( sk_E @ sk_B @ sk_B @ sk_C @ ( k1_zfmisc_1 @ sk_A ) ) @ sk_C ) ),
    inference(demod,[status(thm)],['36','37'])).

thf('39',plain,(
    sk_B != sk_C ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('40',plain,
    ( ( r2_hidden @ ( sk_E @ sk_B @ sk_B @ sk_C @ ( k1_zfmisc_1 @ sk_A ) ) @ sk_B )
    | ~ ( r2_hidden @ ( sk_E @ sk_B @ sk_B @ sk_C @ ( k1_zfmisc_1 @ sk_A ) ) @ sk_C ) ),
    inference('simplify_reflect-',[status(thm)],['38','39'])).

thf('41',plain,(
    r2_hidden @ ( sk_E @ sk_B @ sk_B @ sk_C @ ( k1_zfmisc_1 @ sk_A ) ) @ sk_B ),
    inference(clc,[status(thm)],['27','40'])).

thf('42',plain,(
    ! [X0: $i,X1: $i] :
      ( ~ ( m1_subset_1 @ X0 @ ( k1_zfmisc_1 @ ( k1_zfmisc_1 @ sk_A ) ) )
      | ~ ( m1_subset_1 @ X1 @ ( k1_zfmisc_1 @ ( k1_zfmisc_1 @ sk_A ) ) )
      | ( X0
        = ( k4_subset_1 @ ( k1_zfmisc_1 @ sk_A ) @ sk_B @ X1 ) )
      | ~ ( r2_hidden @ ( sk_E @ X1 @ sk_B @ X0 @ ( k1_zfmisc_1 @ sk_A ) ) @ X1 )
      | ~ ( r2_hidden @ ( sk_E @ X1 @ sk_B @ X0 @ ( k1_zfmisc_1 @ sk_A ) ) @ X0 ) ) ),
    inference('sup-',[status(thm)],['14','15'])).

thf('43',plain,
    ( ~ ( r2_hidden @ ( sk_E @ sk_B @ sk_B @ sk_C @ ( k1_zfmisc_1 @ sk_A ) ) @ sk_C )
    | ( sk_C
      = ( k4_subset_1 @ ( k1_zfmisc_1 @ sk_A ) @ sk_B @ sk_B ) )
    | ~ ( m1_subset_1 @ sk_B @ ( k1_zfmisc_1 @ ( k1_zfmisc_1 @ sk_A ) ) )
    | ~ ( m1_subset_1 @ sk_C @ ( k1_zfmisc_1 @ ( k1_zfmisc_1 @ sk_A ) ) ) ),
    inference('sup-',[status(thm)],['41','42'])).

thf('44',plain,
    ( sk_B
    = ( k4_subset_1 @ ( k1_zfmisc_1 @ sk_A ) @ sk_B @ sk_B ) ),
    inference(clc,[status(thm)],['21','22'])).

thf('45',plain,(
    m1_subset_1 @ sk_B @ ( k1_zfmisc_1 @ ( k1_zfmisc_1 @ sk_A ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('46',plain,(
    m1_subset_1 @ sk_C @ ( k1_zfmisc_1 @ ( k1_zfmisc_1 @ sk_A ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('47',plain,
    ( ~ ( r2_hidden @ ( sk_E @ sk_B @ sk_B @ sk_C @ ( k1_zfmisc_1 @ sk_A ) ) @ sk_C )
    | ( sk_C = sk_B ) ),
    inference(demod,[status(thm)],['43','44','45','46'])).

thf('48',plain,(
    sk_B != sk_C ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('49',plain,(
    ~ ( r2_hidden @ ( sk_E @ sk_B @ sk_B @ sk_C @ ( k1_zfmisc_1 @ sk_A ) ) @ sk_C ) ),
    inference('simplify_reflect-',[status(thm)],['47','48'])).

thf('50',plain,
    ( ( sk_C
      = ( k4_subset_1 @ ( k1_zfmisc_1 @ sk_A ) @ sk_B @ sk_B ) )
    | ( m1_subset_1 @ ( sk_E @ sk_B @ sk_B @ sk_C @ ( k1_zfmisc_1 @ sk_A ) ) @ ( k1_zfmisc_1 @ sk_A ) ) ),
    inference('sup-',[status(thm)],['28','33'])).

thf('51',plain,(
    ! [X4: $i] :
      ( ~ ( r2_hidden @ X4 @ sk_B )
      | ( r2_hidden @ X4 @ sk_C )
      | ~ ( m1_subset_1 @ X4 @ ( k1_zfmisc_1 @ sk_A ) ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('52',plain,
    ( ( sk_C
      = ( k4_subset_1 @ ( k1_zfmisc_1 @ sk_A ) @ sk_B @ sk_B ) )
    | ( r2_hidden @ ( sk_E @ sk_B @ sk_B @ sk_C @ ( k1_zfmisc_1 @ sk_A ) ) @ sk_C )
    | ~ ( r2_hidden @ ( sk_E @ sk_B @ sk_B @ sk_C @ ( k1_zfmisc_1 @ sk_A ) ) @ sk_B ) ),
    inference('sup-',[status(thm)],['50','51'])).

thf('53',plain,
    ( sk_B
    = ( k4_subset_1 @ ( k1_zfmisc_1 @ sk_A ) @ sk_B @ sk_B ) ),
    inference(clc,[status(thm)],['21','22'])).

thf('54',plain,
    ( ( sk_C = sk_B )
    | ( r2_hidden @ ( sk_E @ sk_B @ sk_B @ sk_C @ ( k1_zfmisc_1 @ sk_A ) ) @ sk_C )
    | ~ ( r2_hidden @ ( sk_E @ sk_B @ sk_B @ sk_C @ ( k1_zfmisc_1 @ sk_A ) ) @ sk_B ) ),
    inference(demod,[status(thm)],['52','53'])).

thf('55',plain,(
    sk_B != sk_C ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('56',plain,
    ( ( r2_hidden @ ( sk_E @ sk_B @ sk_B @ sk_C @ ( k1_zfmisc_1 @ sk_A ) ) @ sk_C )
    | ~ ( r2_hidden @ ( sk_E @ sk_B @ sk_B @ sk_C @ ( k1_zfmisc_1 @ sk_A ) ) @ sk_B ) ),
    inference('simplify_reflect-',[status(thm)],['54','55'])).

thf('57',plain,(
    r2_hidden @ ( sk_E @ sk_B @ sk_B @ sk_C @ ( k1_zfmisc_1 @ sk_A ) ) @ sk_B ),
    inference(clc,[status(thm)],['27','40'])).

thf('58',plain,(
    r2_hidden @ ( sk_E @ sk_B @ sk_B @ sk_C @ ( k1_zfmisc_1 @ sk_A ) ) @ sk_C ),
    inference(demod,[status(thm)],['56','57'])).

thf('59',plain,(
    $false ),
    inference(demod,[status(thm)],['49','58'])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.11/0.14  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.11/0.15  % Command    : run_portfolio.sh /export/starexec/sandbox2/benchmark/theBenchmark.p /export/starexec/sandbox2/tmp/tmp.JUeEq2OQEJ
% 0.15/0.36  % Computer   : n009.cluster.edu
% 0.15/0.36  % Model      : x86_64 x86_64
% 0.15/0.36  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.15/0.36  % Memory     : 8042.1875MB
% 0.15/0.36  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.15/0.36  % CPULimit   : 60
% 0.15/0.36  % DateTime   : Tue Dec  1 17:28:56 EST 2020
% 0.15/0.36  % CPUTime    : 
% 0.15/0.36  % Running portfolio for 600 s
% 0.15/0.36  % File         : /export/starexec/sandbox2/benchmark/theBenchmark.p
% 0.15/0.36  % Number of cores: 8
% 0.15/0.36  % Python version: Python 3.6.8
% 0.15/0.36  % Running in FO mode
% 0.22/0.58  % Running /export/starexec/sandbox2/solver/bin/fo/fo7.sh for 78
% 0.22/0.58  % Solved by: fo/fo7.sh
% 0.22/0.58  To remain in the chosen logic fragment, unification with booleans has been disabled.
% 0.22/0.58  % done 118 iterations in 0.114s
% 0.22/0.58  % SZS status Theorem for '/export/starexec/sandbox2/benchmark/theBenchmark.p'
% 0.22/0.58  % SZS output start Refutation
% 0.22/0.58  thf(k4_subset_1_type, type, k4_subset_1: $i > $i > $i > $i).
% 0.22/0.58  thf(k1_zfmisc_1_type, type, k1_zfmisc_1: $i > $i).
% 0.22/0.58  thf(r2_hidden_type, type, r2_hidden: $i > $i > $o).
% 0.22/0.58  thf(sk_E_type, type, sk_E: $i > $i > $i > $i > $i).
% 0.22/0.58  thf(m1_subset_1_type, type, m1_subset_1: $i > $i > $o).
% 0.22/0.58  thf(sk_A_type, type, sk_A: $i).
% 0.22/0.58  thf(sk_B_type, type, sk_B: $i).
% 0.22/0.58  thf(sk_C_type, type, sk_C: $i).
% 0.22/0.58  thf(t44_setfam_1, conjecture,
% 0.22/0.58    (![A:$i,B:$i]:
% 0.22/0.58     ( ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ ( k1_zfmisc_1 @ A ) ) ) =>
% 0.22/0.58       ( ![C:$i]:
% 0.22/0.58         ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k1_zfmisc_1 @ A ) ) ) =>
% 0.22/0.58           ( ( ![D:$i]:
% 0.22/0.58               ( ( m1_subset_1 @ D @ ( k1_zfmisc_1 @ A ) ) =>
% 0.22/0.58                 ( ( r2_hidden @ D @ B ) <=> ( r2_hidden @ D @ C ) ) ) ) =>
% 0.22/0.58             ( ( B ) = ( C ) ) ) ) ) ))).
% 0.22/0.58  thf(zf_stmt_0, negated_conjecture,
% 0.22/0.58    (~( ![A:$i,B:$i]:
% 0.22/0.58        ( ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ ( k1_zfmisc_1 @ A ) ) ) =>
% 0.22/0.58          ( ![C:$i]:
% 0.22/0.58            ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k1_zfmisc_1 @ A ) ) ) =>
% 0.22/0.58              ( ( ![D:$i]:
% 0.22/0.58                  ( ( m1_subset_1 @ D @ ( k1_zfmisc_1 @ A ) ) =>
% 0.22/0.58                    ( ( r2_hidden @ D @ B ) <=> ( r2_hidden @ D @ C ) ) ) ) =>
% 0.22/0.58                ( ( B ) = ( C ) ) ) ) ) ) )),
% 0.22/0.58    inference('cnf.neg', [status(esa)], [t44_setfam_1])).
% 0.22/0.58  thf('0', plain,
% 0.22/0.58      ((m1_subset_1 @ sk_B @ (k1_zfmisc_1 @ (k1_zfmisc_1 @ sk_A)))),
% 0.22/0.58      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.22/0.58  thf('1', plain,
% 0.22/0.58      ((m1_subset_1 @ sk_C @ (k1_zfmisc_1 @ (k1_zfmisc_1 @ sk_A)))),
% 0.22/0.58      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.22/0.58  thf('2', plain,
% 0.22/0.58      ((m1_subset_1 @ sk_B @ (k1_zfmisc_1 @ (k1_zfmisc_1 @ sk_A)))),
% 0.22/0.58      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.22/0.58  thf(t15_subset_1, axiom,
% 0.22/0.58    (![A:$i,B:$i]:
% 0.22/0.58     ( ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ A ) ) =>
% 0.22/0.58       ( ![C:$i]:
% 0.22/0.58         ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ A ) ) =>
% 0.22/0.58           ( ![D:$i]:
% 0.22/0.58             ( ( m1_subset_1 @ D @ ( k1_zfmisc_1 @ A ) ) =>
% 0.22/0.58               ( ( ![E:$i]:
% 0.22/0.58                   ( ( m1_subset_1 @ E @ A ) =>
% 0.22/0.58                     ( ( r2_hidden @ E @ B ) <=>
% 0.22/0.58                       ( ( r2_hidden @ E @ C ) | ( r2_hidden @ E @ D ) ) ) ) ) =>
% 0.22/0.58                 ( ( B ) = ( k4_subset_1 @ A @ C @ D ) ) ) ) ) ) ) ))).
% 0.22/0.58  thf('3', plain,
% 0.22/0.58      (![X0 : $i, X1 : $i, X2 : $i, X3 : $i]:
% 0.22/0.58         (~ (m1_subset_1 @ X0 @ (k1_zfmisc_1 @ X1))
% 0.22/0.58          | (r2_hidden @ (sk_E @ X2 @ X0 @ X3 @ X1) @ X3)
% 0.22/0.58          | (r2_hidden @ (sk_E @ X2 @ X0 @ X3 @ X1) @ X0)
% 0.22/0.58          | (r2_hidden @ (sk_E @ X2 @ X0 @ X3 @ X1) @ X2)
% 0.22/0.58          | ((X3) = (k4_subset_1 @ X1 @ X0 @ X2))
% 0.22/0.58          | ~ (m1_subset_1 @ X2 @ (k1_zfmisc_1 @ X1))
% 0.22/0.58          | ~ (m1_subset_1 @ X3 @ (k1_zfmisc_1 @ X1)))),
% 0.22/0.58      inference('cnf', [status(esa)], [t15_subset_1])).
% 0.22/0.58  thf('4', plain,
% 0.22/0.58      (![X0 : $i, X1 : $i]:
% 0.22/0.58         (~ (m1_subset_1 @ X0 @ (k1_zfmisc_1 @ (k1_zfmisc_1 @ sk_A)))
% 0.22/0.58          | ~ (m1_subset_1 @ X1 @ (k1_zfmisc_1 @ (k1_zfmisc_1 @ sk_A)))
% 0.22/0.58          | ((X0) = (k4_subset_1 @ (k1_zfmisc_1 @ sk_A) @ sk_B @ X1))
% 0.22/0.58          | (r2_hidden @ (sk_E @ X1 @ sk_B @ X0 @ (k1_zfmisc_1 @ sk_A)) @ X1)
% 0.22/0.58          | (r2_hidden @ (sk_E @ X1 @ sk_B @ X0 @ (k1_zfmisc_1 @ sk_A)) @ sk_B)
% 0.22/0.58          | (r2_hidden @ (sk_E @ X1 @ sk_B @ X0 @ (k1_zfmisc_1 @ sk_A)) @ X0))),
% 0.22/0.58      inference('sup-', [status(thm)], ['2', '3'])).
% 0.22/0.58  thf('5', plain,
% 0.22/0.58      (![X0 : $i]:
% 0.22/0.58         ((r2_hidden @ (sk_E @ X0 @ sk_B @ sk_C @ (k1_zfmisc_1 @ sk_A)) @ sk_C)
% 0.22/0.58          | (r2_hidden @ (sk_E @ X0 @ sk_B @ sk_C @ (k1_zfmisc_1 @ sk_A)) @ 
% 0.22/0.58             sk_B)
% 0.22/0.58          | (r2_hidden @ (sk_E @ X0 @ sk_B @ sk_C @ (k1_zfmisc_1 @ sk_A)) @ X0)
% 0.22/0.58          | ((sk_C) = (k4_subset_1 @ (k1_zfmisc_1 @ sk_A) @ sk_B @ X0))
% 0.22/0.58          | ~ (m1_subset_1 @ X0 @ (k1_zfmisc_1 @ (k1_zfmisc_1 @ sk_A))))),
% 0.22/0.58      inference('sup-', [status(thm)], ['1', '4'])).
% 0.22/0.58  thf('6', plain,
% 0.22/0.58      ((((sk_C) = (k4_subset_1 @ (k1_zfmisc_1 @ sk_A) @ sk_B @ sk_B))
% 0.22/0.58        | (r2_hidden @ (sk_E @ sk_B @ sk_B @ sk_C @ (k1_zfmisc_1 @ sk_A)) @ 
% 0.22/0.58           sk_B)
% 0.22/0.58        | (r2_hidden @ (sk_E @ sk_B @ sk_B @ sk_C @ (k1_zfmisc_1 @ sk_A)) @ 
% 0.22/0.58           sk_B)
% 0.22/0.58        | (r2_hidden @ (sk_E @ sk_B @ sk_B @ sk_C @ (k1_zfmisc_1 @ sk_A)) @ 
% 0.22/0.58           sk_C))),
% 0.22/0.58      inference('sup-', [status(thm)], ['0', '5'])).
% 0.22/0.58  thf('7', plain,
% 0.22/0.58      ((m1_subset_1 @ sk_B @ (k1_zfmisc_1 @ (k1_zfmisc_1 @ sk_A)))),
% 0.22/0.58      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.22/0.58  thf('8', plain,
% 0.22/0.58      ((m1_subset_1 @ sk_B @ (k1_zfmisc_1 @ (k1_zfmisc_1 @ sk_A)))),
% 0.22/0.58      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.22/0.58  thf('9', plain,
% 0.22/0.58      (![X0 : $i, X1 : $i]:
% 0.22/0.58         (~ (m1_subset_1 @ X0 @ (k1_zfmisc_1 @ (k1_zfmisc_1 @ sk_A)))
% 0.22/0.58          | ~ (m1_subset_1 @ X1 @ (k1_zfmisc_1 @ (k1_zfmisc_1 @ sk_A)))
% 0.22/0.58          | ((X0) = (k4_subset_1 @ (k1_zfmisc_1 @ sk_A) @ sk_B @ X1))
% 0.22/0.58          | (r2_hidden @ (sk_E @ X1 @ sk_B @ X0 @ (k1_zfmisc_1 @ sk_A)) @ X1)
% 0.22/0.58          | (r2_hidden @ (sk_E @ X1 @ sk_B @ X0 @ (k1_zfmisc_1 @ sk_A)) @ sk_B)
% 0.22/0.58          | (r2_hidden @ (sk_E @ X1 @ sk_B @ X0 @ (k1_zfmisc_1 @ sk_A)) @ X0))),
% 0.22/0.58      inference('sup-', [status(thm)], ['2', '3'])).
% 0.22/0.58  thf('10', plain,
% 0.22/0.58      (![X0 : $i]:
% 0.22/0.58         ((r2_hidden @ (sk_E @ X0 @ sk_B @ sk_B @ (k1_zfmisc_1 @ sk_A)) @ sk_B)
% 0.22/0.58          | (r2_hidden @ (sk_E @ X0 @ sk_B @ sk_B @ (k1_zfmisc_1 @ sk_A)) @ 
% 0.22/0.58             sk_B)
% 0.22/0.58          | (r2_hidden @ (sk_E @ X0 @ sk_B @ sk_B @ (k1_zfmisc_1 @ sk_A)) @ X0)
% 0.22/0.58          | ((sk_B) = (k4_subset_1 @ (k1_zfmisc_1 @ sk_A) @ sk_B @ X0))
% 0.22/0.58          | ~ (m1_subset_1 @ X0 @ (k1_zfmisc_1 @ (k1_zfmisc_1 @ sk_A))))),
% 0.22/0.58      inference('sup-', [status(thm)], ['8', '9'])).
% 0.22/0.58  thf('11', plain,
% 0.22/0.58      (![X0 : $i]:
% 0.22/0.58         (~ (m1_subset_1 @ X0 @ (k1_zfmisc_1 @ (k1_zfmisc_1 @ sk_A)))
% 0.22/0.58          | ((sk_B) = (k4_subset_1 @ (k1_zfmisc_1 @ sk_A) @ sk_B @ X0))
% 0.22/0.58          | (r2_hidden @ (sk_E @ X0 @ sk_B @ sk_B @ (k1_zfmisc_1 @ sk_A)) @ X0)
% 0.22/0.58          | (r2_hidden @ (sk_E @ X0 @ sk_B @ sk_B @ (k1_zfmisc_1 @ sk_A)) @ 
% 0.22/0.58             sk_B))),
% 0.22/0.58      inference('simplify', [status(thm)], ['10'])).
% 0.22/0.58  thf('12', plain,
% 0.22/0.58      (((r2_hidden @ (sk_E @ sk_B @ sk_B @ sk_B @ (k1_zfmisc_1 @ sk_A)) @ sk_B)
% 0.22/0.58        | (r2_hidden @ (sk_E @ sk_B @ sk_B @ sk_B @ (k1_zfmisc_1 @ sk_A)) @ 
% 0.22/0.58           sk_B)
% 0.22/0.58        | ((sk_B) = (k4_subset_1 @ (k1_zfmisc_1 @ sk_A) @ sk_B @ sk_B)))),
% 0.22/0.58      inference('sup-', [status(thm)], ['7', '11'])).
% 0.22/0.58  thf('13', plain,
% 0.22/0.58      ((((sk_B) = (k4_subset_1 @ (k1_zfmisc_1 @ sk_A) @ sk_B @ sk_B))
% 0.22/0.58        | (r2_hidden @ (sk_E @ sk_B @ sk_B @ sk_B @ (k1_zfmisc_1 @ sk_A)) @ 
% 0.22/0.58           sk_B))),
% 0.22/0.58      inference('simplify', [status(thm)], ['12'])).
% 0.22/0.58  thf('14', plain,
% 0.22/0.58      ((m1_subset_1 @ sk_B @ (k1_zfmisc_1 @ (k1_zfmisc_1 @ sk_A)))),
% 0.22/0.58      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.22/0.58  thf('15', plain,
% 0.22/0.58      (![X0 : $i, X1 : $i, X2 : $i, X3 : $i]:
% 0.22/0.58         (~ (m1_subset_1 @ X0 @ (k1_zfmisc_1 @ X1))
% 0.22/0.58          | ~ (r2_hidden @ (sk_E @ X2 @ X0 @ X3 @ X1) @ X3)
% 0.22/0.58          | ~ (r2_hidden @ (sk_E @ X2 @ X0 @ X3 @ X1) @ X2)
% 0.22/0.58          | ((X3) = (k4_subset_1 @ X1 @ X0 @ X2))
% 0.22/0.58          | ~ (m1_subset_1 @ X2 @ (k1_zfmisc_1 @ X1))
% 0.22/0.58          | ~ (m1_subset_1 @ X3 @ (k1_zfmisc_1 @ X1)))),
% 0.22/0.58      inference('cnf', [status(esa)], [t15_subset_1])).
% 0.22/0.58  thf('16', plain,
% 0.22/0.58      (![X0 : $i, X1 : $i]:
% 0.22/0.58         (~ (m1_subset_1 @ X0 @ (k1_zfmisc_1 @ (k1_zfmisc_1 @ sk_A)))
% 0.22/0.58          | ~ (m1_subset_1 @ X1 @ (k1_zfmisc_1 @ (k1_zfmisc_1 @ sk_A)))
% 0.22/0.58          | ((X0) = (k4_subset_1 @ (k1_zfmisc_1 @ sk_A) @ sk_B @ X1))
% 0.22/0.58          | ~ (r2_hidden @ (sk_E @ X1 @ sk_B @ X0 @ (k1_zfmisc_1 @ sk_A)) @ X1)
% 0.22/0.58          | ~ (r2_hidden @ (sk_E @ X1 @ sk_B @ X0 @ (k1_zfmisc_1 @ sk_A)) @ X0))),
% 0.22/0.58      inference('sup-', [status(thm)], ['14', '15'])).
% 0.22/0.58  thf('17', plain,
% 0.22/0.58      ((((sk_B) = (k4_subset_1 @ (k1_zfmisc_1 @ sk_A) @ sk_B @ sk_B))
% 0.22/0.58        | ~ (r2_hidden @ (sk_E @ sk_B @ sk_B @ sk_B @ (k1_zfmisc_1 @ sk_A)) @ 
% 0.22/0.58             sk_B)
% 0.22/0.58        | ((sk_B) = (k4_subset_1 @ (k1_zfmisc_1 @ sk_A) @ sk_B @ sk_B))
% 0.22/0.58        | ~ (m1_subset_1 @ sk_B @ (k1_zfmisc_1 @ (k1_zfmisc_1 @ sk_A)))
% 0.22/0.58        | ~ (m1_subset_1 @ sk_B @ (k1_zfmisc_1 @ (k1_zfmisc_1 @ sk_A))))),
% 0.22/0.58      inference('sup-', [status(thm)], ['13', '16'])).
% 0.22/0.58  thf('18', plain,
% 0.22/0.58      ((m1_subset_1 @ sk_B @ (k1_zfmisc_1 @ (k1_zfmisc_1 @ sk_A)))),
% 0.22/0.58      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.22/0.58  thf('19', plain,
% 0.22/0.58      ((m1_subset_1 @ sk_B @ (k1_zfmisc_1 @ (k1_zfmisc_1 @ sk_A)))),
% 0.22/0.58      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.22/0.58  thf('20', plain,
% 0.22/0.58      ((((sk_B) = (k4_subset_1 @ (k1_zfmisc_1 @ sk_A) @ sk_B @ sk_B))
% 0.22/0.58        | ~ (r2_hidden @ (sk_E @ sk_B @ sk_B @ sk_B @ (k1_zfmisc_1 @ sk_A)) @ 
% 0.22/0.58             sk_B)
% 0.22/0.58        | ((sk_B) = (k4_subset_1 @ (k1_zfmisc_1 @ sk_A) @ sk_B @ sk_B)))),
% 0.22/0.58      inference('demod', [status(thm)], ['17', '18', '19'])).
% 0.22/0.58  thf('21', plain,
% 0.22/0.58      ((~ (r2_hidden @ (sk_E @ sk_B @ sk_B @ sk_B @ (k1_zfmisc_1 @ sk_A)) @ 
% 0.22/0.58           sk_B)
% 0.22/0.58        | ((sk_B) = (k4_subset_1 @ (k1_zfmisc_1 @ sk_A) @ sk_B @ sk_B)))),
% 0.22/0.58      inference('simplify', [status(thm)], ['20'])).
% 0.22/0.58  thf('22', plain,
% 0.22/0.58      ((((sk_B) = (k4_subset_1 @ (k1_zfmisc_1 @ sk_A) @ sk_B @ sk_B))
% 0.22/0.58        | (r2_hidden @ (sk_E @ sk_B @ sk_B @ sk_B @ (k1_zfmisc_1 @ sk_A)) @ 
% 0.22/0.58           sk_B))),
% 0.22/0.58      inference('simplify', [status(thm)], ['12'])).
% 0.22/0.58  thf('23', plain,
% 0.22/0.58      (((sk_B) = (k4_subset_1 @ (k1_zfmisc_1 @ sk_A) @ sk_B @ sk_B))),
% 0.22/0.58      inference('clc', [status(thm)], ['21', '22'])).
% 0.22/0.58  thf('24', plain,
% 0.22/0.58      ((((sk_C) = (sk_B))
% 0.22/0.58        | (r2_hidden @ (sk_E @ sk_B @ sk_B @ sk_C @ (k1_zfmisc_1 @ sk_A)) @ 
% 0.22/0.58           sk_B)
% 0.22/0.58        | (r2_hidden @ (sk_E @ sk_B @ sk_B @ sk_C @ (k1_zfmisc_1 @ sk_A)) @ 
% 0.22/0.58           sk_B)
% 0.22/0.58        | (r2_hidden @ (sk_E @ sk_B @ sk_B @ sk_C @ (k1_zfmisc_1 @ sk_A)) @ 
% 0.22/0.58           sk_C))),
% 0.22/0.58      inference('demod', [status(thm)], ['6', '23'])).
% 0.22/0.58  thf('25', plain,
% 0.22/0.58      (((r2_hidden @ (sk_E @ sk_B @ sk_B @ sk_C @ (k1_zfmisc_1 @ sk_A)) @ sk_C)
% 0.22/0.58        | (r2_hidden @ (sk_E @ sk_B @ sk_B @ sk_C @ (k1_zfmisc_1 @ sk_A)) @ 
% 0.22/0.58           sk_B)
% 0.22/0.58        | ((sk_C) = (sk_B)))),
% 0.22/0.58      inference('simplify', [status(thm)], ['24'])).
% 0.22/0.58  thf('26', plain, (((sk_B) != (sk_C))),
% 0.22/0.58      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.22/0.58  thf('27', plain,
% 0.22/0.58      (((r2_hidden @ (sk_E @ sk_B @ sk_B @ sk_C @ (k1_zfmisc_1 @ sk_A)) @ sk_C)
% 0.22/0.58        | (r2_hidden @ (sk_E @ sk_B @ sk_B @ sk_C @ (k1_zfmisc_1 @ sk_A)) @ 
% 0.22/0.58           sk_B))),
% 0.22/0.58      inference('simplify_reflect-', [status(thm)], ['25', '26'])).
% 0.22/0.58  thf('28', plain,
% 0.22/0.58      ((m1_subset_1 @ sk_B @ (k1_zfmisc_1 @ (k1_zfmisc_1 @ sk_A)))),
% 0.22/0.58      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.22/0.58  thf('29', plain,
% 0.22/0.58      ((m1_subset_1 @ sk_C @ (k1_zfmisc_1 @ (k1_zfmisc_1 @ sk_A)))),
% 0.22/0.58      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.22/0.58  thf('30', plain,
% 0.22/0.58      ((m1_subset_1 @ sk_B @ (k1_zfmisc_1 @ (k1_zfmisc_1 @ sk_A)))),
% 0.22/0.58      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.22/0.58  thf('31', plain,
% 0.22/0.58      (![X0 : $i, X1 : $i, X2 : $i, X3 : $i]:
% 0.22/0.58         (~ (m1_subset_1 @ X0 @ (k1_zfmisc_1 @ X1))
% 0.22/0.58          | (m1_subset_1 @ (sk_E @ X2 @ X0 @ X3 @ X1) @ X1)
% 0.22/0.58          | ((X3) = (k4_subset_1 @ X1 @ X0 @ X2))
% 0.22/0.58          | ~ (m1_subset_1 @ X2 @ (k1_zfmisc_1 @ X1))
% 0.22/0.58          | ~ (m1_subset_1 @ X3 @ (k1_zfmisc_1 @ X1)))),
% 0.22/0.58      inference('cnf', [status(esa)], [t15_subset_1])).
% 0.22/0.58  thf('32', plain,
% 0.22/0.58      (![X0 : $i, X1 : $i]:
% 0.22/0.58         (~ (m1_subset_1 @ X0 @ (k1_zfmisc_1 @ (k1_zfmisc_1 @ sk_A)))
% 0.22/0.58          | ~ (m1_subset_1 @ X1 @ (k1_zfmisc_1 @ (k1_zfmisc_1 @ sk_A)))
% 0.22/0.58          | ((X0) = (k4_subset_1 @ (k1_zfmisc_1 @ sk_A) @ sk_B @ X1))
% 0.22/0.58          | (m1_subset_1 @ (sk_E @ X1 @ sk_B @ X0 @ (k1_zfmisc_1 @ sk_A)) @ 
% 0.22/0.58             (k1_zfmisc_1 @ sk_A)))),
% 0.22/0.58      inference('sup-', [status(thm)], ['30', '31'])).
% 0.22/0.58  thf('33', plain,
% 0.22/0.58      (![X0 : $i]:
% 0.22/0.58         ((m1_subset_1 @ (sk_E @ X0 @ sk_B @ sk_C @ (k1_zfmisc_1 @ sk_A)) @ 
% 0.22/0.58           (k1_zfmisc_1 @ sk_A))
% 0.22/0.58          | ((sk_C) = (k4_subset_1 @ (k1_zfmisc_1 @ sk_A) @ sk_B @ X0))
% 0.22/0.58          | ~ (m1_subset_1 @ X0 @ (k1_zfmisc_1 @ (k1_zfmisc_1 @ sk_A))))),
% 0.22/0.58      inference('sup-', [status(thm)], ['29', '32'])).
% 0.22/0.58  thf('34', plain,
% 0.22/0.58      ((((sk_C) = (k4_subset_1 @ (k1_zfmisc_1 @ sk_A) @ sk_B @ sk_B))
% 0.22/0.58        | (m1_subset_1 @ (sk_E @ sk_B @ sk_B @ sk_C @ (k1_zfmisc_1 @ sk_A)) @ 
% 0.22/0.58           (k1_zfmisc_1 @ sk_A)))),
% 0.22/0.58      inference('sup-', [status(thm)], ['28', '33'])).
% 0.22/0.58  thf('35', plain,
% 0.22/0.58      (![X4 : $i]:
% 0.22/0.58         (~ (r2_hidden @ X4 @ sk_C)
% 0.22/0.58          | (r2_hidden @ X4 @ sk_B)
% 0.22/0.58          | ~ (m1_subset_1 @ X4 @ (k1_zfmisc_1 @ sk_A)))),
% 0.22/0.58      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.22/0.58  thf('36', plain,
% 0.22/0.58      ((((sk_C) = (k4_subset_1 @ (k1_zfmisc_1 @ sk_A) @ sk_B @ sk_B))
% 0.22/0.58        | (r2_hidden @ (sk_E @ sk_B @ sk_B @ sk_C @ (k1_zfmisc_1 @ sk_A)) @ 
% 0.22/0.58           sk_B)
% 0.22/0.58        | ~ (r2_hidden @ (sk_E @ sk_B @ sk_B @ sk_C @ (k1_zfmisc_1 @ sk_A)) @ 
% 0.22/0.58             sk_C))),
% 0.22/0.58      inference('sup-', [status(thm)], ['34', '35'])).
% 0.22/0.58  thf('37', plain,
% 0.22/0.58      (((sk_B) = (k4_subset_1 @ (k1_zfmisc_1 @ sk_A) @ sk_B @ sk_B))),
% 0.22/0.58      inference('clc', [status(thm)], ['21', '22'])).
% 0.22/0.58  thf('38', plain,
% 0.22/0.58      ((((sk_C) = (sk_B))
% 0.22/0.58        | (r2_hidden @ (sk_E @ sk_B @ sk_B @ sk_C @ (k1_zfmisc_1 @ sk_A)) @ 
% 0.22/0.58           sk_B)
% 0.22/0.58        | ~ (r2_hidden @ (sk_E @ sk_B @ sk_B @ sk_C @ (k1_zfmisc_1 @ sk_A)) @ 
% 0.22/0.58             sk_C))),
% 0.22/0.58      inference('demod', [status(thm)], ['36', '37'])).
% 0.22/0.58  thf('39', plain, (((sk_B) != (sk_C))),
% 0.22/0.58      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.22/0.58  thf('40', plain,
% 0.22/0.58      (((r2_hidden @ (sk_E @ sk_B @ sk_B @ sk_C @ (k1_zfmisc_1 @ sk_A)) @ sk_B)
% 0.22/0.58        | ~ (r2_hidden @ (sk_E @ sk_B @ sk_B @ sk_C @ (k1_zfmisc_1 @ sk_A)) @ 
% 0.22/0.58             sk_C))),
% 0.22/0.58      inference('simplify_reflect-', [status(thm)], ['38', '39'])).
% 0.22/0.58  thf('41', plain,
% 0.22/0.58      ((r2_hidden @ (sk_E @ sk_B @ sk_B @ sk_C @ (k1_zfmisc_1 @ sk_A)) @ sk_B)),
% 0.22/0.58      inference('clc', [status(thm)], ['27', '40'])).
% 0.22/0.58  thf('42', plain,
% 0.22/0.58      (![X0 : $i, X1 : $i]:
% 0.22/0.58         (~ (m1_subset_1 @ X0 @ (k1_zfmisc_1 @ (k1_zfmisc_1 @ sk_A)))
% 0.22/0.58          | ~ (m1_subset_1 @ X1 @ (k1_zfmisc_1 @ (k1_zfmisc_1 @ sk_A)))
% 0.22/0.58          | ((X0) = (k4_subset_1 @ (k1_zfmisc_1 @ sk_A) @ sk_B @ X1))
% 0.22/0.58          | ~ (r2_hidden @ (sk_E @ X1 @ sk_B @ X0 @ (k1_zfmisc_1 @ sk_A)) @ X1)
% 0.22/0.58          | ~ (r2_hidden @ (sk_E @ X1 @ sk_B @ X0 @ (k1_zfmisc_1 @ sk_A)) @ X0))),
% 0.22/0.58      inference('sup-', [status(thm)], ['14', '15'])).
% 0.22/0.58  thf('43', plain,
% 0.22/0.58      ((~ (r2_hidden @ (sk_E @ sk_B @ sk_B @ sk_C @ (k1_zfmisc_1 @ sk_A)) @ 
% 0.22/0.58           sk_C)
% 0.22/0.58        | ((sk_C) = (k4_subset_1 @ (k1_zfmisc_1 @ sk_A) @ sk_B @ sk_B))
% 0.22/0.58        | ~ (m1_subset_1 @ sk_B @ (k1_zfmisc_1 @ (k1_zfmisc_1 @ sk_A)))
% 0.22/0.58        | ~ (m1_subset_1 @ sk_C @ (k1_zfmisc_1 @ (k1_zfmisc_1 @ sk_A))))),
% 0.22/0.58      inference('sup-', [status(thm)], ['41', '42'])).
% 0.22/0.58  thf('44', plain,
% 0.22/0.58      (((sk_B) = (k4_subset_1 @ (k1_zfmisc_1 @ sk_A) @ sk_B @ sk_B))),
% 0.22/0.58      inference('clc', [status(thm)], ['21', '22'])).
% 0.22/0.58  thf('45', plain,
% 0.22/0.58      ((m1_subset_1 @ sk_B @ (k1_zfmisc_1 @ (k1_zfmisc_1 @ sk_A)))),
% 0.22/0.58      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.22/0.58  thf('46', plain,
% 0.22/0.58      ((m1_subset_1 @ sk_C @ (k1_zfmisc_1 @ (k1_zfmisc_1 @ sk_A)))),
% 0.22/0.58      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.22/0.58  thf('47', plain,
% 0.22/0.58      ((~ (r2_hidden @ (sk_E @ sk_B @ sk_B @ sk_C @ (k1_zfmisc_1 @ sk_A)) @ 
% 0.22/0.58           sk_C)
% 0.22/0.58        | ((sk_C) = (sk_B)))),
% 0.22/0.58      inference('demod', [status(thm)], ['43', '44', '45', '46'])).
% 0.22/0.58  thf('48', plain, (((sk_B) != (sk_C))),
% 0.22/0.58      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.22/0.58  thf('49', plain,
% 0.22/0.58      (~ (r2_hidden @ (sk_E @ sk_B @ sk_B @ sk_C @ (k1_zfmisc_1 @ sk_A)) @ sk_C)),
% 0.22/0.58      inference('simplify_reflect-', [status(thm)], ['47', '48'])).
% 0.22/0.58  thf('50', plain,
% 0.22/0.58      ((((sk_C) = (k4_subset_1 @ (k1_zfmisc_1 @ sk_A) @ sk_B @ sk_B))
% 0.22/0.58        | (m1_subset_1 @ (sk_E @ sk_B @ sk_B @ sk_C @ (k1_zfmisc_1 @ sk_A)) @ 
% 0.22/0.58           (k1_zfmisc_1 @ sk_A)))),
% 0.22/0.58      inference('sup-', [status(thm)], ['28', '33'])).
% 0.22/0.58  thf('51', plain,
% 0.22/0.58      (![X4 : $i]:
% 0.22/0.58         (~ (r2_hidden @ X4 @ sk_B)
% 0.22/0.58          | (r2_hidden @ X4 @ sk_C)
% 0.22/0.58          | ~ (m1_subset_1 @ X4 @ (k1_zfmisc_1 @ sk_A)))),
% 0.22/0.58      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.22/0.58  thf('52', plain,
% 0.22/0.58      ((((sk_C) = (k4_subset_1 @ (k1_zfmisc_1 @ sk_A) @ sk_B @ sk_B))
% 0.22/0.58        | (r2_hidden @ (sk_E @ sk_B @ sk_B @ sk_C @ (k1_zfmisc_1 @ sk_A)) @ 
% 0.22/0.58           sk_C)
% 0.22/0.58        | ~ (r2_hidden @ (sk_E @ sk_B @ sk_B @ sk_C @ (k1_zfmisc_1 @ sk_A)) @ 
% 0.22/0.58             sk_B))),
% 0.22/0.58      inference('sup-', [status(thm)], ['50', '51'])).
% 0.22/0.58  thf('53', plain,
% 0.22/0.58      (((sk_B) = (k4_subset_1 @ (k1_zfmisc_1 @ sk_A) @ sk_B @ sk_B))),
% 0.22/0.58      inference('clc', [status(thm)], ['21', '22'])).
% 0.22/0.58  thf('54', plain,
% 0.22/0.58      ((((sk_C) = (sk_B))
% 0.22/0.58        | (r2_hidden @ (sk_E @ sk_B @ sk_B @ sk_C @ (k1_zfmisc_1 @ sk_A)) @ 
% 0.22/0.58           sk_C)
% 0.22/0.58        | ~ (r2_hidden @ (sk_E @ sk_B @ sk_B @ sk_C @ (k1_zfmisc_1 @ sk_A)) @ 
% 0.22/0.58             sk_B))),
% 0.22/0.58      inference('demod', [status(thm)], ['52', '53'])).
% 0.22/0.58  thf('55', plain, (((sk_B) != (sk_C))),
% 0.22/0.58      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.22/0.58  thf('56', plain,
% 0.22/0.58      (((r2_hidden @ (sk_E @ sk_B @ sk_B @ sk_C @ (k1_zfmisc_1 @ sk_A)) @ sk_C)
% 0.22/0.58        | ~ (r2_hidden @ (sk_E @ sk_B @ sk_B @ sk_C @ (k1_zfmisc_1 @ sk_A)) @ 
% 0.22/0.58             sk_B))),
% 0.22/0.58      inference('simplify_reflect-', [status(thm)], ['54', '55'])).
% 0.22/0.58  thf('57', plain,
% 0.22/0.58      ((r2_hidden @ (sk_E @ sk_B @ sk_B @ sk_C @ (k1_zfmisc_1 @ sk_A)) @ sk_B)),
% 0.22/0.58      inference('clc', [status(thm)], ['27', '40'])).
% 0.22/0.58  thf('58', plain,
% 0.22/0.58      ((r2_hidden @ (sk_E @ sk_B @ sk_B @ sk_C @ (k1_zfmisc_1 @ sk_A)) @ sk_C)),
% 0.22/0.58      inference('demod', [status(thm)], ['56', '57'])).
% 0.22/0.58  thf('59', plain, ($false), inference('demod', [status(thm)], ['49', '58'])).
% 0.22/0.58  
% 0.22/0.58  % SZS output end Refutation
% 0.22/0.58  
% 0.22/0.59  % Zipperpin 1.5 exiting
%------------------------------------------------------------------------------
