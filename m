Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 673B528674E
	for <lists+openipmi-developer@lfdr.de>; Wed,  7 Oct 2020 20:29:43 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1kQEC5-0008E5-Ls; Wed, 07 Oct 2020 18:29:41 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <broonie@kernel.org>) id 1kNwMu-0008TC-37
 for openipmi-developer@lists.sourceforge.net; Thu, 01 Oct 2020 11:03:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=GnPPuYDByCZH4wdCICFRd3N/LgirXY0nGm3IKjz5mEg=; b=C8J2G8LLcDsvwyi4SuyyObNdgk
 JhOXe3Zqcs539aGgD6tC0MTyhzCG9hrh55K71PVHK1hUPE4cOiDtl8XKxIOp3uHBdka4eB56pOjYQ
 4JhZhOGHweqb/1FvIoQWDvQrwegbI+ec13jg7emHI6JP2OE/CqKgMiH1ogPIW1qrN7hc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=GnPPuYDByCZH4wdCICFRd3N/LgirXY0nGm3IKjz5mEg=; b=SYLzWC3MRkhDfUPEWkttJfnWEV
 Z5AEXODHeIMMfiFxHGqsAT+rGzVgs225iGiAvDg64f7Cq49UrheMWSwLBPWQX0TRYFr+C76oxJ0XE
 I1tZu87vvu673w+blF6wci8LLFVxfFJq81sZIZYf6E3Cc9/w7yweM9sdwDznOM4y+Heg=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kNwMd-00Fr7S-SF
 for openipmi-developer@lists.sourceforge.net; Thu, 01 Oct 2020 11:03:22 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D93AE20B1F;
 Thu,  1 Oct 2020 11:02:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1601550170;
 bh=xYiMC3INrKF34oEyrsmUUrqjbwI/zSijaQlQHN9HorA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=KEei53PbBIIkdzQLDb/7K/52YSbflBQYn3bG/m713eKa8/9nV0fPPDI4yq6H+/fvV
 xVqht4hR38nzz4Qgnh/AAp0mk+5WyFzIOOYfEFPMoUP75ral06RLc43LxHUnNG4hb1
 tZZP4hijlYOR/icBsCoZV1jH7RB2VuKegMZKFfws=
Date: Thu, 1 Oct 2020 12:01:50 +0100
From: Mark Brown <broonie@kernel.org>
To: Joe Perches <joe@perches.com>
Message-ID: <20201001110150.GA6715@sirena.org.uk>
References: <1601233948-11629-1-git-send-email-Julia.Lawall@inria.fr>
 <160132172369.55460.9237357219623604216.b4-ty@kernel.org>
 <b1174f9be2ce65f6b5ebefcba0b48e792926abbc.camel@perches.com>
 <20200929113745.GB4799@sirena.org.uk>
 <db26d49401dc0bd6b9013a603a155f9827f404a4.camel@perches.com>
MIME-Version: 1.0
In-Reply-To: <db26d49401dc0bd6b9013a603a155f9827f404a4.camel@perches.com>
X-Cookie: Stay away from flying saucers today.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1kNwMd-00Fr7S-SF
X-Mailman-Approved-At: Wed, 07 Oct 2020 18:29:27 +0000
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
Content-Type: multipart/mixed; boundary="===============8355065859087220408=="
Errors-To: openipmi-developer-bounces@lists.sourceforge.net


--===============8355065859087220408==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="CE+1k2dSO48ffgeK"
Content-Disposition: inline


--CE+1k2dSO48ffgeK
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Sep 30, 2020 at 12:33:39PM -0700, Joe Perches wrote:
> On Tue, 2020-09-29 at 12:37 +0100, Mark Brown wrote:

> > Feel free to submit patches to b4.

> Have you tried the existing option to send
> thank you's on a specific ranges of patches?

I am relying on b4 to identify which patches that I've downloaded are in
the pushed branches.  Given that it explicitly lists the patches that
are applied it appears to be doing an OK job here.

--CE+1k2dSO48ffgeK
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl91tx4ACgkQJNaLcl1U
h9D1IAf/a6Dh+mjW+LjpuCd+hkWCJa8iJTLmYSy9suf32mX9fM1T/gbOLQ1RJtu4
ZQP0A5w52htIbRIWtYHrgtZQGXrq2SIm+peRmnKP0DXly+Fj0/G0zxg4lqxKzXtV
+XpQjLbvcjF6JIV1ok5ScRg5HH8bfLJQvbGBbpmL9pvI+WniF4smB5bQRwd3qWEf
MrBNI79S+kr1Cvjxnya+/TP7O4TtOQzzpB695ejEGvqxlTJQM5GGaZTLNJlBivOz
ygXvOFlrffOajvN1K7URe41xznaDG4+c8pfziFXllSoEGp3yzANBNTtCGEvny0SY
Nx0W3O8/sebfFJPHQ89w2atWG/nVEQ==
=onQ8
-----END PGP SIGNATURE-----

--CE+1k2dSO48ffgeK--


--===============8355065859087220408==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============8355065859087220408==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

--===============8355065859087220408==--

