Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id EA9D47B435B
	for <lists+openipmi-developer@lfdr.de>; Sat, 30 Sep 2023 21:44:16 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1qmfsk-0000P6-Kw;
	Sat, 30 Sep 2023 19:44:07 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <phil@philpotter.co.uk>) id 1qmf2w-0002HS-Ge
 for openipmi-developer@lists.sourceforge.net;
 Sat, 30 Sep 2023 18:50:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=TP49E0lt1lRfwVwEUZNQYaCBfTY4UGz9ptrNHBZhxcM=; b=SiuB9o3pDS574CYa2iLp/5Iwfh
 +0+CXOeli8U2mNQ9VB14n2PFCGPTC90VZgP0sJTLHGLHHVpeL3IvK95+bV8iBCxPE7g2EjoKorYzE
 3MfFZBp7ilOmq/yBPM9Hm7ZB4QMNyW4Sznyqyalq4rj7Ye6aIabTDstjgfoncySOlZgo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=TP49E0lt1lRfwVwEUZNQYaCBfTY4UGz9ptrNHBZhxcM=; b=WAg60hDBM1w8UNWlPF59JBfKgM
 uyD5Nl27bm1yxpCY8Xva1ubu0E3GwuDd9UKfu+RORYUNX2fdNTC5SwazGrJrthPGkV7oPfBnBKOQb
 Vccq7QJUxu5iNr6a7GSLgJqak6l6WiTqCttJXbXXMy0SCAoQDRVtqZQoT9+MIcd45+I4=;
Received: from mail-wm1-f43.google.com ([209.85.128.43])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1qmf2r-0002ZA-5k for openipmi-developer@lists.sourceforge.net;
 Sat, 30 Sep 2023 18:50:33 +0000
Received: by mail-wm1-f43.google.com with SMTP id
 5b1f17b1804b1-4064867903cso50609945e9.2
 for <openipmi-developer@lists.sourceforge.net>;
 Sat, 30 Sep 2023 11:50:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=philpotter-co-uk.20230601.gappssmtp.com; s=20230601; t=1696099823;
 x=1696704623; darn=lists.sourceforge.net; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=TP49E0lt1lRfwVwEUZNQYaCBfTY4UGz9ptrNHBZhxcM=;
 b=GqYYeG79vEmAbvrmJva/NRhoSSp3+6TYiM3Ff0UdR+V6VNdGI4PSdh77dCfTjpf75M
 Ep5S2T28QZ66NAihC9f6IXaQ/9oq2VzXxnN9zk6W6BXcPEFG/3SfcBMLoi4H59ci/Gky
 Y/4bGaMn5rwE0q1U835n8+dbjlWysRjexIyfFp7toKIHwXMTI8/+aKsnEDAbfTKd5mmw
 JmVUm2wgLBLImLuC9iHMGWV0wh6PKPQBL7nDb9Ok/fT7S0Qifw2nZV1A+zCglSQMhprS
 PIk6B7rfXI+CAcRYAj4shU8BoOrQoO7vEmT4697uz5rz41ioXLkmGQYZVBFTqnRxUkds
 21ig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1696099823; x=1696704623;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=TP49E0lt1lRfwVwEUZNQYaCBfTY4UGz9ptrNHBZhxcM=;
 b=FiJCcKNmXRwIfmGjiGMXQjauNDvPyGjcNajK+8H42z79etnYlEKqOV7/KgtIdaN5TV
 AWLA9Vu3pdZ12mwcTBNIR12JAYKtxOEtAXT4VuH5/Ff2gKcHiQ98qXfG3Gy3sy4Zot/8
 kuMDnqdXKz2FYPRlv/WgzDYhQAb/urepfinNebi6bOw+i7Acj9CrI4UBxIwdlVKbzNFT
 7fkxDTZasOx8dJKq12lEylif2mw5yIziEmu8AZKNqzyQEQy4xnOVVwXx1dHCQTKCtwbA
 uXi39uFkhbxLcKOKH30ShciQ0gfzufyclA5nXrQpatJ/+6a/bgqRcBLfrFZ3Z4lXpcaP
 z8MQ==
X-Gm-Message-State: AOJu0YzHn4esJ2B87rOllbfNz7d0Ey/r0H9dayvuTOJk4tQ8mG+LW21m
 grrKqUbZY3Y9X1O+5cSYVT7Ycdr3omGJPQt5HjCAUaPQ
X-Google-Smtp-Source: AGHT+IFufhUosQmDbdYYO0lgqH5WgmabRsKPy1NuiT6FdEpd1klh9Lx806UT3kRvn4yTyQ0Y4WLs9Q==
X-Received: by 2002:adf:cf0a:0:b0:323:1689:6607 with SMTP id
 o10-20020adfcf0a000000b0032316896607mr6789063wrj.5.1696092741022; 
 Sat, 30 Sep 2023 09:52:21 -0700 (PDT)
Received: from equinox
 (2.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.a.1.e.e.d.f.d.0.b.8.0.1.0.0.2.ip6.arpa.
 [2001:8b0:dfde:e1a0::2]) by smtp.gmail.com with ESMTPSA id
 u1-20020adfed41000000b003247d3e5d99sm4921066wro.55.2023.09.30.09.52.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 30 Sep 2023 09:52:20 -0700 (PDT)
