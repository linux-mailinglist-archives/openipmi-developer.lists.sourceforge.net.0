Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 33ED7286745
	for <lists+openipmi-developer@lfdr.de>; Wed,  7 Oct 2020 20:29:42 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1kQEC4-0008AT-Jy; Wed, 07 Oct 2020 18:29:40 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <broonie@kernel.org>) id 1kNDyH-0002d2-Kp
 for openipmi-developer@lists.sourceforge.net; Tue, 29 Sep 2020 11:39:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=rd/1Agd23RwU1AJ5mZvjTyxRdNBlEe5uLnAl4bQrPAM=; b=azPat1E+JYWkb93KUOXlsZ0u9e
 RBfM5HhBamd63cn7li082M6SRpEgvJAtSm/MU46qtWA97SWQIlnMkriv1/0WMyLDQy1r3nHlmTPjA
 I4qeAZZtCCMxnPTDWBj/LwDQpv3QZtvr6ocB0Hvy/S45BXZf0EfUh88nnoprfuDfVR9Q=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=rd/1Agd23RwU1AJ5mZvjTyxRdNBlEe5uLnAl4bQrPAM=; b=EXfsSRiic75fz4Hntpqe7nSCPi
 MrtKbo6zgBrDXGDKLCxf7U7ibRuETw+Azy3N7Lv2uDasARoA+DSZTEx1SrG+7IxRSsIPvHk+d3AKc
 Mua98TBShpTYjXouCsIIEu3GLvwreNCSMbgYavQgkeXRKdX5umEfkt+XYi6EM6Yl7jGw=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kNDyD-00Cs0T-FG
 for openipmi-developer@lists.sourceforge.net; Tue, 29 Sep 2020 11:39:01 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6554921924;
 Tue, 29 Sep 2020 11:38:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1601379523;
 bh=a1gSTFeVH3iQKCsomWRRIF1vuKiVS5UiB6voFxEywig=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=hdzI0LjRLhiFG0H47FIBQWDcq5DX1OrXKHvX76qVWK0yBh7qixa5RtPKtcE8g49eP
 849mw8WVqgX3AJpUqyOH01WQOeFbrbw/M492DQxRltPOst6YZTph/nyc+VD+s81Egu
 Ct3VdN9U6DSJGkK9104YvlYtXkg0L6SNaTM2JCZ4=
Date: Tue, 29 Sep 2020 12:37:45 +0100
From: Mark Brown <broonie@kernel.org>
To: Joe Perches <joe@perches.com>
Message-ID: <20200929113745.GB4799@sirena.org.uk>
References: <1601233948-11629-1-git-send-email-Julia.Lawall@inria.fr>
 <160132172369.55460.9237357219623604216.b4-ty@kernel.org>
 <b1174f9be2ce65f6b5ebefcba0b48e792926abbc.camel@perches.com>
MIME-Version: 1.0
In-Reply-To: <b1174f9be2ce65f6b5ebefcba0b48e792926abbc.camel@perches.com>
X-Cookie: I left my WALLET in the BATHROOM!!
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Spam-Score: -0.8 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1kNDyD-00Cs0T-FG
X-Mailman-Approved-At: Wed, 07 Oct 2020 18:29:26 +0000
Subject: Re: [Openipmi-developer] [PATCH 00/18] use semicolons rather than
 commas to separate statements
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
Cc: "Rafael J. Wysocki" <rafael@kernel.org>, linux-iio@vger.kernel.org,
 kernel-janitors@vger.kernel.org, linux-ide@vger.kernel.org,
 linux-clk@vger.kernel.org, drbd-dev@lists.linbit.com,
 Neil Armstrong <narmstrong@baylibre.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-acpi@vger.kernel.org,
 Jerome Brunet <jbrunet@baylibre.com>, David Lechner <david@lechnology.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-block@vger.kernel.org, linux-amlogic@lists.infradead.org,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org,
 Valdis =?utf-8?Q?Kl=C4=93tnieks?= <valdis.kletnieks@vt.edu>,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 Julia Lawall <Julia.Lawall@inria.fr>, linux-crypto@vger.kernel.org,
 openipmi-developer@lists.sourceforge.net
Content-Type: multipart/mixed; boundary="===============6413622134149989558=="
Errors-To: openipmi-developer-bounces@lists.sourceforge.net


--===============6413622134149989558==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="0ntfKIWw70PvrIHh"
Content-Disposition: inline


--0ntfKIWw70PvrIHh
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Sep 28, 2020 at 05:45:24PM -0700, Joe Perches wrote:
> On Mon, 2020-09-28 at 20:35 +0100, Mark Brown wrote:

> > [1/1] regmap: debugfs: use semicolons rather than commas to separate statements
> >       commit: 7f4a122d0b50b40c64d24a5cf7aafe26dd9487ee

> Rather than replying to the 0/n cover letter to a patch
> series, can you reply to each of the specific patches in
> the patch series you are applying?

> Otherwise, it's a bit difficult to figure out which patches
> you are applying.

Feel free to submit patches to b4.  Ideally things like this wouldn't be
being sent as serieses in the first place, there's no dependencies or
interactions between the patches.

--0ntfKIWw70PvrIHh
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl9zHIgACgkQJNaLcl1U
h9AUrQf/V6+K22eTWHbMJo7Z/GUR0aZ8ZbPiLfJjhWnbSq+gQVC1xnbSwQx7hDlv
+AoeDaVjgmnGS3YtW/c1K8e4d2SFvxR89a5I5U/dEtc/j/N/5vnGgwxjLDfN5xUC
lV2F+ftiHGIRzn0ojcUVOj6hEIqnGvkQe17key6Po0TlZuuoZE+eh3mfbajDeYCs
/BJ39skDi0g8xqOY8V8qZAoH/Bowz0xIroEbdg0zbM78UIOi2Fzxl5MSXapN2Cd7
o9QO7lsPCWxberp7ZwIUg6cvYQnjBE4ZZRGsfnzuPRH4fptLRzDSZRJCSW6IqH8s
j8rUaeCv+XQBPjpBvj3FJIUWXyI5QQ==
=kEnh
-----END PGP SIGNATURE-----

--0ntfKIWw70PvrIHh--


--===============6413622134149989558==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============6413622134149989558==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

--===============6413622134149989558==--

