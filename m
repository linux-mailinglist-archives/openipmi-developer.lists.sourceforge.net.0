Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D0CF28672D
	for <lists+openipmi-developer@lfdr.de>; Wed,  7 Oct 2020 20:29:40 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1kQEC2-00082q-FY; Wed, 07 Oct 2020 18:29:38 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tian.xianting@h3c.com>) id 1kIZ34-0001J6-2E
 for openipmi-developer@lists.sourceforge.net; Wed, 16 Sep 2020 15:08:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=w71FvJPvHoPqFGdSu0IMq5Ba9vK6nyCZtN5ymVRbCDk=; b=G/7SPdVfrxRwoqXEXhVAiCBziZ
 i7Q88ozAiPYbCn9torL1X1Iz44ftKzRh3GEXcicT/xJa/sS8/UKj63TwKcSjRVWo43PuLteX541be
 RQnGfQlkW7ZdAxtH0HQOe2dty13uKEIwg7bPTwQO5S/+sXM0HLUcWjrJArxyZRk5SMpg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=w71FvJPvHoPqFGdSu0IMq5Ba9vK6nyCZtN5ymVRbCDk=; b=SgC5OoCqP2HJm0jCi/JJLfNisd
 XncomwkjEF0Lp1z7UoUlwJB0MGqB4UmCEzNBd7e8h8+lIiTha31v+l5vh7GscSz6YGlWlKnnCfxZu
 pMiWTFLc0cRIUkS8FrJI/8mLK68Sj0fMKZ2IdO5XoJ9/cnxxDysIlvrGVnY81vm9+oBE=;
Received: from smtp.h3c.com ([60.191.123.50] helo=h3cspam02-ex.h3c.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kIZ2v-00Ca6E-J8
 for openipmi-developer@lists.sourceforge.net; Wed, 16 Sep 2020 15:08:41 +0000
Received: from DAG2EX01-BASE.srv.huawei-3com.com ([10.8.0.64])
 by h3cspam02-ex.h3c.com with ESMTPS id 08GF7RNE071408
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 16 Sep 2020 23:07:27 +0800 (GMT-8)
 (envelope-from tian.xianting@h3c.com)
Received: from DAG2EX03-BASE.srv.huawei-3com.com (10.8.0.66) by
 DAG2EX01-BASE.srv.huawei-3com.com (10.8.0.64) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 16 Sep 2020 23:07:31 +0800
Received: from DAG2EX03-BASE.srv.huawei-3com.com ([fe80::5d18:e01c:bbbd:c074])
 by DAG2EX03-BASE.srv.huawei-3com.com ([fe80::5d18:e01c:bbbd:c074%7])
 with mapi id 15.01.1713.004; Wed, 16 Sep 2020 23:07:29 +0800
From: Tianxianting <tian.xianting@h3c.com>
To: "minyard@acm.org" <minyard@acm.org>
Thread-Topic: [PATCH] ipmi: add retry in try_get_dev_id()
Thread-Index: AQHWi/KUv4PaYKMu7k+putdjlQvGRKlqxboAgACX95A=
Date: Wed, 16 Sep 2020 15:07:29 +0000
Message-ID: <39fc1fea8847405298e0ce750c3c3569@h3c.com>
References: <20200916062129.26129-1-tian.xianting@h3c.com>
 <20200916140126.GE3674@minyard.net>
In-Reply-To: <20200916140126.GE3674@minyard.net>
Accept-Language: en-US
Content-Language: zh-CN
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.99.141.128]
x-sender-location: DAG2
MIME-Version: 1.0
X-DNSRBL: 
X-MAIL: h3cspam02-ex.h3c.com 08GF7RNE071408
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1kIZ2v-00Ca6E-J8
X-Mailman-Approved-At: Wed, 07 Oct 2020 18:29:26 +0000
Subject: Re: [Openipmi-developer] [PATCH] ipmi: add retry in try_get_dev_id()
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
Cc: "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "openipmi-developer@lists.sourceforge.net"
 <openipmi-developer@lists.sourceforge.net>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "arnd@arndb.de" <arnd@arndb.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

Thanks you Corey for your kindly guides to me for these three patches :)

-----Original Message-----
From: Corey Minyard [mailto:tcminyard@gmail.com] On Behalf Of Corey Minyard
Sent: Wednesday, September 16, 2020 10:01 PM
To: tianxianting (RD) <tian.xianting@h3c.com>
Cc: arnd@arndb.de; gregkh@linuxfoundation.org; openipmi-developer@lists.sourceforge.net; linux-kernel@vger.kernel.org
Subject: Re: [PATCH] ipmi: add retry in try_get_dev_id()