Date: Sat, 30 Sep 2023 17:52:17 +0100
From: Phillip Potter <phil@philpotter.co.uk>
To: Joel Granados <j.granados@samsung.com>
Message-ID: <ZRhSQaNDJih5xABq@equinox>
References: <20230928-jag-sysctl_remove_empty_elem_drivers-v1-0-e59120fca9f9@samsung.com>
 <20230928-jag-sysctl_remove_empty_elem_drivers-v1-1-e59120fca9f9@samsung.com>
 <CGME20230928133705eucas1p182bd81a8e6aff530e43f9b0746a24eaa@eucas1p1.samsung.com>
 <2023092855-cultivate-earthy-4d25@gregkh>
 <20230929121730.bwzhrpaptf45smfy@localhost>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230929121730.bwzhrpaptf45smfy@localhost>
X-Spam-Score: -0.7 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Fri, Sep 29, 2023 at 02:17:30PM +0200,
 Joel Granados wrote:
 > On Thu, Sep 28, 2023 at 03:36:55PM +0200, Greg Kroah-Hartman wrote: > >
 On Thu, Sep 28, 2023 at 03:21:26PM +0200, Joel Granados via B4 [...] 
 Content analysis details:   (-0.7 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.43 listed in list.dnswl.org]
 -0.7 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.43 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1qmf2r-0002ZA-5k
X-Mailman-Approved-At: Sat, 30 Sep 2023 19:44:06 +0000
Subject: Re: [Openipmi-developer] [PATCH 01/15] cdrom: Remove now
 superfluous sentinel element from ctl_table array
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
Cc: "Jason A. Donenfeld" <Jason@zx2c4.com>, Steve Wahl <steve.wahl@hpe.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Clemens Ladisch <clemens@ladisch.de>, linux-hyperv@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 Song Liu <song@kernel.org>, Eric Dumazet <edumazet@google.com>,
 "K. Y. Srinivasan" <kys@microsoft.com>, Jiri Slaby <jirislaby@kernel.org>,
 Russ Weight <russell.h.weight@intel.com>, Wei Liu <wei.liu@kernel.org>,
 Stefano Stabellini <sstabellini@kernel.org>, Corey Minyard <minyard@acm.org>,
 Leon Romanovsky <leon@kernel.org>, linux-rdma@vger.kernel.org,
 David Airlie <airlied@gmail.com>, "Rafael J. Wysocki" <rafael@kernel.org>,
 Dexuan Cui <decui@microsoft.com>, willy@infradead.org,
 Jason Gunthorpe <jgg@ziepe.ca>, linux-serial@vger.kernel.org,
 Doug Gilbert <dgilbert@interlog.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Haiyang Zhang <haiyangz@microsoft.com>,
 Kees Cook <keescook@chromium.org>, Arnd Bergmann <arnd@arndb.de>,
 "James E.J. Bottomley" <jejb@linux.ibm.com>, intel-gfx@lists.freedesktop.org,
 josh@joshtriplett.org, Jani Nikula <jani.nikula@linux.intel.com>,
 linux-raid@vger.kernel.org, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 xen-devel@lists.xenproject.org, openipmi-developer@lists.sourceforge.net,
 Juergen Gross <jgross@suse.com>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>, Theodore Ts'o <tytso@mit.edu>,
 linux-scsi@vger.kernel.org, "Martin K. Petersen" <martin.petersen@oracle.com>,
 netdev@vger.kernel.org, David Ahern <dsahern@kernel.org>,
 Robin Holt <robinmholt@gmail.com>,
 Sudip Mukherjee <sudipm.mukherjee@gmail.com>,
 Oleksandr Tyshchenko <oleksandr_tyshchenko@epam.com>,
 Luis Chamberlain <mcgrof@kernel.org>, Daniel Vetter <daniel@ffwll.ch>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linuxppc-dev@lists.ozlabs.org,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Fri, Sep 29, 2023 at 02:17:30PM +0200, Joel Granados wrote:
> On Thu, Sep 28, 2023 at 03:36:55PM +0200, Greg Kroah-Hartman wrote:
> > On Thu, Sep 28, 2023 at 03:21:26PM +0200, Joel Granados via B4 Relay wrote:
> > > From: Joel Granados <j.granados@samsung.com>
> > > 
> > > This commit comes at the tail end of a greater effort to remove the
> > > empty elements at the end of the ctl_table arrays (sentinels) which
> > > will reduce the overall build time size of the kernel and run time
> > > memory bloat by ~64 bytes per sentinel (further information Link :
> > > https://lore.kernel.org/all/ZO5Yx5JFogGi%2FcBo@bombadil.infradead.org/)
> > > 
> > > Remove sentinel element from cdrom_table
> > > 
> > > Signed-off-by: Joel Granados <j.granados@samsung.com>
> > > ---
> > >  drivers/cdrom/cdrom.c | 3 +--
> > >  1 file changed, 1 insertion(+), 2 deletions(-)
> > > 
> > > diff --git a/drivers/cdrom/cdrom.c b/drivers/cdrom/cdrom.c
> > > index cc2839805983..451907ade389 100644
> > > --- a/drivers/cdrom/cdrom.c
> > > +++ b/drivers/cdrom/cdrom.c
> > > @@ -3654,8 +3654,7 @@ static struct ctl_table cdrom_table[] = {
> > >  		.maxlen		= sizeof(int),
> > >  		.mode		= 0644,
> > >  		.proc_handler	= cdrom_sysctl_handler
> > > -	},
> > > -	{ }
> > > +	}
> > 
> > You should have the final entry as "}," so as to make any future
> > additions to the list to only contain that entry, that's long been the
> > kernel style for lists like this.
> Will send a V2 with this included. Thx.
> 
> > 
> > So your patches will just remove one line, not 2 and add 1, making it a
> > smaller diff.
> indeed.
> 
> > 
> > thanks,
> > 
> > greg k-h
> 
> -- 
> 
> Joel Granados

Hi Joel,

Thank you for your patch. I look forward to seeing V2, and will be happy
to review it.

Regards,
Phil


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
