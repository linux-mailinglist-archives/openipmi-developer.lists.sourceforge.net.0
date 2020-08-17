Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2834724A0FA
	for <lists+openipmi-developer@lfdr.de>; Wed, 19 Aug 2020 16:00:38 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1k8Odn-0001Nj-F4; Wed, 19 Aug 2020 14:00:35 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <keescook@chromium.org>) id 1k7l7e-00045x-93
 for openipmi-developer@lists.sourceforge.net; Mon, 17 Aug 2020 19:48:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=W/QCwiSnTEO13wgX75lDPlG5RmKP/R2S9uafXZLpRO0=; b=jVQrjQrd8fZ5az4tF7Y0hKGwuI
 j3OMDp+RSmlkn2G+uzVw3nbF5g1UTEjcVPxVh3nVAQOKix1tsJ+qeG8ZP55+4tdsH/YsAJPWHwFqt
 P95ilxMq99KBbX1B36o7XcIPm5dADq6rY1mRLXfylQwCL1G0buQngw7NhNjExK9JFF/4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=W/QCwiSnTEO13wgX75lDPlG5RmKP/R2S9uafXZLpRO0=; b=l7S533xFieRn1kztK5vP5y30h2
 lfFwkpvcdR/TbBWV624zlz2sNBWWf4AF3X/2aQxyyVkZnKA1UlwaDL3ZOg7Qdpoy8EEGnBgW3buVS
 BJhbB7FU96UmI35x0TysLpXYdxASa7A/sdqmyLPjRNuEBk10Ulq1f0g7kxyDpAyYGYOI=;
Received: from mail-pj1-f67.google.com ([209.85.216.67])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1k7l7Z-00Aa7O-Om
 for openipmi-developer@lists.sourceforge.net; Mon, 17 Aug 2020 19:48:46 +0000
Received: by mail-pj1-f67.google.com with SMTP id c10so8324350pjn.1
 for <openipmi-developer@lists.sourceforge.net>;
 Mon, 17 Aug 2020 12:48:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=W/QCwiSnTEO13wgX75lDPlG5RmKP/R2S9uafXZLpRO0=;
 b=UZMS8z7lBaBA4LaD7Ohc3gxbh3X0rGAieTpTrrDzaTy+L/gk/lug1xgLnT6Smuoqgy
 CHwvwC1+iVsaCi7JVANoAoODFUU1FJ8zXIuuSAZC1c3zP9Ppej9evmz4cKmc9teJMKuJ
 YXU186IAT+sMfmef2ecFE4SzXZGPKU6LCfYIk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=W/QCwiSnTEO13wgX75lDPlG5RmKP/R2S9uafXZLpRO0=;
 b=CFjf1b/zJjnCnVt95iTaGO8iWK60ZwqxUK+Os0YBCkV8AZG5kL/nR5S5BXNtAKhnpm
 /lFAi/0q2aizjhAaW7imVh5t+suXygwjhWdnVN1uZ70mIbmmKW39y6E6mvNDG/qS8e4k
 9VcFPmjQXfePxjszCrXWNbeTGDqlfL7Az4YrX3vm7UbwBsT98DBrGNc8eCqklErRsP/b
 3vIYEy9DfujvM1leIdv+d8dWuPFflSTsBRFwv3X7seTlBh5wqoAD3X5e/0PRSM7fxYlR
 GYw8V1gMrnWrV+CvKvMBhB5a4qQN+UiZcDpeypY5+PLLWjEEwKOway1wTR9BsMMKCfwi
 m19g==
X-Gm-Message-State: AOAM533Fy6HOfX5MSKKSIcgedbZOnDSYkQF8gibr3CMNNoEA/ymaSHRY
 zN8bwSTL2HZi0alPmUY68rkPSw==
X-Google-Smtp-Source: ABdhPJwZjwvbowwXe6l+/LTbIcm9qla8iNV/iD/KGyHP8Hful5P2qYDZAoSGXyDA4rfCIhlfdBeTKA==
X-Received: by 2002:a17:902:246:: with SMTP id
 64mr12417474plc.70.1597693716088; 
 Mon, 17 Aug 2020 12:48:36 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id s8sm21663342pfc.122.2020.08.17.12.48.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 17 Aug 2020 12:48:35 -0700 (PDT)
