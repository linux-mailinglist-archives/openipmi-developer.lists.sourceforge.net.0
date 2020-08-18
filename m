Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7031224A0FC
	for <lists+openipmi-developer@lfdr.de>; Wed, 19 Aug 2020 16:00:38 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1k8Odn-0001OQ-Ph; Wed, 19 Aug 2020 14:00:35 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <James.Bottomley@HansenPartnership.com>)
 id 1k88j3-00038T-HP; Tue, 18 Aug 2020 21:00:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Mime-Version:Content-Type
 :References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=eD9QK5p2ENxtGralCkJZll210SXnn3jEzjkOtHOpGns=; b=eIVV/OXXj1/d0P4GKxZr9/HlFn
 78B0GkDaPYnsemmRQOcIHQjIT/GtempQedyQ6oo5jjHHiMiEfw39ES9j0Ag8QPtBIg94suN5JoZaM
 kH9VRmQwD+dnLgH0fgp07x81bzz2q7NDupLbSUJlkB187NYStwXy7QMiKUMiJb445sQA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Mime-Version:Content-Type:References:
 In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=eD9QK5p2ENxtGralCkJZll210SXnn3jEzjkOtHOpGns=; b=e/mvov6RDAl4ipjISn8cUY8k2H
 /Fbx4eEH0G9Oi+VERGPDjK29m1g+5vCLQmaczw+LCnwBuFoX4/+P3pT1MXT3fx8UMBG1tTDywXwvY
 IPU9XO4PGSc9vvniUKEWHV1YQ7AOj7yMA5vBUdBw93VjVY+rrbIGuNXHA7LIa/73zZG8=;
Received: from bedivere.hansenpartnership.com ([66.63.167.143])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1k88iz-00FaLl-1Q; Tue, 18 Aug 2020 21:00:57 +0000
Received: from localhost (localhost [127.0.0.1])
 by bedivere.hansenpartnership.com (Postfix) with ESMTP id E76FB8EE1A9;
 Tue, 18 Aug 2020 14:00:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=hansenpartnership.com;
 s=20151216; t=1597784444;
 bh=tbsUcv475+YCZw1GTj2PQ6LvX4vSQZaYxn4zaS+R/4c=;
 h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
 b=Qrj9DcFVwfv3LQ3ogFCLogZ3MFRIrVuZOGzCtGnuXEksHbYpCf4MOzhnjK48hnLeJ
 WBJIwZcuhQRmEISK3OYmfO8zwCeV5WGheC1BlogkcVwtiUSnVqiZDKUeoZ3ftkI0DB
 8C1HptXhFOQveW6XttTml0y/WCVpA+LP1XIfDIQU=
Received: from bedivere.hansenpartnership.com ([127.0.0.1])
 by localhost (bedivere.hansenpartnership.com [127.0.0.1]) (amavisd-new,
 port 10024)
 with ESMTP id yxTvzG0VvDFx; Tue, 18 Aug 2020 14:00:43 -0700 (PDT)
Received: from [153.66.254.174] (c-73-35-198-56.hsd1.wa.comcast.net
 [73.35.198.56])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by bedivere.hansenpartnership.com (Postfix) with ESMTPSA id 3908A8EE17F;
 Tue, 18 Aug 2020 14:00:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=hansenpartnership.com;
 s=20151216; t=1597784443;
 bh=tbsUcv475+YCZw1GTj2PQ6LvX4vSQZaYxn4zaS+R/4c=;
 h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
 b=D+8/Cr58B/oiGrsp2scAFTKzPpwuRrxI0nzk9/FGC1mH6aV1pe7T9eKYXHzydxf7e
 uxoPDcWpTJmWe7T3PSHxKLwqMdOy0OFGWtWHPKks90yqeWzrewWrtu8v+gZ22+Y9Xp
 3BintrUiXfYlFbDYGCbt6iSJyrOyqS5V85WlObHk=
Message-ID: <1597784438.3978.6.camel@HansenPartnership.com>
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: Kees Cook <keescook@chromium.org>
Date: Tue, 18 Aug 2020 14:00:38 -0700
In-Reply-To: <202008181309.FD3940A2D5@keescook>
References: <20200817091617.28119-1-allen.cryptic@gmail.com>
 <20200817091617.28119-2-allen.cryptic@gmail.com>
 <b5508ca4-0641-7265-2939-5f03cbfab2e2@kernel.dk>
 <202008171228.29E6B3BB@keescook>
 <161b75f1-4e88-dcdf-42e8-b22504d7525c@kernel.dk>
 <202008171246.80287CDCA@keescook>
 <df645c06-c30b-eafa-4d23-826b84f2ff48@kernel.dk>
 <1597780833.3978.3.camel@HansenPartnership.com>
 <202008181309.FD3940A2D5@keescook>
