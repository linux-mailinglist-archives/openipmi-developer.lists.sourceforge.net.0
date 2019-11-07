Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A181BF31AB
	for <lists+openipmi-developer@lfdr.de>; Thu,  7 Nov 2019 15:39:19 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1iSiwQ-0003zO-Bb; Thu, 07 Nov 2019 14:39:18 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <Asmaa@mellanox.com>) id 1iSiwM-0003yM-UW
 for openipmi-developer@lists.sourceforge.net; Thu, 07 Nov 2019 14:39:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=G2+6w4QLpYPiAqHx/ZIBGv/3ZOriajfvs3sqbZWgrok=; b=ZJGCAHznx3pxSciTwHHB2cMhwq
 8v76QhKDt1um4Hx1a4x7FSNwH+L7bpwOldHakIPvKvcbvLszjQ4RZV/PM8s7Aitk5Am8bdqKKKwnb
 5/7Z1aoyDhjPTlUYmQpw1jhHDAR7lbzWv9MeqKxc5uTBaEHA4kZm+Mef4OzQOMI/4IKU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=G2+6w4QLpYPiAqHx/ZIBGv/3ZOriajfvs3sqbZWgrok=; b=e9JG3yknFW+rMBZKKXd5m8gES1
 Fiks3TS9raJRGkeB7WyWLGsPKtuK/eTCtO19wHkoYytNnVEnSXSMqHVNWNwaaOrdp/A3F4Zh6BOhX
 5vPvs3cBIdKtEBUecVrGu4Q73JxUVqmt9H01TabRq5GRlj1a0n8BJnkXkbGVKR0pGGuw=;
