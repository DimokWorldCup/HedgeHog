﻿#pragma warning disable 1591
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:4.0.30319.1
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace HedgeHog.Data
{
	using System.Data.Linq;
	using System.Data.Linq.Mapping;
	using System.Data;
	using System.Collections.Generic;
	using System.Reflection;
	using System.Linq;
	using System.Linq.Expressions;
	using System.ComponentModel;
	using System;
	
	
	[global::System.Data.Linq.Mapping.DatabaseAttribute(Name="Forex")]
	public partial class ForexDBDataContext : System.Data.Linq.DataContext
	{
		
		private static System.Data.Linq.Mapping.MappingSource mappingSource = new AttributeMappingSource();
		
    #region Extensibility Method Definitions
    partial void OnCreated();
    partial void Insertt_Price(t_Price instance);
    partial void Updatet_Price(t_Price instance);
    partial void Deletet_Price(t_Price instance);
    partial void Insertt_Tick(t_Tick instance);
    partial void Updatet_Tick(t_Tick instance);
    partial void Deletet_Tick(t_Tick instance);
    #endregion
		
		public ForexDBDataContext() : 
				base(global::HedgeHog.Properties.Settings.Default.ForexConnectionString, mappingSource)
		{
			OnCreated();
		}
		
		public ForexDBDataContext(string connection) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public ForexDBDataContext(System.Data.IDbConnection connection) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public ForexDBDataContext(string connection, System.Data.Linq.Mapping.MappingSource mappingSource) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public ForexDBDataContext(System.Data.IDbConnection connection, System.Data.Linq.Mapping.MappingSource mappingSource) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public System.Data.Linq.Table<t_Price> t_Prices
		{
			get
			{
				return this.GetTable<t_Price>();
			}
		}
		
		public System.Data.Linq.Table<t_Tick> t_Ticks
		{
			get
			{
				return this.GetTable<t_Tick>();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.TableAttribute(Name="dbo.t_Price")]
	public partial class t_Price : INotifyPropertyChanging, INotifyPropertyChanged
	{
		
		private static PropertyChangingEventArgs emptyChangingEventArgs = new PropertyChangingEventArgs(String.Empty);
		
		private int _ID;
		
		private string _Account;
		
		private string _Pair;
		
		private System.DateTime _Date;
		
		private decimal _Ask;
		
		private decimal _Bid;
		
		private decimal _Speed;
		
		private decimal _Spread;
		
		private decimal _Power;
		
		private decimal _Row;
		
		private int _IsBuySell;
		
    #region Extensibility Method Definitions
    partial void OnLoaded();
    partial void OnValidate(System.Data.Linq.ChangeAction action);
    partial void OnCreated();
    partial void OnIDChanging(int value);
    partial void OnIDChanged();
    partial void OnAccountChanging(string value);
    partial void OnAccountChanged();
    partial void OnPairChanging(string value);
    partial void OnPairChanged();
    partial void OnDateChanging(System.DateTime value);
    partial void OnDateChanged();
    partial void OnAskChanging(decimal value);
    partial void OnAskChanged();
    partial void OnBidChanging(decimal value);
    partial void OnBidChanged();
    partial void OnSpeedChanging(decimal value);
    partial void OnSpeedChanged();
    partial void OnSpreadChanging(decimal value);
    partial void OnSpreadChanged();
    partial void OnPowerChanging(decimal value);
    partial void OnPowerChanged();
    partial void OnRowChanging(decimal value);
    partial void OnRowChanged();
    partial void OnIsBuySellChanging(int value);
    partial void OnIsBuySellChanged();
    #endregion
		
		public t_Price()
		{
			OnCreated();
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_ID", AutoSync=AutoSync.OnInsert, DbType="Int NOT NULL IDENTITY", IsPrimaryKey=true, IsDbGenerated=true)]
		public int ID
		{
			get
			{
				return this._ID;
			}
			set
			{
				if ((this._ID != value))
				{
					this.OnIDChanging(value);
					this.SendPropertyChanging();
					this._ID = value;
					this.SendPropertyChanged("ID");
					this.OnIDChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Account", DbType="VarChar(16) NOT NULL", CanBeNull=false)]
		public string Account
		{
			get
			{
				return this._Account;
			}
			set
			{
				if ((this._Account != value))
				{
					this.OnAccountChanging(value);
					this.SendPropertyChanging();
					this._Account = value;
					this.SendPropertyChanged("Account");
					this.OnAccountChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Pair", DbType="VarChar(7) NOT NULL", CanBeNull=false)]
		public string Pair
		{
			get
			{
				return this._Pair;
			}
			set
			{
				if ((this._Pair != value))
				{
					this.OnPairChanging(value);
					this.SendPropertyChanging();
					this._Pair = value;
					this.SendPropertyChanged("Pair");
					this.OnPairChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Date", DbType="DateTime NOT NULL")]
		public System.DateTime Date
		{
			get
			{
				return this._Date;
			}
			set
			{
				if ((this._Date != value))
				{
					this.OnDateChanging(value);
					this.SendPropertyChanging();
					this._Date = value;
					this.SendPropertyChanged("Date");
					this.OnDateChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Ask", DbType="Decimal(9,5) NOT NULL")]
		public decimal Ask
		{
			get
			{
				return this._Ask;
			}
			set
			{
				if ((this._Ask != value))
				{
					this.OnAskChanging(value);
					this.SendPropertyChanging();
					this._Ask = value;
					this.SendPropertyChanged("Ask");
					this.OnAskChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Bid", DbType="Decimal(9,5) NOT NULL")]
		public decimal Bid
		{
			get
			{
				return this._Bid;
			}
			set
			{
				if ((this._Bid != value))
				{
					this.OnBidChanging(value);
					this.SendPropertyChanging();
					this._Bid = value;
					this.SendPropertyChanged("Bid");
					this.OnBidChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Speed", DbType="Decimal(5,1) NOT NULL")]
		public decimal Speed
		{
			get
			{
				return this._Speed;
			}
			set
			{
				if ((this._Speed != value))
				{
					this.OnSpeedChanging(value);
					this.SendPropertyChanging();
					this._Speed = value;
					this.SendPropertyChanged("Speed");
					this.OnSpeedChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Spread", DbType="Decimal(5,1) NOT NULL")]
		public decimal Spread
		{
			get
			{
				return this._Spread;
			}
			set
			{
				if ((this._Spread != value))
				{
					this.OnSpreadChanging(value);
					this.SendPropertyChanging();
					this._Spread = value;
					this.SendPropertyChanged("Spread");
					this.OnSpreadChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Power", DbType="Decimal(5,1) NOT NULL")]
		public decimal Power
		{
			get
			{
				return this._Power;
			}
			set
			{
				if ((this._Power != value))
				{
					this.OnPowerChanging(value);
					this.SendPropertyChanging();
					this._Power = value;
					this.SendPropertyChanged("Power");
					this.OnPowerChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Row", DbType="Decimal(5,1) NOT NULL")]
		public decimal Row
		{
			get
			{
				return this._Row;
			}
			set
			{
				if ((this._Row != value))
				{
					this.OnRowChanging(value);
					this.SendPropertyChanging();
					this._Row = value;
					this.SendPropertyChanged("Row");
					this.OnRowChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_IsBuySell", DbType="Int NOT NULL")]
		public int IsBuySell
		{
			get
			{
				return this._IsBuySell;
			}
			set
			{
				if ((this._IsBuySell != value))
				{
					this.OnIsBuySellChanging(value);
					this.SendPropertyChanging();
					this._IsBuySell = value;
					this.SendPropertyChanged("IsBuySell");
					this.OnIsBuySellChanged();
				}
			}
		}
		
		public event PropertyChangingEventHandler PropertyChanging;
		
		public event PropertyChangedEventHandler PropertyChanged;
		
		protected virtual void SendPropertyChanging()
		{
			if ((this.PropertyChanging != null))
			{
				this.PropertyChanging(this, emptyChangingEventArgs);
			}
		}
		
		protected virtual void SendPropertyChanged(String propertyName)
		{
			if ((this.PropertyChanged != null))
			{
				this.PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.TableAttribute(Name="dbo.t_Tick")]
	public partial class t_Tick : INotifyPropertyChanging, INotifyPropertyChanged
	{
		
		private static PropertyChangingEventArgs emptyChangingEventArgs = new PropertyChangingEventArgs(String.Empty);
		
		private string _Pair;
		
		private System.DateTime _StartDate;
		
		private double _Ask;
		
		private double _Bid;
		
    #region Extensibility Method Definitions
    partial void OnLoaded();
    partial void OnValidate(System.Data.Linq.ChangeAction action);
    partial void OnCreated();
    partial void OnPairChanging(string value);
    partial void OnPairChanged();
    partial void OnStartDateChanging(System.DateTime value);
    partial void OnStartDateChanged();
    partial void OnAskChanging(double value);
    partial void OnAskChanged();
    partial void OnBidChanging(double value);
    partial void OnBidChanged();
    #endregion
		
		public t_Tick()
		{
			OnCreated();
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Pair", DbType="VarChar(7) NOT NULL", CanBeNull=false, IsPrimaryKey=true)]
		public string Pair
		{
			get
			{
				return this._Pair;
			}
			set
			{
				if ((this._Pair != value))
				{
					this.OnPairChanging(value);
					this.SendPropertyChanging();
					this._Pair = value;
					this.SendPropertyChanged("Pair");
					this.OnPairChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_StartDate", DbType="DateTime NOT NULL", IsPrimaryKey=true)]
		public System.DateTime StartDate
		{
			get
			{
				return this._StartDate;
			}
			set
			{
				if ((this._StartDate != value))
				{
					this.OnStartDateChanging(value);
					this.SendPropertyChanging();
					this._StartDate = value;
					this.SendPropertyChanged("StartDate");
					this.OnStartDateChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Ask", DbType="Float NOT NULL", IsPrimaryKey=true)]
		public double Ask
		{
			get
			{
				return this._Ask;
			}
			set
			{
				if ((this._Ask != value))
				{
					this.OnAskChanging(value);
					this.SendPropertyChanging();
					this._Ask = value;
					this.SendPropertyChanged("Ask");
					this.OnAskChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Bid", DbType="Float NOT NULL", IsPrimaryKey=true)]
		public double Bid
		{
			get
			{
				return this._Bid;
			}
			set
			{
				if ((this._Bid != value))
				{
					this.OnBidChanging(value);
					this.SendPropertyChanging();
					this._Bid = value;
					this.SendPropertyChanged("Bid");
					this.OnBidChanged();
				}
			}
		}
		
		public event PropertyChangingEventHandler PropertyChanging;
		
		public event PropertyChangedEventHandler PropertyChanged;
		
		protected virtual void SendPropertyChanging()
		{
			if ((this.PropertyChanging != null))
			{
				this.PropertyChanging(this, emptyChangingEventArgs);
			}
		}
		
		protected virtual void SendPropertyChanged(String propertyName)
		{
			if ((this.PropertyChanged != null))
			{
				this.PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
			}
		}
	}
}
#pragma warning restore 1591
