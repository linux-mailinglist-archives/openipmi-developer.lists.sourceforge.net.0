Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 217614EC816
	for <lists+openipmi-developer@lfdr.de>; Wed, 30 Mar 2022 17:22:20 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1nZa9J-0001BG-55; Wed, 30 Mar 2022 15:22:15 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <cminyard@mvista.com>) id 1nZa9H-0001B9-DU
 for openipmi-developer@lists.sourceforge.net; Wed, 30 Mar 2022 15:22:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=l5d4z40lcsExb2VcuXpJGK1vARAluV7fagbwarZTvHo=; b=GNp0ZZaDiRqg5cZcL5MbATDBhR
 lIwyhy4yiWtMd1aB8TtYm3BSqLf6qimkg+6eY5aLn0ZLWNfglK5VfsZ4Mm6b2GT0ehitGPXKS7z5P
 FrwjAar7hu1AgXdfHpLjq70ZTnMIz3tSxP1xF7AV+QE2Rs6kP1MT5998WDTmFS/Edx5k=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=l5d4z40lcsExb2VcuXpJGK1vARAluV7fagbwarZTvHo=; b=CwHzR96O0iDnkR+2vKdI/TuQdl
 Q7b5LlXEAqpJ0mWiArTfNaKUgnWxPFchm2MsX9HKoTg3R3yaVm1X+iqg0pUmY+UvmgBNkodlmNj7D
 JXVNFL1Z6XHr5VSOYw3JFKZvJvCpI6T9H4Jd58L8Hn8uz+hqBpgoml6SNDv49zpoVz/c=;
Received: from mail-vs1-f50.google.com ([209.85.217.50])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.94.2)
 id 1nZa9D-00HHJJ-Fa
 for openipmi-developer@lists.sourceforge.net; Wed, 30 Mar 2022 15:22:13 +0000
Received: by mail-vs1-f50.google.com with SMTP id l128so22815316vsc.7
 for <openipmi-developer@lists.sourceforge.net>;
 Wed, 30 Mar 2022 08:22:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mvista.com; s=google;
 h=date:from:to:cc:subject:message-id:reply-to:references:mime-version
 :content-disposition:in-reply-to;
 bh=l5d4z40lcsExb2VcuXpJGK1vARAluV7fagbwarZTvHo=;
 b=i3wQrtlsZyxDiN9PCMMFBwk6hwkW4qMbr0kI+gRHCuZt2hjAMmlZLn+TtYNwcCzbzR
 RnriIJf8hdecoVgZASTAfAXkpg4C6zRRNNJYa+3z2JtCWSpNgZNgD6u2OVr3u1Ku2uFw
 qUpil4rPRL6nLesjdMeiqxPLhintXY8dTEmWw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:reply-to
 :references:mime-version:content-disposition:in-reply-to;
 bh=l5d4z40lcsExb2VcuXpJGK1vARAluV7fagbwarZTvHo=;
 b=4LwOPiZtkpPb6tXnQn7t9Y/ETKyjDT6U9mUO5JuxE2Byhuuu/H24sf6RR9j6zGnqjc
 /Lq078vq3g1j0bgEEU1x3eep4xSyZnWMoCCMoI7yTBvSc0dUNl+T0RZ/pF7bXG1vpA5t
 iYXx+SyeMedzBWnEVU5DwnbeNm4OHm+QEtt7FvlijCo4YclfCcMDXWFjyXhCniR/j7Hs
 PNMkyaB4S13V5BZ0peEDMPgsy5nAFvpwD4PAX6XE/eaqWhaofN6BetHq7ugXsJnuj8va
 rBujlhuJEuFPn0Cqe/yEyLw6BQihPPKgi15JsZymqIoGfO261jRJq/0oO/Tn6mXNDYD3
 Kh7w==
X-Gm-Message-State: AOAM5312RKAK6sVB1DXLcpxfuBHJo6IUkG1+AMnwhQPtYuZi8+tz4lW9
 BZVCgmX/SSdrw88q/D/psx64OPy7t2FddA==
X-Google-Smtp-Source: ABdhPJybcpK5XD9ijSmRBOyHsKoUz1RNAcu8CPLKrgJoV5n1hdx3vJfJMA6Xd27wpue/GeE8eyCPFQ==
X-Received: by 2002:a05:6214:1043:b0:441:1a79:12a5 with SMTP id
 l3-20020a056214104300b004411a7912a5mr31381389qvr.42.1648652321389; 
 Wed, 30 Mar 2022 07:58:41 -0700 (PDT)
Received: from minyard.net ([2001:470:b8f6:1b:dcc2:ca6d:a437:b3e0])
 by smtp.gmail.com with ESMTPSA id
 j1-20020a05620a410100b0067ec5ecac66sm12731343qko.19.2022.03.30.07.58.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 30 Mar 2022 07:58:40 -0700 (PDT)
Date: Wed, 30 Mar 2022 09:58:38 -0500
From: Corey Minyard <cminyard@mvista.com>
To: chenchacha <chen.chenchacha@foxmail.com>
Message-ID: <20220330145838.GY3458@minyard.net>
References: <20220329183340.471474-1-minyard@acm.org>
 <20220329183340.471474-3-minyard@acm.org>
 <tencent_508F9F7681360F657D131FF97D2C53506208@qq.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <tencent_508F9F7681360F657D131FF97D2C53506208@qq.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Wed, Mar 30, 2022 at 10:44:50PM +0800, chenchacha wrote:
 > > @@ -2298,6 +2309,14 @@ static int i_ipmi_request(struct ipmi_user *user,
 > > struct ipmi_recv_msg *recv_msg; > > int rv = 0; > > + if (u [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.217.50 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.217.50 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-Headers-End: 1nZa9D-00HHJJ-Fa
Subject: Re: [Openipmi-developer] [PATCH 2/4] ipmi: Limit the number of
 message a user may have outstanding
X-BeenThere: openipmi-developer@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: Developer list of OpenIPMI library and Linux driver
 <openipmi-developer.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/openipmi-developer>, 
 <mailto:openipmi-developer-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=openipmi-developer>
List-Post: <mailto:openipmi-developer@lists.sourceforge.net>
List-Help: <mailto:openipmi-developer-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/openipmi-developer>, 
 <mailto:openipmi-developer-request@lists.sourceforge.net?subject=subscribe>
Reply-To: cminyard@mvista.com
Cc: openipmi-developer@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 minyard@acm.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Wed, Mar 30, 2022 at 10:44:50PM +0800, chenchacha wrote:
> > @@ -2298,6 +2309,14 @@ static int i_ipmi_request(struct ipmi_user     *user,
> >   	struct ipmi_recv_msg *recv_msg;
> >   	int rv = 0;
> > +	if (user) {
> > +		if (atomic_add_return(1, &user->nr_msgs) > max_msgs_per_user) {
> > +			atomic_dec(&user->nr_msgs);
> > +			rv = -EBUSY;
> > +			goto out;
> > +		}
> > +	}
> > +
> > @@ -2369,6 +2388,8 @@ static int i_ipmi_request(struct ipmi_user     *user,
> >   	rcu_read_unlock();
> >   out:
> > +	if (rv && user)
> > +		atomic_dec(&user->nr_msgs);
> >   	return rv;
> >   }
> 
> If the number of msg is greater than the limit, the nr_msgs will be decrease
> twice.
> 
> Should it be returned directory?

Oh wait, yeah, I screwed that up.  I added the first decrement later,
after I "noticed" it was missing.  I should add a comment there.
Thanks.

-corey

> 
> --
> Chen Guanqiao


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