Date: Mon, 17 Aug 2020 12:48:34 -0700
From: Kees Cook <keescook@chromium.org>
To: Jens Axboe <axboe@kernel.dk>
Message-ID: <202008171246.80287CDCA@keescook>
References: <20200817091617.28119-1-allen.cryptic@gmail.com>
 <20200817091617.28119-2-allen.cryptic@gmail.com>
 <b5508ca4-0641-7265-2939-5f03cbfab2e2@kernel.dk>
 <202008171228.29E6B3BB@keescook>
 <161b75f1-4e88-dcdf-42e8-b22504d7525c@kernel.dk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <161b75f1-4e88-dcdf-42e8-b22504d7525c@kernel.dk>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.216.67 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.216.67 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
 -0.1 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1k7l7Z-00Aa7O-Om
X-Mailman-Approved-At: Wed, 19 Aug 2020 14:00:33 +0000
Subject: Re: [Openipmi-developer] [PATCH] block: convert tasklets to use new
 tasklet_setup() API
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
Cc: ulf.hansson@linaro.org, linux-atm-general@lists.sourceforge.net,
 manohar.vanga@gmail.com, airlied@linux.ie, Allen Pais <allen.lkml@gmail.com>,
 linux-hyperv@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, James.Bottomley@HansenPartnership.com,
 kys@microsoft.com, anton.ivanov@cambridgegreys.com, devel@driverdev.osuosl.org,
 linux-s390@vger.kernel.org, linux1394-devel@lists.sourceforge.net,
 maximlevitsky@gmail.com, richard@nod.at, deller@gmx.de,
 jassisinghbrar@gmail.com, 3chas3@gmail.com, intel-gfx@lists.freedesktop.org,
 kuba@kernel.org, mporter@kernel.crashing.org, jdike@addtoit.com,
 oakad@yahoo.com, s.hauer@pengutronix.de, linux-input@vger.kernel.org,
 linux-um@lists.infradead.org, linux-block@vger.kernel.org, broonie@kernel.org,
 openipmi-developer@lists.sourceforge.net, mitch@sfgoth.com,
 linux-arm-kernel@lists.infradead.org, linux-parisc@vger.kernel.org,
 netdev@vger.kernel.org, martyn@welchs.me.uk, dmitry.torokhov@gmail.com,
 linux-mmc@vger.kernel.org, sre@kernel.org, linux-spi@vger.kernel.org,
 alex.bou9@gmail.com, Allen Pais <allen.cryptic@gmail.com>,
 stefanr@s5r6.in-berlin.de, daniel@ffwll.ch, linux-ntb@googlegroups.com,
 Romain Perier <romain.perier@gmail.com>, shawnguo@kernel.org,
 davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Mon, Aug 17, 2020 at 12:44:34PM -0700, Jens Axboe wrote:
> On 8/17/20 12:29 PM, Kees Cook wrote:
> > On Mon, Aug 17, 2020 at 06:56:47AM -0700, Jens Axboe wrote:
> >> On 8/17/20 2:15 AM, Allen Pais wrote:
> >>> From: Allen Pais <allen.lkml@gmail.com>
> >>>
> >>> In preparation for unconditionally passing the
> >>> struct tasklet_struct pointer to all tasklet
> >>> callbacks, switch to using the new tasklet_setup()
> >>> and from_tasklet() to pass the tasklet pointer explicitly.
> >>
> >> Who came up with the idea to add a macro 'from_tasklet' that is just
> >> container_of? container_of in the code would be _much_ more readable,
> >> and not leave anyone guessing wtf from_tasklet is doing.
> >>
> >> I'd fix that up now before everything else goes in...
> > 
> > As I mentioned in the other thread, I think this makes things much more
> > readable. It's the same thing that the timer_struct conversion did
> > (added a container_of wrapper) to avoid the ever-repeating use of
> > typeof(), long lines, etc.
> 
> But then it should use a generic name, instead of each sub-system using
> some random name that makes people look up exactly what it does. I'm not
> huge fan of the container_of() redundancy, but adding private variants
> of this doesn't seem like the best way forward. Let's have a generic
> helper that does this, and use it everywhere.

I'm open to suggestions, but as things stand, these kinds of treewide
changes end up getting whole-release delays because of the need to have
the API in place for everyone before patches to do the changes can be
sent to multiple maintainers, etc.

-- 
Kees Cook


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
