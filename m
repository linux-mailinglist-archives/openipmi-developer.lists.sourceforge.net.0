Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CB852ABBBFE
	for <lists+openipmi-developer@lfdr.de>; Mon, 19 May 2025 13:08:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Type:Cc:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=q7p7//85A05rkaHvbXEYk7wQHldD61zmyegdVEKhPPc=; b=S1TYGSCS9iQMBayhBTKb0Lb1Gj
	T+tQt9HiJsPJZ5WdwXWhlZ8Jt0hzk7gYJYiKfSDa+mRD6ANiAmcIM9Y6xoH8/mYKNJacfz/IHKwuB
	34fx1Y2iSDlgUjdC3r4tSPf5tVcuYMbc8CRLBVd/4kAmewHHqVZJbbs6/tAk3fnhGR5Q=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1uGyMN-0003dV-0O;
	Mon, 19 May 2025 11:08:43 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <pavel@ucw.cz>) id 1uGyMK-0003dD-3c
 for openipmi-developer@lists.sourceforge.net;
 Mon, 19 May 2025 11:08:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=wqHSHMNjwPahuHRb2M/03gC2UK+sZwBdUQwHO3smOZs=; b=QinPWyUquL2Dl/4EVyxV2LJ3p7
 5Lt+TllEASHR/sSeHgxfv/5kV/c62u6OaPmpkhYnDlIAUsWrmqeezs7+UcN51KUgBB4Ia0oNK4D1Q
 fSMRdY/Ahfcgcx7Rvi2LFqSNqw3ko7mR/nkxmcWyyvJRrL9qKhzKivmFT12efdLAbQYE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=wqHSHMNjwPahuHRb2M/03gC2UK+sZwBdUQwHO3smOZs=; b=m/PZogy67eYyo2k0E6re61+bO8
 P15mt9cxLBlk8YdYqaNVe1JaOf+TUewB3RxfwHed+5LYe2Dm/tpsIDnXiniRSenhB1Mj56YHrASW9
 +zdr9qWM9SRAel7fj4m3iwWD3WJuut37AYT0Hi6uys45ntjwiwHXmS0pjwJRSRHw8UGc=;
Received: from jabberwock.ucw.cz ([46.255.230.98])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1uGyMI-0001g7-HY for openipmi-developer@lists.sourceforge.net;
 Mon, 19 May 2025 11:08:40 +0000
Received: by jabberwock.ucw.cz (Postfix, from userid 1017)
 id 8A5411C00B2; Mon, 19 May 2025 12:51:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ucw.cz; s=gen1;
 t=1747651890;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=wqHSHMNjwPahuHRb2M/03gC2UK+sZwBdUQwHO3smOZs=;
 b=fe2phNgzKQNmp8uKjoSeP53Hj3aPw4ryW4AhnKgHl9OELLyCaJ62HkTIhxy7TuvIp2+bn9
 KMzT35GYGQfU10PxHPtLaYNH8ntH1nPWYJrbhHWSLQ/gip26CAGLtQgMmYr6qdc0yyjy3t
 Fh2QliFEWwV2qot/FI59YjG2w+0rRaY=
Date: Mon, 19 May 2025 12:51:30 +0200
From: Pavel Machek <pavel@ucw.cz>
To: Tony Hutter <hutter2@llnl.gov>, linux-leds@vger.kernel.org
Message-ID: <aCsNMvfSWptltx5k@duo.ucw.cz>
References: <553813b6-1d44-488c-b41b-4be08e1c1733@llnl.gov>
MIME-Version: 1.0
In-Reply-To: <553813b6-1d44-488c-b41b-4be08e1c1733@llnl.gov>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "6901ab67b84d", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi! > Add driver to control the NVMe slot LEDs on the Cray
 ClusterStor E1000. > The driver provides hotplug attention status callbacks
 for the 24 NVMe > slots on the E1000. This allows users to access the [...]
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1uGyMI-0001g7-HY
Subject: Re: [Openipmi-developer] [PATCH v3 RESEND] PCI: Introduce Cray
 ClusterStor E1000 NVMe slot LED driver
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
Cc: minyard@acm.org, linux-pci@vger.kernel.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Lukas Wunner <lukas@wunner.de>, Bjorn Helgaas <helgaas@kernel.org>,
 openipmi-developer@lists.sourceforge.net, mariusz.tkaczyk@linux.intel.com
Content-Type: multipart/mixed; boundary="===============2697140851207628679=="
Errors-To: openipmi-developer-bounces@lists.sourceforge.net


--===============2697140851207628679==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="/0WdGnjK/qdBFyct"
Content-Disposition: inline


--/0WdGnjK/qdBFyct
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi!

> Add driver to control the NVMe slot LEDs on the Cray ClusterStor E1000.
> The driver provides hotplug attention status callbacks for the 24 NVMe
> slots on the E1000.  This allows users to access the E1000's locate and
> fault LEDs via the normal /sys/bus/pci/slots/<slot>/attention sysfs
> entries.  This driver uses IPMI to communicate with the E1000 controller
> to toggle the LEDs.
>=20
> Signed-off-by: Tony Hutter <hutter2@llnl.gov>

We have LED subsystem.

> +++ b/Documentation/ABI/testing/sysfs-bus-pci
> @@ -231,6 +231,27 @@ Description:
>  		    - scXX contains the device subclass;
>  		    - iXX contains the device class programming interface.
> =20
> +What:		/sys/bus/pci/slots/.../attention
> +Date:		February 2025
> +Contact:	linux-pci@vger.kernel.org
> +Description:
> +		The attention attribute is used to read or write the attention
> +		status for an enclosure slot.  This is often used to set the
> +		slot LED value on a NVMe storage enclosure.
> +
> +		Common values:
> +		0 =3D OFF
> +		1 =3D ON
> +		2 =3D blink (ampere, ibmphp, pciehp, rpaphp, shpchp)
> +
> +		Using the pciehp_craye1k extensions:
> +		0 =3D fault LED OFF, locate LED OFF
> +		1 =3D fault LED ON,  locate LED OFF
> +		2 =3D fault LED OFF, locate LED ON
> +		3 =3D fault LED ON,  locate LED ON
> +
> +		Other values are no-op, OFF, or ON depending on the driver.
> +

And this should use it.

Best regards,
									Pavel
--=20
I don't work for Nazis and criminals, and neither should you.
Boycott Putin, Trump, and Musk!

--/0WdGnjK/qdBFyct
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iF0EABECAB0WIQRPfPO7r0eAhk010v0w5/Bqldv68gUCaCsNMgAKCRAw5/Bqldv6
8gL9AJ9ioZr4CiKLusY4swf/Km1O2Q0M2QCggc56FgkysxptA3E0mCfEeZhf3o8=
=9ag7
-----END PGP SIGNATURE-----

--/0WdGnjK/qdBFyct--


--===============2697140851207628679==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============2697140851207628679==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

--===============2697140851207628679==--