X-Mailer: Evolution 3.26.6 
Mime-Version: 1.0
X-Spam-Score: -0.3 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1k88iz-00FaLl-1Q
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
 linux-kernel@vger.kernel.org, kys@microsoft.com,
 anton.ivanov@cambridgegreys.com, devel@driverdev.osuosl.org,
 linux-s390@vger.kernel.org, linux1394-devel@lists.sourceforge.net,
 maximlevitsky@gmail.com, richard@nod.at, deller@gmx.de,
 jassisinghbrar@gmail.com, 3chas3@gmail.com, intel-gfx@lists.freedesktop.org,
 kuba@kernel.org, mporter@kernel.crashing.org, jdike@addtoit.com,
 oakad@yahoo.com, s.hauer@pengutronix.de, linux-input@vger.kernel.org,
 linux-um@lists.infradead.org, linux-block@vger.kernel.org, broonie@kernel.org,
 openipmi-developer@lists.sourceforge.net, mitch@sfgoth.com,
 linux-arm-kernel@lists.infradead.org, Jens Axboe <axboe@kernel.dk>,
 linux-parisc@vger.kernel.org, netdev@vger.kernel.org, martyn@welchs.me.uk,
 dmitry.torokhov@gmail.com, linux-mmc@vger.kernel.org, sre@kernel.org,
 linux-spi@vger.kernel.org, alex.bou9@gmail.com,
 Allen Pais <allen.cryptic@gmail.com>, stefanr@s5r6.in-berlin.de,
 daniel@ffwll.ch, linux-ntb@googlegroups.com,
 Romain Perier <romain.perier@gmail.com>, shawnguo@kernel.org,
 davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Tue, 2020-08-18 at 13:10 -0700, Kees Cook wrote:
> On Tue, Aug 18, 2020 at 01:00:33PM -0700, James Bottomley wrote:
> > On Mon, 2020-08-17 at 13:02 -0700, Jens Axboe wrote:
> > > On 8/17/20 12:48 PM, Kees Cook wrote:
> > > > On Mon, Aug 17, 2020 at 12:44:34PM -0700, Jens Axboe wrote:
> > > > > On 8/17/20 12:29 PM, Kees Cook wrote:
> > > > > > On Mon, Aug 17, 2020 at 06:56:47AM -0700, Jens Axboe wrote:
> > > > > > > On 8/17/20 2:15 AM, Allen Pais wrote:
> > > > > > > > From: Allen Pais <allen.lkml@gmail.com>
> > > > > > > > 
> > > > > > > > In preparation for unconditionally passing the
> > > > > > > > struct tasklet_struct pointer to all tasklet
> > > > > > > > callbacks, switch to using the new tasklet_setup()
> > > > > > > > and from_tasklet() to pass the tasklet pointer
> > > > > > > > explicitly.
> > > > > > > 
> > > > > > > Who came up with the idea to add a macro 'from_tasklet'
> > > > > > > that
> > > > > > > is just container_of? container_of in the code would be
> > > > > > > _much_ more readable, and not leave anyone guessing wtf
> > > > > > > from_tasklet is doing.
> > > > > > > 
> > > > > > > I'd fix that up now before everything else goes in...
> > > > > > 
> > > > > > As I mentioned in the other thread, I think this makes
> > > > > > things
> > > > > > much more readable. It's the same thing that the
> > > > > > timer_struct
> > > > > > conversion did (added a container_of wrapper) to avoid the
> > > > > > ever-repeating use of typeof(), long lines, etc.
> > > > > 
> > > > > But then it should use a generic name, instead of each sub-
> > > > > system 
> > > > > using some random name that makes people look up exactly what
> > > > > it
> > > > > does. I'm not huge fan of the container_of() redundancy, but
> > > > > adding private variants of this doesn't seem like the best
> > > > > way
> > > > > forward. Let's have a generic helper that does this, and use
> > > > > it
> > > > > everywhere.
> > > > 
> > > > I'm open to suggestions, but as things stand, these kinds of
> > > > treewide
> > > 
> > > On naming? Implementation is just as it stands, from_tasklet() is
> > > totally generic which is why I objected to it. from_member()? Not
> > > great with naming... But I can see this going further and then
> > > we'll
> > > suddenly have tons of these. It's not good for readability.
> > 
> > Since both threads seem to have petered out, let me suggest in
> > kernel.h:
> > 
> > #define cast_out(ptr, container, member) \
> > 	container_of(ptr, typeof(*container), member)
> > 
> > It does what you want, the argument order is the same as
> > container_of with the only difference being you name the containing
> > structure instead of having to specify its type.
> 
> I like this! Shall I send this to Linus to see if this can land in
> -rc2 for use going forward?

Sure ... he's probably been lurking on this thread anyway ... it's
about time he got off his arse^Wthe fence and made an executive
decision ...

James



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