On Wed, Sep 16, 2020 at 02:21:29PM +0800, Xianting Tian wrote:
> Use retry machanism to give device more opportunitys to correctly 
> response kernel when we received specific completion codes.
> 
> This is similar to what we done in __get_device_id().

Thanks.  I moved GET_DEVICE_ID_MAX_RETRY to include/linux/ipmi.h since uapi is for things exported to userspace.  But this is good, it's in my next tree.

-corey

> 
> Signed-off-by: Xianting Tian <tian.xianting@h3c.com>
> ---
>  drivers/char/ipmi/ipmi_msghandler.c |  2 --
>  drivers/char/ipmi/ipmi_si_intf.c    | 17 +++++++++++++++++
>  include/uapi/linux/ipmi.h           |  2 ++
>  3 files changed, 19 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/char/ipmi/ipmi_msghandler.c 
> b/drivers/char/ipmi/ipmi_msghandler.c
> index b9685093e..75cb7e062 100644
> --- a/drivers/char/ipmi/ipmi_msghandler.c
> +++ b/drivers/char/ipmi/ipmi_msghandler.c
> @@ -62,8 +62,6 @@ enum ipmi_panic_event_op {  #define 
> IPMI_PANIC_DEFAULT IPMI_SEND_PANIC_EVENT_NONE  #endif
>  
> -#define GET_DEVICE_ID_MAX_RETRY	5
> -
>  static enum ipmi_panic_event_op ipmi_send_panic_event = 
> IPMI_PANIC_DEFAULT;
>  
>  static int panic_op_write_handler(const char *val, diff --git 
> a/drivers/char/ipmi/ipmi_si_intf.c b/drivers/char/ipmi/ipmi_si_intf.c
> index 77b8d551a..beeb705f1 100644
> --- a/drivers/char/ipmi/ipmi_si_intf.c
> +++ b/drivers/char/ipmi/ipmi_si_intf.c
> @@ -1316,6 +1316,7 @@ static int try_get_dev_id(struct smi_info *smi_info)
>  	unsigned char         *resp;
>  	unsigned long         resp_len;
>  	int                   rv = 0;
> +	unsigned int          retry_count = 0;
>  
>  	resp = kmalloc(IPMI_MAX_MSG_LENGTH, GFP_KERNEL);
>  	if (!resp)
> @@ -1327,6 +1328,8 @@ static int try_get_dev_id(struct smi_info *smi_info)
>  	 */
>  	msg[0] = IPMI_NETFN_APP_REQUEST << 2;
>  	msg[1] = IPMI_GET_DEVICE_ID_CMD;
> +
> +retry:
>  	smi_info->handlers->start_transaction(smi_info->si_sm, msg, 2);
>  
>  	rv = wait_for_msg_done(smi_info);
> @@ -1339,6 +1342,20 @@ static int try_get_dev_id(struct smi_info *smi_info)
>  	/* Check and record info from the get device id, in case we need it. */
>  	rv = ipmi_demangle_device_id(resp[0] >> 2, resp[1],
>  			resp + 2, resp_len - 2, &smi_info->device_id);
> +	if (rv) {
> +		/* record completion code */
> +		char cc = *(resp + 2);
> +
> +		if ((cc == IPMI_DEVICE_IN_FW_UPDATE_ERR
> +		    || cc == IPMI_DEVICE_IN_INIT_ERR
> +		    || cc == IPMI_NOT_IN_MY_STATE_ERR)
> +		    && ++retry_count <= GET_DEVICE_ID_MAX_RETRY) {
> +			dev_warn(smi_info->io.dev,
> +				"retry to get device id as completion code 0x%x\n",
> +				 cc);
> +			goto retry;
> +		}
> +	}
>  
>  out:
>  	kfree(resp);
> diff --git a/include/uapi/linux/ipmi.h b/include/uapi/linux/ipmi.h 
> index 32d148309..bc57f07e3 100644
> --- a/include/uapi/linux/ipmi.h
> +++ b/include/uapi/linux/ipmi.h
> @@ -426,4 +426,6 @@ struct ipmi_timing_parms {
>  #define IPMICTL_GET_MAINTENANCE_MODE_CMD	_IOR(IPMI_IOC_MAGIC, 30, int)
>  #define IPMICTL_SET_MAINTENANCE_MODE_CMD	_IOW(IPMI_IOC_MAGIC, 31, int)
>  
> +#define GET_DEVICE_ID_MAX_RETRY		5
> +
>  #endif /* _UAPI__LINUX_IPMI_H */
> --
> 2.17.1
> 


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
