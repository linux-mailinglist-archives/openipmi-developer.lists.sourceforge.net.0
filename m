Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A3E9B3E2F73
	for <lists+openipmi-developer@lfdr.de>; Fri,  6 Aug 2021 20:46:36 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1mC4rY-00056z-LA; Fri, 06 Aug 2021 18:46:32 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dmitry.torokhov@gmail.com>) id 1mC4rX-00056q-Gd
 for openipmi-developer@lists.sourceforge.net; Fri, 06 Aug 2021 18:46:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=lq+ZJabFR/aEqAVLWWQwRS+Bk30mmVgINsLo2QOd63g=; b=OB6CPBa8b4YmA37QjmH4hpKjJE
 nA0gAbfB+JE1CooRJ1+/CNmhqVZxsiHerQRm+myNlhVN/r7io3/edqBs+pYIFJgQhrGeZn47jSJYu
 86JKHQNcsN4dOJS4XO5PBy2N+A+iFLeBX+NUu65eXa1nmaNm4Lb56d23TXS542m1fqgU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=lq+ZJabFR/aEqAVLWWQwRS+Bk30mmVgINsLo2QOd63g=; b=UcJpHtNfOL6TGDBfc6o0MpcZnW
 zHi1QZ9EOVDUQFtRzgFsL6Jiyswxj4hVOTLYJuDOvgBraFArAnkxceDLZ61NDYbQi6IuvmR4ZUyRD
 t/cEcob5spD9qh8ixQgLnNkKw/btGVBviNO8y5jJ1tXnH9ysEmU0QtMs/p5ixaAjrHh8=;
Received: from mail-pj1-f46.google.com ([209.85.216.46])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mC4rP-00F6MN-3i
 for openipmi-developer@lists.sourceforge.net; Fri, 06 Aug 2021 18:46:31 +0000
Received: by mail-pj1-f46.google.com with SMTP id
 u13-20020a17090abb0db0290177e1d9b3f7so24093215pjr.1
 for <openipmi-developer@lists.sourceforge.net>;
 Fri, 06 Aug 2021 11:46:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=lq+ZJabFR/aEqAVLWWQwRS+Bk30mmVgINsLo2QOd63g=;
 b=oPU85Ks4t/BD97TfUEBxq2w8KeO5d4b1Nvchn+Yv7kB9wyq/mf6St5MBYsxebm3xyK
 2TryVrMzKvdFR8lsNpJJvPTGVD4xpl+ayOSVdJa9rxZqEG8whTlQ9VyP8dlNEQrJJob9
 L1GJYfPOIitMNMopL09Z+xctxoFgA0e1jTOj55Hexm/8/2DIwLeTuQql2G/TkU9C3erd
 aqjtHdqEda9mrydWw7Nl7tQlscqzQhgaTkh3FsV8iPW0Y607/KxDgxiwjF79JrWcFsfS
 nD/+RPX0BYNASPKwyYxj4WgS75i+bpNHRnG/mqXLAaY3TvvGXIOmp2cf1T5bSsVeRVnR
 2OKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=lq+ZJabFR/aEqAVLWWQwRS+Bk30mmVgINsLo2QOd63g=;
 b=syVFs6FRZr7woVq1k2FpTmFuMNO3WtlDn2KtpNgzLHH6sfDJBklDvstFoF55+kFIF2
 w/gpfzL7vDLEocq3HbxmQisiqRXz2Mil4Ae1YK6UhwBWXoBv56WUyrOUGsKtQ2ZrBtoS
 k7bbfj5oqUTEjoBW5VentNsm+zxZSWOVOnRo6hGlnROWyYqYTGOydRyPpPIDv66KwDXK
 EgQhGwxMlfvVYizbfH8oH5CRfMTc9hjpZCf2lu7dxDVYN4kS2HBKacpuK0rvGY5XpEIZ
 IfiOsB+JYRVdwRfsiKL9omEf9CkCl5sYlTvixcZ5keaeeeGbGIc1jxFXzerGl3vUro4c
 s5SA==
X-Gm-Message-State: AOAM533l1sXxu258UBkNYY4tBQAqPftwmUpLeZT8UIiOJ5dUM/Pn7LLb
 jthh3fgz7vH7Tpbu25AZmaQ=
X-Google-Smtp-Source: ABdhPJzzMFSdpyMOk7GztnyuZ8fgTAmGVjar/iMG55IOe92tbJufWKgnV6AdQl2ufQFq5C/G1yNdUw==
X-Received: by 2002:a62:8f86:0:b029:32e:33d7:998b with SMTP id
 n128-20020a628f860000b029032e33d7998bmr12215091pfd.64.1628275577437; 
 Fri, 06 Aug 2021 11:46:17 -0700 (PDT)
Received: from google.com ([2620:15c:202:201:8873:2b2a:719c:18c7])
 by smtp.gmail.com with ESMTPSA id jz24sm10017062pjb.9.2021.08.06.11.46.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 06 Aug 2021 11:46:16 -0700 (PDT)
Date: Fri, 6 Aug 2021 11:46:13 -0700
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Message-ID: <YQ2DdZG2tQuzM22U@google.com>
References: <20210806093938.1950990-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210806093938.1950990-1-u.kleine-koenig@pengutronix.de>
X-Spam-Score: 2.8 (++)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 2.9 FSL_HELO_FAKE          No description available.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (dmitry.torokhov[at]gmail.com)
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: pengutronix.de]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.216.46 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.216.46 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1mC4rP-00F6MN-3i
Subject: Re: [Openipmi-developer] [PATCH] parisc: Make struct
 parisc_driver::remove() return void
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
Cc: kernel@pengutronix.de, alsa-devel@alsa-project.org,
 "Martin K. Petersen" <martin.petersen@oracle.com>,
 Corey Minyard <minyard@acm.org>, linux-scsi@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Helge Deller <deller@gmx.de>,
 Takashi Iwai <tiwai@suse.com>, Sudip Mukherjee <sudipm.mukherjee@gmail.com>,
 "James E.J. Bottomley" <James.Bottomley@hansenpartnership.com>,
 netdev@vger.kernel.org, linux-parisc@vger.kernel.org,
 linux-serial@vger.kernel.org, linux-input@vger.kernel.org,
 Jakub Kicinski <kuba@kernel.org>, openipmi-developer@lists.sourceforge.net,
 Jaroslav Kysela <perex@perex.cz>, Jiri Slaby <jirislaby@kernel.org>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Fri, Aug 06, 2021 at 11:39:38AM +0200, Uwe Kleine-K=F6nig wrote:
> The caller of this function (parisc_driver_remove() in
> arch/parisc/kernel/drivers.c) ignores the return value, so better don't
> return any value at all to not wake wrong expectations in driver authors.
> =

> The only function that could return a non-zero value before was
> ipmi_parisc_remove() which returns the return value of
> ipmi_si_remove_by_dev(). Make this function return void, too, as for all
> other callers the value is ignored, too.
> =

> Also fold in a small checkpatch fix for:
> =

> WARNING: Unnecessary space before function pointer arguments
> +	void (*remove) (struct parisc_device *dev);
> =

> Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> ---

...

>  drivers/input/keyboard/hilkbd.c          | 4 +---
>  drivers/input/serio/gscps2.c             | 3 +--

Acked-by: Dmitry Torokhov <dmitry.torokhov@gmail.com>

Thanks.

-- =

Dmitry


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