Received: from mail-eopbgr80073.outbound.protection.outlook.com ([40.107.8.73]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1iSiwF-003mOT-TL
 for openipmi-developer@lists.sourceforge.net; Thu, 07 Nov 2019 14:39:14 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DTCpZaaKTYkEckXg2a6AeI/NXwDIw6djG0cCFOsNBhjHrgT3QgD6FPyqIOj7Zh96Oa6mBGaU2YErNjgsI5Aqpa0FeOPdGsto9sRmKY+ot1bfzF65CpZQNvSnFVMiQg9DVvZEnZfO85r3N/BCZMRM4YPlX3+1m21bpMCkRtD6kTmlU/lYoKGS4usyqsdtskxFpC1WoTyyODBrdW60TvLjk+AuRMrx0o8D+vBGxyOK5Iukhl0YkJb6u3hUPhQDeN1DnTcC2vPFtzEoixUWXoC2/VrnDx7na4BiaX3OYezxFsXvkVImyecRryju8TPeSr1oNAxj3ov4ABMKRhZvxW+xDw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=G2+6w4QLpYPiAqHx/ZIBGv/3ZOriajfvs3sqbZWgrok=;
 b=Dc0WSmAYKXwAVAhsonkSC0zYi8jyOl6ufQ0ivlOaVpv+papINcNwfy4ySUTRAMCRRXBWiQJFYdpTE5Edfhoyk8B8Mx/WsFfSl2unhUUa6O1DdHC0Bq0S8+ZEDJKMWColhsMez9vctAQ6ET9JAqK2AnmxDF7+OO1g7HzWJwIbROlrk4zYCSB2KdnF/6nataJBjo+Rho5aUuyFgUmC0Z3vfjrKNiKmiHe97ZIvGjvvDT4frUPVJBSipy6LVGPw51SGAbHLIhcIupw/8Pqf2bJOD2REiV4tTW0i8yw+51lx/Lg1eQmBDh94S3gzzxtwiLxu7lyRwuFIcQxGZ14mtpKU6A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=mellanox.com; dmarc=pass action=none header.from=mellanox.com;
 dkim=pass header.d=mellanox.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Mellanox.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=G2+6w4QLpYPiAqHx/ZIBGv/3ZOriajfvs3sqbZWgrok=;
 b=Dn3OSl6jDzZfCvnoRts6LWkj7C6SCOwPOHXZswvLTBfQg4RWW++MT6YGsw0BtyoX9r/Kyaurgm8j980AoLJoyjva5ugVaHb2FSjdCoZLS/dV7bYa6Zce2+lFeGwEXVOw9B3NKn+BIIMaIU2fGdicnP0Ja8VcrpDbavAl53uGb2U=
Received: from DB6PR0501MB2712.eurprd05.prod.outlook.com (10.172.225.17) by
 DB6PR0501MB2310.eurprd05.prod.outlook.com (10.168.56.135) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2408.24; Thu, 7 Nov 2019 14:23:29 +0000
Received: from DB6PR0501MB2712.eurprd05.prod.outlook.com
 ([fe80::99be:5f3a:9871:ecd1]) by DB6PR0501MB2712.eurprd05.prod.outlook.com
 ([fe80::99be:5f3a:9871:ecd1%12]) with mapi id 15.20.2430.020; Thu, 7 Nov 2019
 14:23:29 +0000
From: Asmaa Mnebhi <Asmaa@mellanox.com>
To: "minyard@acm.org" <minyard@acm.org>, Vijay Khemka <vijaykhemka@fb.com>
Thread-Topic: [PATCH v2] drivers: ipmi: Support for both IPMB Req and Resp
Thread-Index: AQHVlNCPTAuJYh4uBUOyQnqtKtQrYKd/toOAgAANqzA=
Date: Thu, 7 Nov 2019 14:23:29 +0000
Message-ID: <DB6PR0501MB271256AD5BC602AAF90CBDA5DA780@DB6PR0501MB2712.eurprd05.prod.outlook.com>
References: <20191106182921.1086795-1-vijaykhemka@fb.com>
 <20191107133425.GA10276@minyard.net>
In-Reply-To: <20191107133425.GA10276@minyard.net>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Asmaa@mellanox.com; 
x-originating-ip: [216.156.69.42]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 92d4ea31-f556-47db-934e-08d7638e0f78
x-ms-traffictypediagnostic: DB6PR0501MB2310:
x-microsoft-antispam-prvs: <DB6PR0501MB23104B39BD5225C2319E2D33DA780@DB6PR0501MB2310.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2958;
x-forefront-prvs: 0214EB3F68
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(376002)(366004)(346002)(39840400004)(136003)(13464003)(189003)(199004)(446003)(6436002)(229853002)(11346002)(71200400001)(71190400001)(476003)(478600001)(7416002)(14454004)(2906002)(486006)(9686003)(55016002)(5660300002)(7696005)(81166006)(81156014)(66066001)(8676002)(76176011)(8936002)(86362001)(66556008)(52536014)(2501003)(76116006)(66946007)(99286004)(64756008)(66446008)(66476007)(80792005)(33656002)(6506007)(53546011)(14444005)(4326008)(74316002)(54906003)(110136005)(25786009)(316002)(305945005)(26005)(3846002)(256004)(186003)(102836004)(7736002)(6246003)(6116002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB6PR0501MB2310;
 H:DB6PR0501MB2712.eurprd05.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: mellanox.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: BWm3BmpjGGcBxQwh5sB8AbvMZOCpBNNFHC+k76JaqceQxEEMmj4G/OnjoORSJI25CtXn5KI4bwNX98FQ+mdnpMfFz7T6CgTaMJMob3BWIVwXHJULl4+iHq89S33IqUnK7B1m48f79kTZfqbWULneOuQjxzXiz39jVS6/yoZ54LMZTVyO6O7b34S8FxRMNTja2kCrH39HyYV+l4/XqG2V9jk3K8NDAuJjKQlX4s+U9SXEM4osP6Ikjr93AMEpyAEN4lOSIxJnwsg2A0PiPvdU4WSkqRMDKCSdzIa9QX1Mw0jVUUGvs0MbQDiDcL/cQayswSZBqPHtXghflcIPJD3Nb61nLa7EoCJNFDX+fGPWKADPwSL3yGl7mMSrcwneQ2pj4KNtsj05y+n3t8khdu2ntrT25QQp5YHPvV92mZnLnohcotTbfzrSLduXOxMz7yjp
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: Mellanox.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 92d4ea31-f556-47db-934e-08d7638e0f78
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Nov 2019 14:23:29.0911 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a652971c-7d2e-4d9b-a6a4-d149256f461b
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 0kivpT510xJ3W6vgpsqPJYakDQKRbOrNlK+ra7B26O7d+dAXNICySM7NAgLe+Qw6CusWQuOGp/61xBm3+4wCjQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR0501MB2310
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: mvista.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [40.107.8.73 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1iSiwF-003mOT-TL
Subject: Re: [Openipmi-developer] [PATCH v2] drivers: ipmi: Support for both
 IPMB Req and Resp
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
Cc: "cminyard@mvista.com" <cminyard@mvista.com>,
 "sdasari@fb.com" <sdasari@fb.com>,
 "linux-aspeed@lists.ozlabs.org" <linux-aspeed@lists.ozlabs.org>,
 Arnd Bergmann <arnd@arndb.de>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "openipmi-developer@lists.sourceforge.net"
 <openipmi-developer@lists.sourceforge.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

Thanks Corey!

-----Original Message-----
From: Corey Minyard <tcminyard@gmail.com> On Behalf Of Corey Minyard
Sent: Thursday, November 7, 2019 8:34 AM
To: Vijay Khemka <vijaykhemka@fb.com>
Cc: Arnd Bergmann <arnd@arndb.de>; Greg Kroah-Hartman <gregkh@linuxfoundation.org>; openipmi-developer@lists.sourceforge.net; linux-kernel@vger.kernel.org; cminyard@mvista.com; Asmaa Mnebhi <Asmaa@mellanox.com>; joel@jms.id.au; linux-aspeed@lists.ozlabs.org; sdasari@fb.com
Subject: Re: [PATCH v2] drivers: ipmi: Support for both IPMB Req and Resp

On Wed, Nov 06, 2019 at 10:29:21AM -0800, Vijay Khemka wrote:
> Removed check for request or response in IPMB packets coming from 
> device as well as from host. Now it supports both way communication to 
> device via IPMB. Both request and response will be passed to 
> application.
> 
> Signed-off-by: Vijay Khemka <vijaykhemka@fb.com>

Thanks, this is in my for-next tree now.  Asnaam, I took your previous comments as a "Reviewed-by", if that is ok.

-corey

> ---
>  drivers/char/ipmi/ipmb_dev_int.c | 31 +++++++++----------------------
>  1 file changed, 9 insertions(+), 22 deletions(-)
> 
> diff --git a/drivers/char/ipmi/ipmb_dev_int.c 
> b/drivers/char/ipmi/ipmb_dev_int.c
> index 285e0b8f9a97..ae3bfba27526 100644
> --- a/drivers/char/ipmi/ipmb_dev_int.c
> +++ b/drivers/char/ipmi/ipmb_dev_int.c
> @@ -133,9 +133,6 @@ static ssize_t ipmb_write(struct file *file, const char __user *buf,
>  	rq_sa = GET_7BIT_ADDR(msg[RQ_SA_8BIT_IDX]);
>  	netf_rq_lun = msg[NETFN_LUN_IDX];
>  
> -	if (!(netf_rq_lun & NETFN_RSP_BIT_MASK))
> -		return -EINVAL;
> -
>  	/*
>  	 * subtract rq_sa and netf_rq_lun from the length of the msg passed to
>  	 * i2c_smbus_xfer
> @@ -203,25 +200,16 @@ static u8 ipmb_verify_checksum1(struct ipmb_dev *ipmb_dev, u8 rs_sa)
>  		ipmb_dev->request.checksum1);
>  }
>  
> -static bool is_ipmb_request(struct ipmb_dev *ipmb_dev, u8 rs_sa)
> +/*
> + * Verify if message has proper ipmb header with minimum length
> + * and correct checksum byte.
> + */
> +static bool is_ipmb_msg(struct ipmb_dev *ipmb_dev, u8 rs_sa)
>  {
> -	if (ipmb_dev->msg_idx >= IPMB_REQUEST_LEN_MIN) {
> -		if (ipmb_verify_checksum1(ipmb_dev, rs_sa))
> -			return false;
> +	if ((ipmb_dev->msg_idx >= IPMB_REQUEST_LEN_MIN) &&
> +	   (!ipmb_verify_checksum1(ipmb_dev, rs_sa)))
> +		return true;
>  
> -		/*
> -		 * Check whether this is an IPMB request or
> -		 * response.
> -		 * The 6 MSB of netfn_rs_lun are dedicated to the netfn
> -		 * while the remaining bits are dedicated to the lun.
> -		 * If the LSB of the netfn is cleared, it is associated
> -		 * with an IPMB request.
> -		 * If the LSB of the netfn is set, it is associated with
> -		 * an IPMB response.
> -		 */
> -		if (!(ipmb_dev->request.netfn_rs_lun & NETFN_RSP_BIT_MASK))
> -			return true;
> -	}
>  	return false;
>  }
>  
> @@ -273,8 +261,7 @@ static int ipmb_slave_cb(struct i2c_client 
> *client,
>  
>  	case I2C_SLAVE_STOP:
>  		ipmb_dev->request.len = ipmb_dev->msg_idx;
> -
> -		if (is_ipmb_request(ipmb_dev, GET_8BIT_ADDR(client->addr)))
> +		if (is_ipmb_msg(ipmb_dev, GET_8BIT_ADDR(client->addr)))
>  			ipmb_handle_request(ipmb_dev);
>  		break;
>  
> --
> 2.17.1
> 


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
